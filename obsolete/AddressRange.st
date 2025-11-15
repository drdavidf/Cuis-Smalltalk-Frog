'From Cuis7.3 [latest update: #7041] on 11 July 2025 at 11:50:29 am'!
!classDefinition: #AddressRange category: #Frog!
Object subclass: #AddressRange
	instanceVariableNames: 'begin end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:21:40'!
= anAddressRange

	self class == anAddressRange class 
		ifFalse:[^false].
		
	^begin = anAddressRange begin and:[end = anAddressRange end]
	
	! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:20:59'!
begin
	^begin! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:20:54'!
begin: anAddress
	begin := anAddress ! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/26/2025 13:47:37'!
emptyRange
	^AddressRange new ! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:21:01'!
end
	^end! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:21:09'!
end: anAddress
	end := anAddress! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:22:05'!
hash
	"Hash is reimplemented because = is implemented."

	^(begin hash hashMultiply + end hash) hashMultiply! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/26/2025 13:49:05'!
intersect: anAddressRange

	| commonLines beginIndex endIndex |
	
	commonLines :=  self lineRange intersect: anAddressRange lineRange.
	
	commonLines isEmpty ifTrue:[^self emptyRange]. 
	
	commonLines begin = begin line and: [commonLines begin = anAddressRange begin line] ::
		ifTrue:[
			beginIndex := begin index max: anAddressRange begin index]
		ifFalse:[
			commonLines begin = begin line
				ifTrue:[
					beginIndex := begin index]
				ifFalse:[
					beginIndex := anAddressRange begin index] ].

	commonLines end = end line and: [commonLines end = anAddressRange end line] ::
		ifTrue:[
			endIndex := end index min: anAddressRange end index]
		ifFalse:[
			commonLines end = end line
				ifTrue:[
					endIndex := end index]
				ifFalse:[
					endIndex := anAddressRange end index] ].
	
	^ AddressRange new begin: (Address new line: commonLines begin ; index: beginIndex ; yourself) ; end: (Address new line: commonLines end; index: endIndex; yourself) ; yourself
	! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:24:30'!
lineRange
	^begin line to: end line! !


!AddressRange methodsFor: 'testing' stamp: 'DF 5/26/2025 13:48:17'!
invariant

	^ (self isEmpty) or:[begin <= end]! !

!AddressRange methodsFor: 'testing' stamp: 'DF 5/26/2025 13:47:59'!
isEmpty
	^begin isNil and:[end isNil]! !
