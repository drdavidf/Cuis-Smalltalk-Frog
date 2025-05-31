'From Cuis7.3 [latest update: #7041] on 31 May 2025 at 3:10:26 pm'!
'Description '!
!provides: 'Frog' 1 359!
SystemOrganization addCategory: #Frog!


!classDefinition: #Address category: #Frog!
Object subclass: #Address
	instanceVariableNames: 'line index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'Address class' category: #Frog!
Address class
	instanceVariableNames: ''!

!classDefinition: #AddressRange category: #Frog!
Object subclass: #AddressRange
	instanceVariableNames: 'begin end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'AddressRange class' category: #Frog!
AddressRange class
	instanceVariableNames: ''!

!classDefinition: #FrogKeyboardMapper category: #Frog!
Object subclass: #FrogKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'FrogKeyboardMapper class' category: #Frog!
FrogKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxKeyboardMapper category: #Frog!
FrogKeyboardMapper subclass: #LinuxKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'LinuxKeyboardMapper class' category: #Frog!
LinuxKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxRaspiKeyboardMapper category: #Frog!
LinuxKeyboardMapper subclass: #LinuxRaspiKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'LinuxRaspiKeyboardMapper class' category: #Frog!
LinuxRaspiKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #MacOSKeyboardMapper category: #Frog!
FrogKeyboardMapper subclass: #MacOSKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'MacOSKeyboardMapper class' category: #Frog!
MacOSKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #Line category: #Frog!
Object subclass: #Line
	instanceVariableNames: 'text prev next ppage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'Line class' category: #Frog!
Line class
	instanceVariableNames: ''!

!classDefinition: #LineRange category: #Frog!
Object subclass: #LineRange
	instanceVariableNames: 'begin end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'LineRange class' category: #Frog!
LineRange class
	instanceVariableNames: ''!

!classDefinition: #Page category: #Frog!
Object subclass: #Page
	instanceVariableNames: 'head prev next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'Page class' category: #Frog!
Page class
	instanceVariableNames: ''!

!classDefinition: #Paragraph category: #Frog!
Object subclass: #Paragraph
	instanceVariableNames: 'lines prev next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'Paragraph class' category: #Frog!
Paragraph class
	instanceVariableNames: ''!

!classDefinition: #WordProcessor category: #Frog!
Object subclass: #WordProcessor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WordProcessor class' category: #Frog!
WordProcessor class
	instanceVariableNames: ''!

!classDefinition: #WordProcessorMachine category: #Frog!
Object subclass: #WordProcessorMachine
	instanceVariableNames: 'head cursor beginh endh width pattern pcursor pbeginh pendh page'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WordProcessorMachine class' category: #Frog!
WordProcessorMachine class
	instanceVariableNames: ''!

!classDefinition: #WPEditorMorph category: #Frog!
ColoredBoxMorph subclass: #WPEditorMorph
	instanceVariableNames: 'font machine dy wbegin wsize showCursor textCursorRect dx cursorColor leapLeftDown leapRightDown leapAgainDown state match rulerCursorRect mapper pageNumberFont pageWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WPEditorMorph class' category: #Frog!
WPEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #WPRuler category: #Frog!
ColoredBoxMorph subclass: #WPRuler
	instanceVariableNames: 'rulerFont machine dx statusFont rulerCursorRect showCursor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WPRuler class' category: #Frog!
WPRuler class
	instanceVariableNames: ''!

!classDefinition: #TestLine category: #Frog!
TestCase subclass: #TestLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'TestLine class' category: #Frog!
TestLine class
	instanceVariableNames: ''!

!classDefinition: #TestWordProcessorMachine category: #Frog!
TestCase subclass: #TestWordProcessorMachine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'TestWordProcessorMachine class' category: #Frog!
TestWordProcessorMachine class
	instanceVariableNames: ''!


!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 09:34:27'!
+ anInteger

	self assert: index + anInteger <= (line text size + 1).
	
	^Address new line: line ; index: index + anInteger ;yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 19:58:32'!
- anInteger

	self assert: index > anInteger.
	
	^Address new line: line ; index: index - anInteger ;yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 19:16:34'!
< anAddress
	^ anAddress > self! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 19:42:23'!
<= anAddress
	^ (line precedes: anAddress line) and: [line ~= anAddress line or:[index <= anAddress index] ]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 15:31:04'!
= anAddress

	self class == anAddress class 
		ifFalse:[^false].
		
	^line = anAddress line and:[index = anAddress index]
	
	! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 19:16:16'!
> anAddress
	^ (self <= anAddress) not! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 19:16:04'!
advanceBy: aNumber

	self assert: aNumber >= 0.

	^index + aNumber <= line text size
		ifTrue:[
			Address new line: line; index: index + aNumber ; yourself ]
		ifFalse:[
			line next isNil
				ifTrue:[
					self assert: index + aNumber = (line text size + 1).
					Address new line: line; index: line text size + 1 ; yourself ]
				ifFalse:[
					Address new line: line next ; index: 1 ; advanceBy: index + aNumber - line text size - 1 ] ]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 17:35:43'!
back

	self assert: ((index > 1) or: [line prev notNil]).
	
	^index > 1
		ifTrue:[
			Address new line: line; index: index - 1 ; yourself ]
		ifFalse:[
			Address new line: line prev; index: line prev text size ; yourself ]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 18:51:21'!
backupBy: aNumber

	self assert: aNumber >= 0.

	^ index > aNumber 
		ifTrue:[
			Address new line: line; index: index - aNumber ; yourself ]
		ifFalse:[
			self assert: line prev notNil.
			Address new line: line prev; index: line prev text size ; backupBy: aNumber - index ]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 15:01:50'!
char
	self assert: line notNil.
	
	self assert: index <= line text size.
	
	^line text at: index.! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/25/2025 09:02:54'!
endOfLine
	^Address new line: line ; index: line text size ; yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 17:34:20'!
firstLine

	| pp |
	
	pp := line.
	
	[ pp prev isNil ] whileFalse:[
		pp := pp prev].
	
	^ Address new line: pp ; index: 1 ; yourself.
	
	! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 17:35:22'!
forward

	self assert: (index <= line text size) .
		
	^index < line text size
		ifTrue:[
			Address new line: line; index: index + 1 ; yourself ]
		ifFalse:[
			line next isNil
				ifTrue:[
					Address new line: line; index: index + 1 ; yourself ]
				ifFalse:[
					Address new line: line next; index: 1 ; yourself ] ]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 15:31:52'!
hash
	"Hash is reimplemented because = is implemented."

	^(line hash hashMultiply + index hash) hashMultiply! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/26/2025 09:05:32'!
incrementIndex

	self assert: (index <= line text size) .
		
	^Address new line: line; index: index + 1 ; yourself 
! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:41:30'!
index
	^index! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 17:35:16'!
index: aNumber

	self assert: aNumber > 0.
	
	index := aNumber! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 22:46:33'!
invariant

	^line notNil and: [index  <= (line text size + 1)]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:41:33'!
line
	^line! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:34:03'!
line: aLine
	line := aLine! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 19:23:34'!
max: anAddress

	^self <= anAddress
		ifTrue:[
			anAddress]
		ifFalse:[
			self]
		! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 19:22:24'!
min: anAddress

	^self <= anAddress
		ifTrue:[
			self]
		ifFalse:[
			anAddress]
		! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 17:34:59'!
