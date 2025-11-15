'From Cuis7.3 [latest update: #7041] on 11 July 2025 at 6:39:09 pm'!
!classDefinition: #LinuxKeyboardMapper category: #Frog!
FrogKeyboardMapper subclass: #LinuxKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 21:49:13'!
isCopyKey: aMorphicEvent
	^aMorphicEvent controlKeyPressed and: [aMorphicEvent keyValue = 97]	! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:09'!
isEnterKey: aMorphicEvent
	^aMorphicEvent keyValue = 13! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:23'!
isEraseKey: aMorphicEvent
	^aMorphicEvent keyValue = 8! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:40:24'!
isLeapAgainKeyDown: aMorphicEvent
	^(aMorphicEvent keyValue = 222 or: [aMorphicEvent keyValue = 221]) and: [aMorphicEvent isKeyDown]! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:39:59'!
isLeapAgainKeyUp: aMorphicEvent
	^(aMorphicEvent keyValue = 222 or: [aMorphicEvent keyValue = 221]) and:[aMorphicEvent isKeyUp]! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:36:18'!
isLeapLeftKeyDown: aMorphicEvent
	^aMorphicEvent keyValue = 152 and: [aMorphicEvent isKeyDown]! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:33:42'!
isLeapLeftKeyUp: aMorphicEvent
	^aMorphicEvent keyValue = 152 and: [aMorphicEvent isKeyUp]! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:36:13'!
isLeapRightKeyDown: aMorphicEvent
	^aMorphicEvent keyValue = 136 and: [aMorphicEvent isKeyDown]! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:33:59'!
isLeapRightKeyUp: aMorphicEvent
	^aMorphicEvent keyValue = 136 and:[aMorphicEvent isKeyUp]! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 6/2/2025 13:44:19'!
isPageBreakKey: aMorphicEvent
	^aMorphicEvent isPageDown and: [aMorphicEvent controlKeyPressed ]! !

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:47:03'!
isPageKey: aMorphicEvent

	^aMorphicEvent isPageDown! !
