'From Cuis7.3 [latest update: #7041] on 11 July 2025 at 6:39:04 pm'!
!classDefinition: #FrogKeyboardMapper category: #Frog!
Object subclass: #FrogKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 21:43:36'!
isCopyKey: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:09'!
isEnterKey: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:23'!
isEraseKey: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:40:24'!
isLeapAgainKeyDown: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:41:16'!
isLeapAgainKeyUp: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:12'!
isLeapLeftKeyDown: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:41:23'!
isLeapLeftKeyUp: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:28'!
isLeapRightKeyDown: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:41:32'!
isLeapRightKeyUp: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 6/2/2025 13:43:40'!
isPageBreakKey: aMorphicEvent
	^self subclassResponsibility ! !

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:47:03'!
isPageKey: aMorphicEvent
	^self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'FrogKeyboardMapper class' category: #Frog!
FrogKeyboardMapper class
	instanceVariableNames: ''!

!FrogKeyboardMapper class methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:36:38'!
instance

	| aMapperClass |
	
	aMapperClass := Smalltalk platformName caseOf: {
		['Mac OS'] 	-> [MacOSKeyboardMapper] .
		['unix'] 		-> [Smalltalk platformSubtype = 'aarch64' 
							and: [(Smalltalk osVersion findString: '-rpi-') ~= 0] :: 
								ifTrue:[LinuxRaspiKeyboardMapper ] 
								ifFalse:[LinuxKeyboardMapper] ] }.
						
	^aMapperClass new
		
		! !