nextLine

	self assert: line next notNil.
	
	^Address new line: line next ; index:1 ; yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/26/2025 08:55:06'!
pastEndOfLine
	^Address new line: line ; index: line text size + 1; yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 16:03:24'!
pastLastLine

	| pp |
	
	pp := line.
	
	[ pp next isNil ] whileFalse:[
		pp := pp next].
	
	^ Address new line: pp ; index: pp text size + 1 ; yourself.
	
	! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/25/2025 09:05:53'!
startOfLine
	^Address new line: line ; index: 1 ; yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 21:34:22'!
to: anAddress

	self assert: self <= anAddress.
	
	^AddressRange new begin: self; end: anAddress; yourself.! !

!Address methodsFor: 'testing' stamp: 'DF 5/9/2025 19:53:50'!
isFirst
	^ line prev isNil and: [index = 1]! !

!Address methodsFor: 'testing' stamp: 'DF 5/17/2025 14:20:03'!
isIndexPastEndOfLine

	^index = (line text size + 1) ! !

!Address methodsFor: 'testing' stamp: 'DF 5/15/2025 17:52:49'!
isInvalidOffset: aNumber

	self assert: aNumber >= 0.
	
	^line next isNil and:[index + aNumber > (line text size)]! !

!Address methodsFor: 'testing' stamp: 'DF 5/9/2025 19:26:08'!
isPastLast
	^ line next isNil and:[index = (line text size + 1) ]! !

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

!FrogKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:47:03'!
isPageKey: aMorphicEvent
	^self subclassResponsibility ! !

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

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:47:03'!
isPageKey: aMorphicEvent

	^aMorphicEvent isPageDown! !

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

!MacOSKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 21:49:24'!
isCopyKey: aMorphicEvent
	^aMorphicEvent controlKeyPressed and: [aMorphicEvent keyValue = 97]! !

!MacOSKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:09'!
isEnterKey: aMorphicEvent
	^aMorphicEvent isReturnKey ! !

!MacOSKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:23'!
isEraseKey: aMorphicEvent
	^aMorphicEvent isBackspace! !

!MacOSKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:40:24'!
isLeapAgainKeyDown: aMorphicEvent
	^aMorphicEvent controlKeyPressed ! !

!MacOSKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:12'!
isLeapLeftKeyDown: aMorphicEvent
	^aMorphicEvent keyValue = 55! !

!MacOSKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:28'!
isLeapRightKeyDown: aMorphicEvent
	^aMorphicEvent keyValue = 54! !

!MacOSKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:47:03'!
isPageKey: aMorphicEvent

	^aMorphicEvent isPageDown! !

!Line methodsFor: 'testing' stamp: 'DF 5/9/2025 17:30:16'!
precedes: aLine

	^self == aLine or: [self next notNil and: [self next precedes: aLine] ]! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 21:55:54'!
at: anIndex

	self assert: anIndex <= (text size + 1).
	self assert: 0 < anIndex.
	
	^Address new line: self ; index: anIndex; yourself.! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 21:39:16'!
atPastEnd
	
	^Address new line: self ; index: text size + 1; yourself.! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/26/2025 09:53:56'!
distanceFrom: aLine

	| pp ii |
	
	self assert: (self precedes: aLine).
	
	pp := self.
	ii := 0.
	
	[pp notNil and: [pp == aLine]] whileFalse:[
		ii := ii + pp height.
		pp := pp next].
	
	^ii ! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 14:15:22'!
eraseAll

	text := ''! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 22:25:40'!
eraseFrom: begin to: end

	| aWriteStream |
	
	self assert: 1 <= begin.
	self assert: begin <= end.
	self assert: end <= text size.
	
	aWriteStream := WriteStream on: ''.
	
	aWriteStream nextPutAll: (text copyFrom: 1 to: begin - 1) ; nextPutAll: (text copyFrom: end+1 to: text size).
	
	text := aWriteStream contents.! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 09:23:28'!
insert: aString after: anIndex width:  numChars

	| raw length src dst  token |
		
	self assert: anIndex <= text size.

	raw := (text copyFrom:1 to: anIndex), aString , (text copyFrom: anIndex+1 to: text size).
	
	src := ReadStream on: raw.
	
	dst := WriteStream on: ''.

	self assert: (dst contents , src tail) = raw.
			
	token := self nextToken: src.  "
	
	where
	
		{ X = src tail }
		token := self next: src
		{ token ,  src tail = X }
	"

	self assert: (dst contents , token , src tail) = raw.

	length := 0.

	self assert: length = dst contents size.
	
	[ (length + token size > numChars) or: [token isEmpty] or:[token at:1 :: isLineSeparator ] ] whileFalse:[
		
		" length + token size <= numChars and token size > 0 and token is not a line separator"
				
		dst nextPutAll: token. 
		length := length + token size.
		token := self nextToken: src ].

	self assert: (dst contents , token , src tail) = raw.
	
	" 
	token is line separator => 
		(dst contents , token , src tail) = raw.

	not token is line separator => 
		(dst contents , token , src tail) = raw.
	"
	
	(length + token size <= numChars) and: [token notEmpty] and:[token at:1 :: isLineSeparator ] :: 
		ifTrue:[ 
			dst nextPutAll:token ]
		ifFalse:[
			( length = 0 and: [token size > numChars ] )
				ifTrue:[
			"we are trying to insert a token that is longer than the line at the beginning of the line. there is no point in rejecting the token because we will end up with an empty line and have to deal with this token in the next line. thus we break the token and insert the first width characters into this line"
					
					dst nextPutAll: (token copyFrom:1 to: numChars).
					src skip: numChars - token size.
					]
				ifFalse:[
					src skip: 0 - token size ] ].

	self assert: (dst contents , src tail) = raw .
		
	text := dst contents.
	
	self assert: (text , src tail) = raw.
	
	^ src upToEnd.
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 17:29:17'!
invariant

	^(prev isNil or:[prev next == self ]) and:[next isNil or:[next prev == self ] ] and: [ ppage isNil or: [ppage head = self ] ]! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:06:17'!
to: aLine

	self assert: (self precedes: aLine).
	
	^LineRange new begin: self ; end: aLine ; yourself! !

!Line methodsFor: 'private' stamp: 'DF 5/15/2025 21:51:47'!
nextToken: aReadStream
	
	| tokenStream cc stop state |
	
	tokenStream := WriteStream on: ''.
	
	state := #separator.
	stop := false.

	[ (aReadStream atEnd) or:[stop] ] whileFalse:[
		cc := aReadStream next.
		cc isSeparator 
			ifTrue:[
				state = #separator 
					ifTrue:[
						tokenStream nextPut: cc]
					ifFalse:[
						aReadStream back].
				stop := true]
			ifFalse:[
				state := #word.
				tokenStream nextPut: cc] ].
	
	^tokenStream contents.! !

!Line methodsFor: 'accessing' stamp: 'DF 5/26/2025 09:33:12'!
height
	^ ppage notNil 
		ifTrue:[2]
		ifFalse:[1]! !

!Line methodsFor: 'accessing' stamp: 'DF 5/8/2025 15:47:52'!
next
	^next! !

!Line methodsFor: 'accessing' stamp: 'DF 5/8/2025 15:49:09'!
next: aLine
	next := aLine! !

