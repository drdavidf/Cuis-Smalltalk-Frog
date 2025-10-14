'From Cuis7.5 [latest update: #7615] on 14 October 2025 at 10:20:22 pm'!
'Description '!
!provides: 'I2C' 1 22!
!requires: 'FFI' 1 56 nil!
SystemOrganization addCategory: #I2C!


!classDefinition: #I2CLibrary category: #I2C!
ExternalLibrary subclass: #I2CLibrary
	instanceVariableNames: 'address fd'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'I2C'!
!classDefinition: 'I2CLibrary class' category: #I2C!
I2CLibrary class
	instanceVariableNames: ''!

!classDefinition: #I2CDevice category: #I2C!
Object subclass: #I2CDevice
	instanceVariableNames: 'address fd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'I2C'!
!classDefinition: 'I2CDevice class' category: #I2C!
I2CDevice class
	instanceVariableNames: ''!

!classDefinition: #INA219 category: #I2C!
Object subclass: #INA219
	instanceVariableNames: 'i2c'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'I2C'!
!classDefinition: 'INA219 class' category: #I2C!
INA219 class
	instanceVariableNames: ''!

!classDefinition: #INA219Dummy category: #I2C!
INA219 subclass: #INA219Dummy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'I2C'!
!classDefinition: 'INA219Dummy class' category: #I2C!
INA219Dummy class
	instanceVariableNames: ''!


!INA219 commentStamp: '<historical>' prior: 0!
An interface for the INA219 battery charge controller
!

!INA219Dummy commentStamp: '<historical>' prior: 0!
A fake INA219 interface that is used for testing while not running on the raspberry pi.!

!I2CLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 11:02:18'!
closeI2Cdevice: anIntegerAddress
	"int16_t close_i2c_device (uint8_t); "
	<cdecl: int16 'close_i2c_device' (uint8)>
	^self externalCallFailed ! !

!I2CLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 09:54:30'!
openI2Cdevice: aString at: anIntegerAddress
	"int16_t open_i2c_device (char*, uint8_t); "
	<cdecl: int16 'open_i2c_device' (char* uint8)>
	^self externalCallFailed ! !

!I2CLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 10:46:43'!
read: anIntegerFileDescriptor register: anInteger
	"int32_t read_register(uint16_t fd, uint8_t reg_id); "
	<cdecl: int32 'read_register' (uint16 uint8)>
	^self externalCallFailed ! !

!I2CLibrary class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 09:28:25'!
default
	^Default ifNil:[Default := super new]! !

!I2CLibrary class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 09:38:14'!
install
	Default := nil! !

!I2CLibrary class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 09:29:25'!
moduleName
	^'openi2c.so'! !

!I2CLibrary class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 09:38:02'!
new
	^self default! !

!I2CDevice methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 10:17:21'!
address: anInteger

	address := anInteger ! !

!I2CDevice methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 11:06:35'!
close
	fd ifNotNil: [
	
		I2CLibrary default closeI2Cdevice: fd ]
	! !

!I2CDevice methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 09:59:57'!
open: aString 

	self assert: address notNil.
	
	fd := I2CLibrary default openI2Cdevice: aString at: address.
	
	fd = -1 ifTrue:[
		fd := nil].
	
	! !

!I2CDevice methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 11:06:01'!
readRegister: anIntegerAddress
	
	self assert: fd notNil.
	
	self assert: anIntegerAddress >= 0.
	self assert: anIntegerAddress <= 255.
	
	^ I2CLibrary default read:fd register: anIntegerAddress 	! !

!INA219 methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 11:56:32'!
open

	i2c := I2CDevice new.
	
	i2c address: 0x41.
	
	i2c open: '/dev/i2c-1'.! !

!INA219 methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 12:42:53'!
percentCharge

	" Answer the charge level of the battery as a percent of the voltage it currently has in
	the range of mininum voltage to maximal voltage.

	"

	| bv minV maxV |
	
	minV := 3000 * 3. "mV"
	maxV := 4130 * 3. "mv"
	
	bv := self readBusRegister.
	
	bv := (bv min: maxV) max: minV.
	
	^ (((bv - minV) / (maxV - minV)) * 100) floor
	! !

!INA219 methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 12:02:17'!
readBusRegister

	"sample the bus register and answer the result in mV units "
	
	| res |
	
	res := i2c readRegister:2.
	
	" the result is in the 13 high bits and in 4 mV units "
		
	^ (res >> 3)  * 4
	! !

!INA219 methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 22:13:25'!
readShuntRegister

	"sample the shunt register and answer the result in mV units "
	
	| res |
	res := i2c readRegister:1.
	
	" the result is a 16 bit signed integer so we must sign extend it to get the proper 64 bit number "
	
	res := (-1 bitClear: 65535) bitOr: res.
	
	^ res / 100.0 "result is originally in 10uV units"
	! !

!INA219 methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 22:20:15'!
state

	" Answer if the battery is charging or discharging 
	
	It is discharging if the discharge current is above the minimal discharge current. It is charging if the charge current is above the minimal charge current.

	"
	
	| current sres sreg |
	
	sres := 100.0 . "shunt resistor is 100 milli ohm "
	
	sreg := self readShuntRegister.
	
	current := sreg / sres. "in A"
	
	^ current > 0.01
				ifTrue:[
					#charging]
				ifFalse:[
					current < -0.01
						ifTrue:[#discharging]
						ifFalse:[#idle] ] 
					! !

!INA219Dummy methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 17:57:13'!
percentCharge
	^ { 10 . 20 . 30 . 40 . 50 . 60 . 70 . 80 . 90 } atRandom! !

!INA219Dummy methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 17:56:49'!
state

	^ { #charging . #discharing . #idle } atRandom! !
