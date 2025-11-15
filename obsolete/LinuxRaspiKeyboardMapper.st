'From Cuis7.3 [latest update: #7041] on 11 July 2025 at 6:39:14 pm'!
!classDefinition: #LinuxRaspiKeyboardMapper category: #Frog!
LinuxKeyboardMapper subclass: #LinuxRaspiKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:42:24'!
isLeapAgainKeyDown: aMorphicEvent
	^aMorphicEvent controlKeyPressed ! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:42:31'!
isLeapAgainKeyUp: aMorphicEvent
	^aMorphicEvent controlKeyPressed not! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:12'!
isLeapLeftKeyDown: aMorphicEvent
	^ (aMorphicEvent buttons bitAnd: 32) = 32! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:33:10'!
isLeapLeftKeyUp: aMorphicEvent
	^ (aMorphicEvent buttons bitAnd: 32) = 0! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:28'!
isLeapRightKeyDown: aMorphicEvent
	^(aMorphicEvent buttons bitAnd: 128) = 128! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:33:18'!
isLeapRightKeyUp: aMorphicEvent
	^(aMorphicEvent buttons bitAnd: 128) = 0! !