!Line methodsFor: 'accessing' stamp: 'DF 5/24/2025 18:10:24'!
page

	| pp |
	
	pp := self.
	
	[pp notNil and: [pp ppage isNil] ]
		whileTrue:[pp := pp prev].
		
	self assert: pp notNil.
	
	^pp ppage! !

!Line methodsFor: 'accessing' stamp: 'DF 5/24/2025 17:25:48'!
ppage

	^ppage! !

!Line methodsFor: 'accessing' stamp: 'DF 5/24/2025 17:28:30'!
ppage: aPage
	ppage := aPage! !

!Line methodsFor: 'accessing' stamp: 'DF 5/8/2025 15:47:59'!
prev
	^prev! !

!Line methodsFor: 'accessing' stamp: 'DF 5/8/2025 15:49:15'!
prev: aLine
	prev := aLine! !

!Line methodsFor: 'accessing' stamp: 'DF 5/7/2025 18:50:03'!
text
	^text! !

!Line methodsFor: 'initialization' stamp: 'DF 5/8/2025 15:52:17'!
initialize

	text := ''.! !

!LineRange methodsFor: 'testing' stamp: 'DF 5/12/2025 23:08:25'!
= aLineRange

	self class == aLineRange class 
		ifFalse:[^false].
		
	^begin = aLineRange begin and:[end = aLineRange end]
	
	! !

!LineRange methodsFor: 'testing' stamp: 'DF 5/12/2025 23:06:38'!
isEmpty
	^begin isNil and:[ end isNil ]! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 21:47:11'!
begin
	^begin! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:03:09'!
begin: aLine
	begin := aLine ! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 21:47:14'!
end
	^end! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:03:19'!
end: aLine
	end := aLine! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:08:54'!
hash
	"Hash is reimplemented because = is implemented."

	^(begin hash hashMultiply + end hash) hashMultiply! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 17:00:15'!
intersect: aLineRange

	| b e p q pastEnd otherPastEnd |
	
	pastEnd := self end next.
	
	otherPastEnd := aLineRange end next.
	
	p := self begin.
	
	[p = pastEnd]
		whileFalse:[
			p = aLineRange begin
				ifTrue:[
					b := p].
			p = aLineRange end
				ifTrue:[
					e := p].
			p := p next ].
	
	q := aLineRange begin.

	[q = otherPastEnd]
		whileFalse:[
			q = self begin
				ifTrue:[
					b := q].
			q = self end
				ifTrue:[
					e := q].
			q := q next ].
	
	^LineRange new begin: b ; end: e ; yourself! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:03:40'!
invariant

	^ (begin isNil and: end isNil) or:[begin <= end]! !

!Page methodsFor: 'testing' stamp: 'DF 5/24/2025 19:07:03'!
invariant

	^ (prev isNil or:[prev next = self]) and: [next isNil or:[next prev = self] ] and: [self isOverflow not] and: [self isUnderflow not].! !

!Page methodsFor: 'testing' stamp: 'DF 5/31/2025 14:27:14'!
isOverflow

	^self lineNo > WordProcessorMachine PageSize
	! !

!Page methodsFor: 'testing' stamp: 'DF 5/31/2025 14:27:25'!
isUnderflow

	" only the last page can have less than the full number of lines "
	
	^next notNil and: [self lineNo < WordProcessorMachine PageSize]
	! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 17:29:25'!
head
	^head! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 17:32:53'!
head: aLine

	head := aLine.
	
	aLine ppage: self.! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 18:14:06'!
lineNo

	"answers how many lines in this page"
	
	| ii pp |
	
	self assert: head notNil.
	
	ii := 1.
	
	pp := head next.
	
	[pp notNil and: [pp ppage isNil] ] 
		whileTrue:[
			pp := pp next.
			ii := ii + 1].
		
	^ii! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 17:35:51'!
next
	^next! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 18:14:40'!
next: aPage
	next := aPage! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/27/2025 14:49:20'!
pageNumber

	| ii pp |
	
	ii := 0.
	
	pp := self.
	
	[pp prev notNil ] whileTrue:[
		ii := ii + 1.
		pp := pp prev ].
	
	^ii! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 17:35:55'!
prev
	^prev! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 18:14:45'!
prev: aPage
	prev := aPage! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 19:25:28'!
shiftLeft

	"move the first line in the next page to this page"
		
	self assert: self isUnderflow.
	
	self assert: next notNil. "it cannot be the last page because the last page never underflows".
	
	self assert: next head notNil. "the next page has at least one line"
	
	self assert: next head ppage == next. 
	
	next head next 
		ifNil:["this is the last line in the next page so we have to remove the next page"
			next head ppage:nil.
			next := nil.
			^self].
	
	next head next ppage: next.
	
	next head ppage: nil.
	
	next head: next head next.
	
	next isUnderflow ifTrue:[
		next shiftLeft].
	! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 18:07:21'!
shiftRight

	"move the last line in the page to the next page"
	
	| lastLine |
	
	self assert: head notNil.
	
	"if this is the last page create a new page"
	
	next isNil
		ifTrue:[ | aPage pp | " this is the last page"
			aPage := Page new.
			next := aPage. 
			aPage prev: self.
			
			pp := head.
			[pp next notNil] whileTrue:[pp := pp next].
			
			"pp next isNil => pp is the last line"
			pp ppage: aPage.
			aPage head: pp.
			^self].
			
	lastLine := next head prev.
	
	self assert: next head ppage == next.
	
	next head ppage: nil.
	
	lastLine ppage: next.
	next head: lastLine.
	
	next isOverflow ifTrue:[
		next shiftRight].
	! !

!Paragraph methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:54'!
initialize

	lines := Line new! !

!WordProcessor class methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:48:48'!
open: aWordProcessorMachine

	|  root top text bottom ruler dx dy aFont leftm |

	aFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 14.

	dx := aFont widthOf:$M.
	
	dy := aFont lineSpacing.
	
	leftm := 1024 - (80 * dx).
	
	root := LayoutMorph newColumn.

	root color: Color black.
	
	root morphExtent: 1024@600.

	top := LayoutMorph newRow.

	top padding: (leftm / 2)@0"10.55".

	top color: Color black.
	
	text := WPEditorMorph new.

	text morphExtent: 80*dx @ (dy * 18).
	
	text machine: aWordProcessorMachine.

	text layoutSpec offAxisEdgeWeight: 1.0.
		
	top addMorph: text.

	bottom := LayoutMorph newColumn.

	bottom color: Color black.
	
	bottom morphExtent: 1024@60.
	
	ruler := WPRuler new.
	
	ruler morphExtent: 80*dx @ 60.
	
	ruler machine: aWordProcessorMachine.
	
	bottom padding: (leftm / 2) @ 1.
	
	bottom addMorph: ruler.

	root addMorph: top fixedHeight:538; addMorph: bottom.

	root openInWorld.
	
	text addAlarm: #startBlinking after: 3.
	
	ruler addAlarm: #startBlinking after: 3.

! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/24/2025 17:39:08'!
invariant

	| pp |
	
	beginh line isNil
		ifTrue:[^false].
		
	endh line isNil
		ifTrue:[^false].
		
	beginh <= endh
		ifFalse:[^false].
	
	pp := head.
	
	[pp notNil and: [pp invariant] ] whileTrue:[pp := pp next].
	
	pp isNil
		ifFalse:[^false].
		
	pp := page.

	[pp notNil and: [pp invariant] ] whileTrue:[pp := pp next].
	
	^pp isNil
	
	! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/16/2025 21:38:14'!
isExtendedCursor
	^ beginh < endh and: [ endh isPastLast not] and:[endh forward = cursor]! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/9/2025 19:38:06'!
isNarrowCursor
	^ beginh = endh and: [ endh = cursor]! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/16/2025 17:55:07'!
isWideCursor
	^ beginh = endh and: [endh isPastLast not] and: [ endh forward = cursor]! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 17:46:02'!
clearPattern

	pattern := ''.
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 15:17:32'!
creepLeft

	self assert: cursor isFirst = false.
	
	cursor := cursor back.
	
	self triggerEvent: #cursor.! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 15:17:36'!
creepRight

	self assert: cursor isPastLast = false.
	
	cursor := cursor forward.
	
	self triggerEvent: #cursor.! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/17/2025 16:23:15'!
highlight

	self assert: pcursor notNil.
	
	beginh := cursor min: pcursor.
	endh := cursor max: pcursor.
	
	cursor := endh isPastLast 
				ifTrue:[endh]
				ifFalse:[endh forward].
	
	self assert: beginh <= endh.
	
	self triggerEvent: #cursor.! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/24/2025 21:32:25'!
leapLeft

	| match text |
	
	beginh = endh 
		ifTrue:[
		^self searchLeft].

	text := self textFrom: beginh to: endh forward.

	self erase.
	
	match := self searchLeft.
	
	self insert: text.

	beginh := endh backupBy: text size - 1.
				
	^match
	! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/17/2025 21:47:26'!
leapRight

	| match text |
	
	beginh = endh 
		ifTrue:[
		^self searchRight].
	
	text := self textFrom: beginh to: endh forward.

	self erase.
	
	match := self searchRight.
	
	self insert: text.
	
	beginh := endh backupBy: text size - 1.
				
	^match
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/24/2025 17:31:52'!
leapToBeginning

	self setNarrowCursorTo: (head at:1).
	
	^true! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/17/2025 20:14:51'!
leapToEnd

	self setNarrowCursorTo: cursor pastLastLine .
	
	^true! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/17/2025 12:09:57'!
matchBackFrom: anAddress

	| p ii |
	
	p := anAddress.

	ii := pattern size.
		
	[ ii  = 0 or: [ p isFirst ] or: [ p char ~= (pattern at: ii) ] ] whileFalse:[
		ii := ii - 1.
		p := p back ].
	
	^ ii = 0 or: [p isFirst and:[p char = (pattern at:ii) ] ]
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 17:45:57'!
matchForwardFrom: anAddress

	| p ii |

	p := anAddress.

	ii := 1.
		
	[ ii  = (pattern size + 1) or: [ p isPastLast ] or: [ p char ~= (pattern at: ii) ] ] whileFalse:[
		ii := ii + 1.
		p := p forward ].
	
	^ ii = (pattern size + 1)
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/9/2025 19:17:27'!
pattern: aString
	pattern := aString! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/15/2025 07:57:53'!
patternPut: anInteger

	pattern := pattern , (Character codePoint: anInteger) asString.
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 15:18:26'!
popCursor

	self assert: pcursor notNil.
	self assert: pbeginh notNil.
	self assert: pendh notNil.
	
	cursor := pcursor.
	beginh := pbeginh.
	endh := pendh.
	
	self triggerEvent: #cursor.! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/15/2025 17:23:59'!
pushCursor
	pcursor := cursor.
	pbeginh := beginh.
	pendh := endh.! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/17/2025 21:14:54'!
searchLeft

	| p |
	
	pattern ifEmpty:[^false].
	
	p := cursor.
	
	" leap back "
	
	[p isFirst not and: [p isInvalidOffset: pattern size - 1]] whileTrue:[
		p := p back].
	
	[ p isFirst or: [ self matchBackFrom: (p advanceBy: (pattern size - 1))  ] ] whileFalse:[
		p := p back ].

	(p isFirst) 
		ifTrue:[ 
			p line text size >= (pattern size -1)
				ifTrue:
					[ self matchBackFrom: (p advanceBy: (pattern size - 1)) ::
						ifTrue:[
							self setNarrowCursorTo: p. 
							^true ] ] ]
		ifFalse:[
			self setNarrowCursorTo: p.
			^true].
		
	" we did not find it going back towards the beginning. now start from the end 
	and stop when reaching cursor"
	
	p := p pastLastLine.
	
	[ p = cursor or: [p isPastLast not and: [self matchBackFrom: p ]  ] ] whileFalse:[
		p := p back ].
	
	(p = cursor)
		ifFalse:[
			self setNarrowCursorTo: p - (pattern size - 1).
			^true].

	^false! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/17/2025 21:36:32'!
searchRight

	| p |

	pattern ifEmpty:[^false].
	
	p := cursor.

	" leap forward "
			
	[ p isPastLast or: [ self matchForwardFrom: p  ] ] whileFalse:[
		p := p forward ].

	(p isPastLast) 
		ifFalse:[
			self setNarrowCursorTo: p.
			^true].
		
	" we did not find it going forward towards the end. Now start from the beginning
	and stop when reaching cursor"
	
	p := p firstLine.
	
	[ p = cursor or: [self matchForwardFrom: p ] ] whileFalse:[
		p := p forward ].
	
	(p = cursor)
		ifFalse:[
			self setNarrowCursorTo: p.
			^true].
		
	^false
			
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 15:18:17'!
setNarrowCursorTo: anAddress

	cursor := anAddress.
	beginh := cursor.
	endh := cursor.
	
	self assert: self isNarrowCursor = true.
	
	self triggerEvent: #cursor.
! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/9/2025 19:21:22'!
cursor
	^cursor! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/24/2025 19:49:03'!
cursorLineNumber

	| pp ii |
	
	pp := cursor line page head.
	ii := 1.
	
	[ pp ~= cursor line ] whileTrue:[
		pp := pp next.
		ii := ii + 1].
	
	^ii! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/31/2025 15:07:09'!
leftMargin
	^8! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/24/2025 17:31:52'!
lines
	^head! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/16/2025 21:20:12'!
pattern
	^pattern! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/31/2025 15:07:13'!
rightMargin
	^7! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/15/2025 21:33:19'!
selection

	self assert: beginh notNil.
	
	self assert: endh notNil.
	
	^ beginh to: endh ! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/11/2025 16:06:39'!
width: anInteger

	self assert: anInteger > 0.
	
	width := anInteger! !

!WordProcessorMachine methodsFor: 'initialization' stamp: 'DF 5/24/2025 17:33:49'!
initialize

	width := 8. "maximum number of characters in a line"
	
	head := Line new.
	
	page := Page new.
	
	page head: head.
	
	cursor := head at:1.
	
	beginh := cursor.
	endh := cursor.
! !

!WordProcessorMachine methodsFor: 'editing' stamp: 'DF 5/24/2025 21:42:33'!
copy

	| text |
	
	text := self textFrom: beginh to: endh forward.

	self insert: text.
	
	beginh := beginh backupBy: text size - 1.! !

!WordProcessorMachine methodsFor: 'editing' stamp: 'DF 5/24/2025 19:26:00'!
erase

	| aWriteStream p uu vv keepNarrow line index |
		
	keepNarrow := self isNarrowCursor and: [beginh isPastLast not].
	
	uu := self textFrom: self begin to: beginh.
	
	vv := endh = self end 
			ifTrue:['']
			ifFalse:[
				self textFrom: endh forward to: self end].
	
	aWriteStream := WriteStream on: ''.
	
	" copy the parts that we do not erase and then proceed to collect into the stream
	all the lines until a line that ends with a line separator (or until the last line) "
	
	aWriteStream nextPutAll: (endh line text copyFrom: endh index + 1 to: endh line text size).
	
	p := endh line next.
	
	[p isNil or: [ p text notEmpty and: [p text last isLineSeparator ] ] ] whileFalse:[
		aWriteStream nextPutAll: p text.
		p := p next].
	
	p notNil
		ifTrue:[
			aWriteStream nextPutAll: p text.
			p := p next].
		
	" clear beginh line and remove all the lines between beginh line next and p "
	
	beginh isPastLast
		ifFalse:[beginh line eraseFrom: beginh index to: beginh line text size].
	
	p isNil
		ifTrue:[
			"beginh will become the last line. thus its page should be the last page. remove all the pages of following lines "
			beginh line page next: nil.
			beginh line next: nil]
		ifFalse:[
			
			beginh line page == p page 
				ifFalse:[
					beginh line page next: p page.
					p page prev: beginh line page].
			
			beginh line next: p.
			p prev: beginh line].
		
	beginh line page isUnderflow 
		ifTrue:[beginh line page shiftLeft].
	
	"remember the index of the point at which we start erasing so that we can move
	the cursor to this point after insertion. "
	
	index := beginh index.
	
	line := beginh line. "remember the line at which to return the cursor"
	
	" finally insert the text back into place "
	
	cursor := beginh copy.

	self insert: aWriteStream contents.

	beginh line: line ; index: 1.
	beginh := beginh advanceBy: index - 1.

	cursor := beginh.
	
	beginh := beginh isFirst
				ifTrue:[beginh]
				ifFalse:[
					keepNarrow
						ifTrue:[
							beginh]
						ifFalse:[
							beginh back] ].
	
	endh := beginh.
	
	self  assert: cursor invariant.
	
	self assert: (self textFrom: self begin to: self end) = (uu , vv).
	
	self triggerEvent: #cursor.! !

!WordProcessorMachine methodsFor: 'editing' stamp: 'DF 5/25/2025 22:42:53'!
insert: aString

	"insert aString right after cursor. Create new lines as needed. Move the cursor to point one character ahead of the inserted string."
	
	| line string pp |
			
	pp := cursor copy.
	
	line := pp line.
	
	string := aString.
	
	[string notEmpty] whileTrue:[ | tail |

		tail := line insert: string after: pp index - 1 width: width.

		tail isEmpty
			ifTrue:[
				pp index: pp index + string size]
			ifFalse:[		
				line next ifNil:[ | aNewLine |
					aNewLine := Line new.
		
					self insert: aNewLine after: line].
		
				pp := pp nextLine.
		
				line := pp line ].
			
		string := tail ].
	
		cursor := cursor advanceBy: aString size.
		
		beginh := cursor isFirst ifTrue:[cursor] ifFalse:[cursor back]. 
		
		endh := beginh.
		
		self triggerEvent: #cursor.
! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/24/2025 17:31:52'!
begin
	^Address new line: head ; index:1 ; yourself! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/9/2025 17:40:02'!
end
	^self begin pastLastLine ! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/24/2025 18:20:20'!
insert: aNewLine after: aLine

	"we assume that aNewLine is not already in the list"
	
	self assert: aNewLine next isNil.
	self assert: aNewLine prev isNil.
	
	self assert: aLine invariant.
	
	aNewLine prev: aLine.
	
	aNewLine next: aLine next.
	
	aLine next ifNotNil:[:this | this prev: aNewLine ].
	
	aLine next: aNewLine.
	
	self assert: aLine invariant.
	self assert: aNewLine invariant.
	
	"if the page on which the new line is inserted overflows then shift the last line to the following
	page, create a new page if this is the last page"
	
	aNewLine page isOverflow 
		ifTrue:[
			aNewLine page shiftRight]
	! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/24/2025 17:31:52'!
lastLine
	
	| pp |
	
	pp := head.
	
	[ pp next isNil ] whileFalse:[
		pp := pp next].
	
	^pp
	
	! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/9/2025 17:25:39'!
textFrom: bAddress to: eAddress

	| pp aWriteStream |
	
	self assert: bAddress <= eAddress.
	
	aWriteStream := WriteStream on:''.
	
	pp := bAddress.
	
	[pp ~= eAddress] 
		whileTrue:[
			aWriteStream nextPut: pp char.
			pp := pp forward].
	
	^aWriteStream contents! !

!WordProcessorMachine class methodsFor: 'as yet unclassified' stamp: 'DF 5/31/2025 14:27:01'!
PageSize
	^10! !

!WPEditorMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 18:51:34'!
onBlinkCursor
	
	"Blink the cursor"
	
	showCursor := showCursor not.
	
	textCursorRect ifNotNil:[:r | self invalidateLocalRect: r].
! !

!WPEditorMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 17:35:36'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: 500.
	! !

!WPEditorMorph methodsFor: 'blinking' stamp: 'DF 5/11/2025 17:20:55'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		textCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]]! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/31/2025 15:07:32'!
drawCursorOn: aCanvas

	| xcursor ycursor |
	
	ycursor := dy * (wbegin distanceFrom: machine cursor line).
	
	"A line that begins a page occupies two lines, its text is in the bottom line "
	
	machine cursor line ppage notNil
		ifTrue:[
			ycursor := ycursor + dy].
		
	xcursor := dx * (machine cursor index) - dx + (dx * machine leftMargin).
	
	textCursorRect := xcursor@ycursor extent: dx@dy.

	aCanvas fillRectangle: textCursorRect  color: cursorColor.
	
! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/26/2025 14:14:22'!
drawOn: aCanvas

	[ | selection yy we |
		
	self assert: machine notNil.
	
	super drawOn: aCanvas.

	we := self wend atPastEnd.
	
	selection := ((wbegin at:1) to: we) intersect: machine selection.
	
	selection isEmpty
		ifTrue:[
			^self drawOn:aCanvas textFrom: (wbegin at:1) to: we atHeight:0 highlight: false color: Color black].
	
	yy := self drawOn: aCanvas textFrom: (wbegin at:1) to: selection begin atHeight: 0 highlight: false color: Color black.
	
	selection end = we
		ifTrue:[ 
			self drawOn: aCanvas textFrom: selection begin to: selection end atHeight: yy highlight: true color: Color white ]
		ifFalse:[ 
			yy := self drawOn: aCanvas textFrom: selection begin to: selection end incrementIndex atHeight: yy highlight: true color: Color white.
			self drawOn: aCanvas textFrom: selection end forward to: self wend atPastEnd atHeight: yy highlight: false color: Color black ].

	showCursor 
		ifTrue:[self drawCursorOn: aCanvas ].	
	
	]
	on: AssertionFailure do:[:ex | self drawingFails. self halt.].
	! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/31/2025 15:07:42'!
drawOn: aCanvas at: aNumberHeight color: aColor highlight: aBoolean from: anAddressB to: anAddressE 

	| yy |
	
	self assert: anAddressB line == anAddressE line.
	
	yy := anAddressB line ppage notNil
			ifTrue:[aNumberHeight + dy]
			ifFalse:[aNumberHeight].
			
	aBoolean
		ifTrue:[ | xb |
			xb := dx * (anAddressB index - 1) + (dx * machine leftMargin).
			aCanvas fillRectangle: (xb @ yy extent: (dx * (anAddressE index - anAddressB index)) @ dy) color: Color black].
		
	aCanvas drawString: (anAddressB line text copyFrom: anAddressB index to: anAddressE index - 1) at: dx * (anAddressB index - 1) + (dx * machine leftMargin) @ yy font: font color: aColor.

	anAddressB line ppage notNil 
		ifTrue:[ self drawOn: aCanvas page: anAddressB line ppage breakAt: aNumberHeight. ].
	
	^  anAddressE index >= anAddressE line text size
		ifTrue:[yy + dy]
		ifFalse:[aNumberHeight]
		
		
! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/27/2025 14:53:33'!
drawOn: aCanvas page: aPage breakAt: aNumberHeight

	| hh |
	
	hh := aNumberHeight + (0.25*dy).
	aCanvas fillRectangle: (0@hh extent: self morphWidth @ (dy / 2.0)) color: (Color fromHexString:'#BBBBBB').
	
	aCanvas drawString: ('{1}' format:{aPage pageNumber}) atCenterX: (self morphWidth / 2.0 @ hh) font: pageNumberFont color: Color black.
! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/26/2025 09:20:59'!
drawOn: aCanvas textFrom: addrB to: addrE atHeight: hh highlight: aBoolean color: aColor

	| yy addr zz |

	addr := addrB.
	yy := hh.
	
	[ addr line ~= addrE line ] whileTrue:[
		
		yy := self drawOn: aCanvas at: yy color: aColor highlight: aBoolean from: addr to: addr pastEndOfLine.		
		addr := addr nextLine ].

	" draw the text for the last line but keep the height at the last line unless the last line is full. "

	zz :=  self drawOn: aCanvas at: yy color: aColor highlight: aBoolean from: addr to: addrE.
	
	^ addrE isIndexPastEndOfLine 
		ifTrue:[
			addrE isPastLast 
				ifTrue:[yy]
				ifFalse:[zz] ]
		ifFalse:[yy]
! !

!WPEditorMorph methodsFor: 'initialization' stamp: 'DF 5/31/2025 15:09:18'!
initialize

	super initialize. 
	
	mapper := FrogKeyboardMapper instance.
	
	color := Color white.
	
	font := FontFamily familyName: 'CMU Typewriter Text' pointSize: 14.

	pageNumberFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 10.	
	
	dy := font lineSpacing.
	
	dx := font widthOf:$M.
	
	wsize := 17.
	
	showCursor := true.
	
	cursorColor := Color fromHexString: '#AAAAAA'.
	
	leapLeftDown := false.

	leapRightDown := false.

	leapAgainDown := false.

	state := #editing.

	match := true.! !

!WPEditorMorph methodsFor: 'events' stamp: 'DF 5/31/2025 12:32:11'!
keyDown: aMorphicEvent

	mapper isLeapLeftKeyDown: aMorphicEvent ::
		ifTrue:[ leapLeftDown := true].

	mapper isLeapRightKeyDown: aMorphicEvent ::
		ifTrue:[ leapRightDown := true].

	mapper isLeapAgainKeyDown: aMorphicEvent ::
		ifTrue:[ leapAgainDown := true].

	leapRightDown and: [ leapLeftDown ] ::
		ifTrue:[
			machine highlight.
			self redrawNeeded ].
	
	leapRightDown = false and: [ leapLeftDown = false ] ::
		ifTrue:[
			state := #editing].

	state = #init and: [ leapAgainDown ] ::
		ifTrue:[
			leapRightDown
				ifTrue:[
					machine creepRight]
				ifFalse:[
					leapLeftDown
						ifTrue:[
							machine creepLeft] ].
			self leap. 
			self scrollToCursor ].
	
	state = #editing and: [ leapRightDown or: [ leapLeftDown ] ] ::
		ifTrue:[
			state := #init].
	
	"Transcript show: ('key: down. state: {1}. code: {5} . leap again: {2}. leap left:{3} . leap right:{4} ' format:{ state . leapAgainDown . leapLeftDown . leapRightDown . aMorphicEvent keyValue }); cr."

! !

!WPEditorMorph methodsFor: 'events' stamp: 'DF 5/30/2025 22:53:24'!
keyStroke: aKeyboardEvent

	| keyv |
	
	keyv := aKeyboardEvent keyValue.

	state = #editing and: [keyv < 128 ] ::
		ifTrue:[
			mapper isCopyKey: aKeyboardEvent ::
				ifTrue:[
					^machine copy].	
			mapper isEnterKey: aKeyboardEvent ::
				ifTrue:[
					machine insert: String crString].
			mapper isEraseKey: aKeyboardEvent ::
				ifTrue:[
					self erase]
				ifFalse:[ 
					keyv > 31
						ifTrue:[ | cc |
							cc := Character codePoint: keyv.
							machine insert: cc asString] ] ].
	
	state = #init and: [keyv < 128 ] :: 
		ifTrue:[
			machine clearPattern.
			match := true.
			machine pushCursor.
			state := #building ].
			
	state = #building and:[keyv < 128] and:[match] ::
		ifTrue:[
			machine patternPut: keyv.
			match := self leap.
			match 
				ifFalse:[
					machine popCursor ]	].
	
	self scrollToCursor.
			
! !

!WPEditorMorph methodsFor: 'events' stamp: 'DF 5/31/2025 12:32:56'!
keyUp: aMorphicEvent

	mapper isLeapLeftKeyUp: aMorphicEvent ::
		ifTrue:[ leapLeftDown := false].

	mapper isLeapRightKeyUp: aMorphicEvent ::
		ifTrue:[ leapRightDown := false].

	mapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[ leapAgainDown := false].

	leapRightDown = false and: [ leapLeftDown = false ] ::
		ifTrue:[
			state := #editing].

	"Transcript show: ('key: up. state: {1}. leap again: {2}. leap left:{3} . leap right:{4} ' format:{ state . leapAgainDown . leapLeftDown . leapRightDown  }); cr."
		
	self redrawNeeded 
! !

!WPEditorMorph methodsFor: 'events' stamp: 'DF 5/12/2025 22:54:27'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self world activeHand newKeyboardFocus: self! !

!WPEditorMorph methodsFor: 'event handling testing' stamp: 'DF 5/11/2025 19:27:43'!
handlesKeyboard
	^true! !

!WPEditorMorph methodsFor: 'event handling testing' stamp: 'DF 5/12/2025 21:45:09'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/25/2025 22:57:23'!
erase

	| selection bb ee |
	
	" If the selection we are about to erase includes wbegin we must set wbegin to 
	the line immediately after the erased lines.
	"
	selection := machine selection.
	
	bb := selection begin line.
	ee := selection end line.
	
	[ bb ~= wbegin and: [bb ~= ee ] ] 
		whileTrue:[ bb := bb next ].
	
	machine erase.
	
	bb == wbegin
		ifTrue:[
			wbegin := machine cursor line ].
! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:48:30'!
leap

	^leapLeftDown 
		ifTrue:[
			machine pattern first = Character newPage 
				ifTrue:[
					machine leapToBeginning ]
				ifFalse:[
					machine leapLeft] ]
		ifFalse:[
			leapRightDown
				ifTrue:[
					machine pattern first = Character newPage 
						ifTrue:[
							machine leapToEnd ]
						ifFalse:[
							machine leapRight] ]
				ifFalse:[
					self assert: false. "we must not leap when both alts are pressed" ] ].
			
	
! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/31/2025 15:10:06'!
machine: aWPMachine

	machine := aWPMachine.

	pageWidth := 80 - (machine leftMargin + machine rightMargin).
	
	machine width: pageWidth.
		
	wbegin := machine begin line.
	
	self scrollToCursor ! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/26/2025 09:35:27'!
wend

	| pp ii |
	
	pp := wbegin.
	
	ii := 0.
	
	[ii < wsize and:[pp next notNil] ] whileTrue:[
		ii := ii + pp height.
		pp := pp next].
	
	^pp! !

!WPEditorMorph methodsFor: 'scrolling' stamp: 'DF 5/13/2025 15:53:46'!
scrollBackwardToCursor

	[ wbegin = machine cursor line ] whileFalse:[wbegin := wbegin prev ].
	
! !

!WPEditorMorph methodsFor: 'scrolling' stamp: 'DF 5/30/2025 23:14:20'!
scrollForwardToCursor

	| ii pp |
	
	pp := machine cursor line.
	
	ii := pp height - 1.
	

	[ pp prev notNil and:[ii < wsize]  ] whileTrue:[pp := pp prev. ii := ii + pp height. ].
	
	" pp prev isNil and pp notNil and ii = distance[pp,line] and pp prev isNil or ii = wsize "
	
	" pp notNil and ii = distance[pp,line] and ii <= wsize "
	
	"pp notNil and distance[pp,line] <= wsize"
	
	wbegin := pp.! !

!WPEditorMorph methodsFor: 'scrolling' stamp: 'DF 5/25/2025 22:46:57'!
scrollToCursor

	"
	look for the cursor within the window, if found there is no need to scroll.
	
	"
	
	| pp ee |
	
	pp := wbegin.
	
	ee := self wend.
	
	[pp ~= ee and: [pp ~= machine cursor line ] ] whileTrue:[ pp := pp next ].
	
	pp = machine cursor line ifTrue:[^self].
	
	" otherwise, see where to scroll "
	
	self wend precedes: machine cursor line ::
		ifTrue:[
			^self scrollForwardToCursor ].
		
	machine cursor line precedes: wbegin ::
		ifTrue:[
			^self scrollBackwardToCursor ].
		
		! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 18:14:14'!
Erase
	^8! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:15'!
LeftAlt
	^152! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:51'!
LeftCtrl
	^222! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 19:10:02'!
NewLine
	^13! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 21:13:12'!
Page
	^12! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:31'!
RightAlt
	^136! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:27:02'!
RightCtrl
	^221! !

!WPRuler methodsFor: 'blinking' stamp: 'DF 5/16/2025 17:36:17'!
onBlinkCursor

	showCursor := showCursor not.

	rulerCursorRect ifNotNil:[:r | self invalidateLocalRect: r].! !

!WPRuler methodsFor: 'blinking' stamp: 'DF 5/16/2025 17:35:18'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: 500.
	
	! !

!WPRuler methodsFor: 'blinking' stamp: 'DF 5/16/2025 17:35:56'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		rulerCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]]! !

!WPRuler methodsFor: 'drawing' stamp: 'DF 5/31/2025 15:08:48'!
drawCursorOn: aCanvas

	| xcursor |
	
	" draw the cursor indicator in the ruler area"
	
	xcursor := (machine cursor index - 0.5) * dx  - 2 + (dx * machine leftMargin).
	
	rulerCursorRect := xcursor@0 extent: 4@12.

	aCanvas fillRectangle: rulerCursorRect  color: Color white. 
! !

!WPRuler methodsFor: 'drawing' stamp: 'DF 5/16/2025 21:49:19'!
drawOn: aCanvas

	super drawOn: aCanvas.
		
	self drawRulerOn: aCanvas. 
	
	showCursor ifTrue:[
		self drawCursorOn: aCanvas].

	aCanvas drawString: (machine cursorLineNumber printStringBase: 10 length: 2 padded: false) at: dx * 3 @30 font: statusFont color: Color white.! !

!WPRuler methodsFor: 'drawing' stamp: 'DF 5/16/2025 16:24:35'!
drawRulerOn: aCanvas
	
	| xx wc |
	
	super drawOn: aCanvas.
	
	wc := (rulerFont widthOf: $8) / 2.
	
	0 to:79 do:[:ii |
		xx := dx / 2 + (dx * ii).
		aCanvas line: xx@0 to: xx@5 width:1 color: Color white ].
	
	1 to:8 do:[:ii |
		xx := dx / 2 + (dx * 10 * ii).
		aCanvas 
			line: xx@0 to: xx@10 width:1 color: Color white ;
			drawString: ('{1}' format:{ii}) at: (xx - wc) @ 12  font: rulerFont color: Color white ].
		
	aCanvas frameRectangle: (8 * dx @ 0 extent: (65 * dx + dx  @ 30) ) borderWidth: 1 color: Color white.! !

!WPRuler methodsFor: 'initialization' stamp: 'DF 5/16/2025 17:37:29'!
initialize

	super initialize .
	
	color := Color black.
	
	rulerFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 10.	
	
	statusFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 12.
	
	dx := (FontFamily familyName: 'CMU Typewriter Text' pointSize: 14) widthOf:$M.
	
	showCursor := true.! !

!WPRuler methodsFor: 'accessing' stamp: 'DF 5/16/2025 15:20:10'!
machine: aWordProcessorMachine

	self assert: aWordProcessorMachine notNil.
	
	machine := aWordProcessorMachine.
	
	machine when: #cursor send: #redrawNeeded to: self.! !

!TestLine methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 22:26:04'!
testErase

	| aLine tail |
	
	aLine := Line new.
	
	tail := aLine insert: '12345' after:0 width: 8.
	
	self assert: tail isEmpty.
	
	self assert: aLine text = '12345'.
	
	aLine eraseFrom: 1 to: 5.
	
	self assert: aLine text isEmpty.! !

!TestLine methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 19:27:20'!
testInsert

	| aLine tail |
	
	aLine := Line new.
	
	tail := aLine insert: 'abcd' after:0 width: 7.
	
	self assert: tail isEmpty.
	
	self assert: aLine text = 'abcd'.
	
	tail := aLine insert: ' efg' after: 4 width: 7.
	
	self assert: tail = 'efg'.
	
	self assert: aLine text = 'abcd '.

	tail := aLine insert: 'a
' after: 5 width: 7.

	self assert: tail isEmpty.
	
	self assert: aLine text = 'abcd a
'.
	! !

!TestLine methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 11:52:50'!
testInsertLongString

	| aLine tail |
	
	aLine := Line new.
	
	tail := aLine insert: 'abc d' after:0 width: 7.
	
	self assert: tail isEmpty.
	
	self assert: aLine text = 'abc d'.
	
	tail := aLine insert: '12345678' after: 4 width: 7.
	
	self assert: tail = '12345678d'.
! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 19:09:21'!
testAddress

	| aWordProcessor aLine pp |
	
	aWordProcessor := WordProcessorMachine new.
	
	aWordProcessor insert:'abc 123 7654 a b w x'.
	
	aLine := aWordProcessor lines.

	self assert: aLine text = 'abc 123 '.
	
	aLine := aLine next.
	
	self assert: aLine text = '7654 a b'.
	
	aLine := aLine next.
	
	self assert: aLine text = ' w x'.

	aLine := aLine next.
	
	self assert: aLine isNil.
	
	pp := Address new line: aWordProcessor lines ; index:1 ; yourself.
	
	pp := pp advanceBy: 8.
	
	self assert: pp line text = '7654 a b'.
	
	self assert: pp index = 1.
	
	pp := pp advanceBy: 1.
	
	self assert: pp line text = '7654 a b'.
	
	self assert: pp index = 2.
	
	pp := pp backupBy: 1.

	self assert: pp line text = '7654 a b'.
	
	self assert: pp index = 1.

	pp := pp backupBy: 1.
	
	self assert: pp line text = 'abc 123 '.
	
	self assert: pp index = 8.! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 21:36:08'!
testAddressRange

	| machine text selection window common |
		
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.

Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	machine := WordProcessorMachine new.
	
	machine width: 12.
	
	machine insert: text.

	machine pattern:  'olden'.
	
	machine leapRight.
	
	self assert: machine cursor = (Address new line: machine lines ; index: 4 ; yourself).	
	
	machine pushCursor.

	machine pattern:  'have'.
	
	machine leapRight.
	
	self assert: machine cursor = (Address new line: machine lines next next next ; index: 4 ; yourself).	
	
	machine highlight.
	
	selection := machine selection.
	
	window := AddressRange new begin: (Address new line: machine lines next ; index:1; yourself) ; end: (Address new line: machine lines next next next next next next ; index: 11; yourself) ; yourself.
	
	common := selection intersect: window.
	
	self assert: common begin = window begin.
	
	self assert: common end = selection end.
	
	! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 19:12:20'!
testErase

	| aWordProcessor aLine |
	
	aWordProcessor := WordProcessorMachine new.
	
	aWordProcessor insert:'abc 123'.
	
	aLine := aWordProcessor lines.

	self assert: aLine text = 'abc 123'.
	
	aWordProcessor erase.
	
	self assert: aLine text = 'abc 12'.
	
	aWordProcessor insert: '3'.
	
	self assert: aLine text = 'abc 123'.
	
	aWordProcessor insert: '45'.
	
	self assert: aLine text = 'abc '.
	self assert: aLine next text = '12345'.
	
	aWordProcessor insert: 'tr', String crString.
	
	aWordProcessor insert:'uq2x
1
2
3
4
5
6
7
8
9
10
11'.
	
	aWordProcessor pattern: 'abc'.
	
	aWordProcessor leapLeft.
	
	aWordProcessor erase.
	
	self assert: true.
	! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/25/2025 22:40:52'!
testEraseAll

	| text machine |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	machine := WordProcessorMachine new.
	
	machine width: 12.
		
	machine insert: text.
	
	machine leapToBeginning; pushCursor; leapToEnd; highlight.
	
	machine erase.
	
	self assert: machine invariant.
! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 19:26:27'!
testHighlight

	| machine text |
		
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.

Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	machine := WordProcessorMachine new.
	
	machine width: 12.
	
	machine insert: text.

	machine pattern:  'the'.
	
	machine leapLeft.
	
	machine pushCursor ; creepLeft; leapLeft.
	
	machine highlight.
	
	self assert: machine invariant.
! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 19:05:55'!
testInsert

	| aWordProcessor aLine |
	
	aWordProcessor := WordProcessorMachine new.
	
	aWordProcessor insert:'abc 12345678abcdefghABCDEFGH12345678'.
	
	aLine := aWordProcessor lines.

	self assert: aLine text = 'abc '.
	
	aLine := aLine next.
	
	self assert: aLine text = '12345678'.
	
	aLine := aLine next.
	
	self assert: aLine text = 'abcdefgh'.

	aLine := aLine next.
	
	self assert: aLine text = 'ABCDEFGH'.
	
	aLine := aLine next.
	
	self assert: aLine text = '12345678'.
	
	aWordProcessor insert: 'Once upon, 
a time. There was a frog'.

	aLine := aLine next.

	self assert: aLine text = 'Once '.

	aLine := aLine next.

	self assert: aLine text = 'upon, 
'.
	aLine := aLine next.

	self assert: aLine text = 'a time. '.

	aLine := aLine next.

	self assert: aLine text = 'There '.

	aLine := aLine next.

	self assert: aLine text = 'was a '.

	aLine := aLine next.

	self assert: aLine text = 'frog'.
	
	! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 15:52:48'!
testLeapLeft

	| aWordProcessor |
	
	aWordProcessor := WordProcessorMachine new.
	
	aWordProcessor insert:'abc 123 uvw 812 aha bbc'.
	
	aWordProcessor pattern:  ' uv'.
	
	aWordProcessor leapRight.
	
	self assert: aWordProcessor cursor = (Address new line: aWordProcessor lines ; index: 8 ; yourself).
	
	aWordProcessor pattern:  '123'.
	
	aWordProcessor leapLeft.
	
	self assert: aWordProcessor cursor = (Address new line: aWordProcessor lines ; index: 5 ; yourself).	! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 15:52:48'!
testLeapRight

	| aWordProcessor |
	
	aWordProcessor := WordProcessorMachine new.
	
	aWordProcessor insert:'abc 123 uvw 812 aha bbc'.
	
	aWordProcessor pattern:  ' uv'.
	
	aWordProcessor leapRight.
	
	self assert: aWordProcessor cursor = (Address new line: aWordProcessor lines ; index: 8 ; yourself).
	
	aWordProcessor pattern:  '81'.
	
	aWordProcessor leapRight.
	
	self assert: aWordProcessor cursor = (Address new line: aWordProcessor lines next ; index: 5 ; yourself).	! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:16:11'!
testLineRange

	| machine text xb xe yb ye rr zz  |
		
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.

Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	machine := WordProcessorMachine new.
	
	machine width: 12.
	
	machine insert: text.

	xb := machine begin line.
	xe := xb next next next.
	
	yb := xe next.
	ye := yb next next.
	
	rr := xb to: xe.
	zz := yb to: ye.
	
	self assert: (rr intersect: zz) isEmpty.
	
	xe := ye next.

	rr := xb to: xe.

	self assert: (rr intersect: zz) = zz.
	
	ye := xe next next.
	
	zz := yb to: ye.
	
	self assert: (rr intersect:zz) = (yb to: xe).
	! !

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 15:42:25'!
testMorph

	| text machine |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	machine := WordProcessorMachine new.
	
	machine width: 12.
	
	machine insert: text.
	
	machine pattern: 'golden'.
	
	machine leapLeft.
	
	machine insert:'Z'.
	
	WordProcessor open: machine.! !

!SequenceableCollection methodsFor: '*Frog-enumerating' stamp: 'DF 5/8/2025 16:50:50'!
firstIndex: aBlock

	| index |
	
	index := self findFirst: aBlock.
	
	^ index = 0 ifTrue:[self size + 1] ifFalse:[index]! !

!PositionableStream methodsFor: '*Frog-positioning' stamp: 'DF 5/7/2025 18:27:25'!
tail
	| str |
	
	str := self contents.
	
	^ str copyFrom: position + 1 to: str size.! !
