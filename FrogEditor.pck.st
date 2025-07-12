'From Cuis7.3 [latest update: #7041] on 12 July 2025 at 11:06:25 pm'!
'Description '!
!provides: 'FrogEditor' 1 239!
SystemOrganization addCategory: #FrogEditor!


!classDefinition: #Address category: #FrogEditor!
Object subclass: #Address
	instanceVariableNames: 'line index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'Address class' category: #FrogEditor!
Address class
	instanceVariableNames: ''!

!classDefinition: #AddressRange category: #FrogEditor!
Object subclass: #AddressRange
	instanceVariableNames: 'begin end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'AddressRange class' category: #FrogEditor!
AddressRange class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditor category: #FrogEditor!
Object subclass: #KaeruEditor
	instanceVariableNames: 'cursor beginH endH textRepository pattern pcursor wide addreg'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'KaeruEditor class' category: #FrogEditor!
KaeruEditor class
	instanceVariableNames: ''!

!classDefinition: #KaeruKeyboardMapper category: #FrogEditor!
Object subclass: #KaeruKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'KaeruKeyboardMapper class' category: #FrogEditor!
KaeruKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxKeyboardMapper category: #FrogEditor!
KaeruKeyboardMapper subclass: #LinuxKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'LinuxKeyboardMapper class' category: #FrogEditor!
LinuxKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxRaspiKeyboardMapper category: #FrogEditor!
LinuxKeyboardMapper subclass: #LinuxRaspiKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'LinuxRaspiKeyboardMapper class' category: #FrogEditor!
LinuxRaspiKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #KaeruTextRepository category: #FrogEditor!
Object subclass: #KaeruTextRepository
	instanceVariableNames: 'end width lastPage leftMargin rightMargin'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'KaeruTextRepository class' category: #FrogEditor!
KaeruTextRepository class
	instanceVariableNames: ''!

!classDefinition: #Line category: #FrogEditor!
Object subclass: #Line
	instanceVariableNames: 'next prev text page'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'Line class' category: #FrogEditor!
Line class
	instanceVariableNames: ''!

!classDefinition: #Sentinel category: #FrogEditor!
Line subclass: #Sentinel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'Sentinel class' category: #FrogEditor!
Sentinel class
	instanceVariableNames: ''!

!classDefinition: #LineRange category: #FrogEditor!
Object subclass: #LineRange
	instanceVariableNames: 'begin end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'LineRange class' category: #FrogEditor!
LineRange class
	instanceVariableNames: ''!

!classDefinition: #Page category: #FrogEditor!
Object subclass: #Page
	instanceVariableNames: 'lastLine next prev'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'Page class' category: #FrogEditor!
Page class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditorMorph category: #FrogEditor!
ColoredBoxMorph subclass: #KaeruEditorMorph
	instanceVariableNames: 'font machine dy wbegin wsize showCursor textCursorRect dx cursorColor leapLeftDown leapRightDown leapAgainDown state match rulerCursorRect mapper pageNumberFont pageWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'KaeruEditorMorph class' category: #FrogEditor!
KaeruEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #TestAddressRange category: #FrogEditor!
TestCase subclass: #TestAddressRange
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'TestAddressRange class' category: #FrogEditor!
TestAddressRange class
	instanceVariableNames: ''!

!classDefinition: #TestKaeruEditor category: #FrogEditor!
TestCase subclass: #TestKaeruEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'TestKaeruEditor class' category: #FrogEditor!
TestKaeruEditor class
	instanceVariableNames: ''!

!classDefinition: #TestKaeruTextRepository category: #FrogEditor!
TestCase subclass: #TestKaeruTextRepository
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'TestKaeruTextRepository class' category: #FrogEditor!
TestKaeruTextRepository class
	instanceVariableNames: ''!


!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 11:43:33'!
<= anAddress

	line == anAddress line 
		ifTrue:[^index <= anAddress index].
		
	^line precedes: anAddress line! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:53:37'!
= anAddress

	self class == anAddress class ifFalse:[^false].
	
	^line == anAddress line and:[index = anAddress index]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:56:08'!
char

	^line charAt: index! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2025 20:32:53'!
dec
	^index > 1
		ifTrue:[
			Address fromLine: line index: index - 1]
		ifFalse:[
			Address fromLine: line prev index: line prev length]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2025 18:43:27'!
distanceFrom: anAddress

	| ii pp |
	
	ii := 0.
	
	pp := anAddress line.
	
	[pp ~= line ]
		whileTrue:[
			ii := ii + pp length.
			pp := pp next].
		
	^ii + index - anAddress index 
		! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:55:09'!
hash

	^(line hash hashMultiply + index hash) hashMultiply! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/20/2025 12:25:02'!
inc
	^index < line length
		ifTrue:[
			Address fromLine: line index: index+1]
		ifFalse:[
			Address fromLine: line next index: 1]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 14:27:35'!
index
	^index! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:19:14'!
index: anInteger
	index := anInteger! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 14:27:32'!
line
	^line! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:19:05'!
line: aLine
	line := aLine! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:09:49'!
nextLine
	^Address fromLine: line next index: 1! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 19:30:19'!
prevLine
	^Address fromLine: line prev index: 1! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:24:53'!
to: anAddress

	self assert: self <= anAddress.
	
	^AddressRange new begin: self; end: anAddress; yourself.! !

!Address class methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:18:53'!
fromLine: aLine index: anInteger

	^Address new line: aLine; index: anInteger ; yourself! !

!AddressRange methodsFor: 'private' stamp: 'DF 7/12/2025 19:42:25'!
lineRange
	
	^begin line to: end line ! !

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

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 7/12/2025 18:33:00'!
expand

	^AddressRange new begin: begin ; end: end inc ; yourself! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:22:05'!
hash
	"Hash is reimplemented because = is implemented."

	^(begin hash hashMultiply + end hash) hashMultiply! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 7/12/2025 21:04:20'!
intersect: anAddressRange

	| commonLines beginIndex endIndex |
	
	begin line = end line 
		ifTrue:[
			^(anAddressRange begin line precedes: begin line)
				and:[end line precedes: anAddressRange end line] ::
					ifTrue:[
						beginIndex := begin line = anAddressRange begin line 
								ifTrue:[begin index max: anAddressRange begin index]
								ifFalse:[begin index].
						endIndex := end line = anAddressRange end line
								ifTrue:[end index min: anAddressRange end index]
								ifFalse:[end index].
						
						AddressRange new begin: (Address new line: begin line ; index: beginIndex ; yourself) ; end: (Address new line: begin line; index: endIndex; yourself) ; yourself
						]
					ifFalse:[
						self emptyRange] ].

	anAddressRange begin line = anAddressRange end line
		ifTrue:[
			^anAddressRange intersect: self].
				
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
	
	commonLines end = end line and: [commonLines end = anAddressRange end line ] ::
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

!AddressRange methodsFor: 'testing' stamp: 'DF 5/26/2025 13:48:17'!
invariant

	^ (self isEmpty) or:[begin <= end]! !

!AddressRange methodsFor: 'testing' stamp: 'DF 7/11/2025 12:30:29'!
isEmpty

	begin isNil and:[end isNil] :: ifTrue:[^true].
	
	^begin = end! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 7/12/2025 21:18:34'!
erase

	| pp |
	
	pp := beginH = endH
		ifTrue:[
			textRepository eraseFrom: beginH to: endH inc]
		ifFalse:[
			textRepository eraseFrom: beginH to: endH].
	
	self isCursorWide 
		ifTrue:[
			pp ~= textRepository begin
				ifTrue:[
					cursor := pp dec]
				ifFalse:[
					cursor := pp.
					wide := false ] ]
		ifFalse:[
			cursor := pp].
	
	beginH := cursor.
		
	endH := cursor.
				
	self triggerEvent: #cursor.
			! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 7/12/2025 22:32:20'!
insert: aChar
	
	self isCursorNarrow 
		ifTrue:[
			cursor := cursor dec].
		
	cursor := textRepository insert: aChar after:cursor.
	
	beginH := cursor.
	
	endH := beginH.
	
	wide := true.
	
	self triggerEvent: #cursor.! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 7/9/2025 22:15:04'!
insertAll: aString

	aString do:[:eachChar |
		self insert: eachChar ]! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/11/2025 22:51:24'!
clearPattern
	pattern resetContents! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/10/2025 20:29:10'!
highlight

	self assert: pcursor notNil.
	
	beginH := pcursor.
	endH := cursor.
	
	self triggerEvent: #cursor.! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/12/2025 22:37:51'!
leapLeft

	| text pp match |

	beginH = endH "cursor is not extended, only search "
		ifTrue:[

			match := textRepository match: pattern contents from: cursor.
			
			match 
				ifTrue:[
					wide := false.
					pcursor := cursor.
					^true].
			
			pp := textRepository searchLeft: pattern contents from: cursor.

			match := pp ~= cursor.

			match 
				ifTrue:[
					wide := false.	
					cursor := pp.

					pcursor := cursor.

					beginH := cursor.
			
					endH := cursor].
			
			^match
		].
	
	"cursor is extended, also move text "
				
	text := textRepository textFrom: beginH to: endH.

	self erase.
	
	pp := textRepository searchLeft: pattern contents from: cursor.

	match := pp ~= cursor.
	
	match 
		ifTrue:[
			wide := false.
		].
	
	cursor := pp.
	
	self insertAll: text. 

	beginH := cursor.
	
	endH := cursor.
	
	text size timesRepeat:[
		endH := endH inc].
				
	^match
	! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/12/2025 22:37:05'!
leapRight

	| text pp match |

	beginH = endH "cursor is not extended, only search "
		ifTrue:[

			match := textRepository match: pattern contents from: cursor.
			
			match ifTrue:[
				wide := false.
				^true].

			pp := textRepository searchRight: pattern contents from: cursor.

			match := pp ~= cursor.
	
			match 
				ifTrue:[
					wide := false.	
					cursor := pp.
					
					beginH := cursor.
			
					endH := cursor].
			
			^match
		].
	
	text := textRepository textFrom: beginH to: endH.

	self erase.
	
	pp := textRepository searchRight: pattern contents from: cursor.

	match := pp ~= cursor.

	match 
		ifTrue:[
			wide := false.
		].
	
	cursor := pp.
	
	self insertAll: text. 

	beginH := cursor.
	
	endH := cursor.
	
	text size timesRepeat:[
		beginH := beginH dec].
				
	^match
	! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/12/2025 15:30:18'!
pattern
	^pattern contents! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/9/2025 21:57:02'!
patternPut: aCharacter
	pattern nextPut: aCharacter! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/12/2025 22:26:13'!
restoreCursor

	cursor := addreg at:1.
	beginH := addreg at:2.
	endH := addreg at:3.
	wide := addreg at:4.! !

!KaeruEditor methodsFor: 'leaping' stamp: 'DF 7/12/2025 22:26:07'!
storeCursor

	addreg at:1 put: cursor.
	addreg at:2 put: beginH.
	addreg at:3 put: endH.
	addreg at:4 put: wide.! !

!KaeruEditor methodsFor: 'initialization' stamp: 'DF 7/12/2025 22:26:22'!
initialize

	textRepository := KaeruTextRepository new.
	
	textRepository leftMargin:8 ; rightMargin: 16.
	
	cursor := textRepository begin.
	
	beginH := cursor.
	
	endH := cursor.
	
	wide := false.
	
	pattern := WriteStream on:''.
	
	addreg := Array new:4.! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:24:26'!
begin
	^ textRepository begin! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:23:29'!
cursor
	^ cursor! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:24:31'!
end
	^ textRepository end! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:23:56'!
leftMargin
	^ textRepository leftMargin! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:40:02'!
selection
	^ beginH to: endH! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:39:14'!
selectionText	
	^ textRepository textFrom: beginH to: endH! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:23:19'!
width
	^ textRepository width! !

!KaeruEditor methodsFor: 'as yet unclassified' stamp: 'DF 7/10/2025 20:51:54'!
text
	^ textRepository textFrom: textRepository begin to: textRepository end! !

!KaeruEditor methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 23:02:47'!
textFrom: bAddr to: eAddr

	^ textRepository textFrom: bAddr to: eAddr! !

!KaeruEditor methodsFor: 'testing' stamp: 'DF 7/12/2025 20:22:46'!
isCursorNarrow
	^wide not! !

!KaeruEditor methodsFor: 'testing' stamp: 'DF 7/12/2025 20:22:55'!
isCursorWide
	^ wide! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 21:43:36'!
isCopyKey: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:09'!
isEnterKey: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:46:23'!
isEraseKey: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:40:24'!
isLeapAgainKeyDown: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:41:16'!
isLeapAgainKeyUp: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:12'!
isLeapLeftKeyDown: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:41:23'!
isLeapLeftKeyUp: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:35:28'!
isLeapRightKeyDown: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:41:32'!
isLeapRightKeyUp: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 6/2/2025 13:43:40'!
isPageBreakKey: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/18/2025 18:47:03'!
isPageKey: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper class methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:36:38'!
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

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 6/2/2025 13:44:19'!
isPageBreakKey: aMorphicEvent
	^aMorphicEvent isPageDown and: [aMorphicEvent controlKeyPressed ]! !

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

!KaeruTextRepository methodsFor: 'testing' stamp: 'DF 7/7/2025 22:58:27'!
checkLines

	| pp |
	
	pp := end.
	
	pp checkPages.
	
	pp := pp next.
	
	[pp isSentinel not and: [pp checkPages ] ] whileTrue:[pp := pp next ].
	
	pp isSentinel ifFalse:[self halt].

	^true! !

!KaeruTextRepository methodsFor: 'testing' stamp: 'DF 7/7/2025 23:41:29'!
checkPages

	| pp |
	
	pp := lastPage.
	
	pp invariant.
	pp isOverflow ifTrue:[self halt].
	
	pp := pp next.
	
	[pp ~= lastPage] whileTrue:[
		pp invariant.
		pp isOverflow ifTrue:[self halt].
		pp := pp next ].

	^true! !

!KaeruTextRepository methodsFor: 'testing' stamp: 'DF 7/11/2025 12:03:03'!
invariant

	| pp |
	
	pp := end.
	
	pp invariant: self width.
	
	pp := pp next.
	
	[pp isSentinel not and: [pp invariant:self width ] ] whileTrue:[pp := pp next ].
	
	pp isSentinel ifFalse:[self halt].
	
	pp := lastPage.
	
	pp invariant.
	pp isOverflow ifTrue:[self halt].
	
	pp := pp next.
	
	[pp ~= lastPage] whileTrue:[
		pp invariant.
		pp isOverflow ifTrue:[self halt].
		pp := pp next ].
	
	^true! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 6/12/2025 14:29:21'!
begin
	^self end inc! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 6/20/2025 12:21:54'!
end
	^Address fromLine: end index: 1! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 7/11/2025 22:45:54'!
leftMargin
	^leftMargin! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 7/11/2025 12:03:40'!
leftMargin: anInteger
	leftMargin := anInteger! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 7/9/2025 23:01:20'!
pageNumberOf: aPage

	^aPage distanceFrom: end next page! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 7/11/2025 12:04:08'!
rightMargin: anInteger

	self assert: anInteger >= (leftMargin + 2).
	
	rightMargin := anInteger! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 6/12/2025 11:56:49'!
textFrom: bAddr to: eAddr

	| aWriteStream bb |
	
	aWriteStream := WriteStream on: ''.
	
	bb := bAddr.
	
	[bb ~= eAddr] whileTrue:[
		aWriteStream nextPut: bb char.
		bb := bb inc ].
	
	^aWriteStream contents
	! !

!KaeruTextRepository methodsFor: 'accessing' stamp: 'DF 7/11/2025 12:06:16'!
width

	^ rightMargin - leftMargin! !

!KaeruTextRepository methodsFor: 'initialization' stamp: 'DF 7/7/2025 14:49:36'!
initialize

	end := Sentinel new.
	end next: end.
	end prev: end.
	
	lastPage := Page new.
	
	lastPage next: lastPage.
	lastPage prev: lastPage.
	lastPage lastLine: end.
	end page: lastPage.
	! !

!KaeruTextRepository methodsFor: 'private' stamp: 'DF 7/8/2025 09:14:14'!
eraseLinesFrom: bLine to: eLine

	| bpage epage |
	
	"erase all the lines from bLine to eLine not including eLine. 

	Note that if bLine == eLine then this operation is a skip "

	" also erase all the pages that are included in this range of lines "
	
	bpage := bLine page.
	epage := eLine page.
	
	bpage ~= epage ifTrue:[
		bLine isFirstInPage 
			ifTrue:[
				self erasePagesFrom: bpage to: epage]
			ifFalse:[
				self erasePagesFrom: bpage next to: epage.
				bLine prev page: bpage.
				bpage lastLine: bLine prev ] ].
	
	bLine prev next: eLine.
	eLine prev: bLine prev.

	"the order here is important because shiftleft can delete epage
	making it unusable for checking isUnderflow "
	
	epage isOverflow ifTrue:[ 
		epage shiftRight].

	epage isUnderflow ifTrue:[
		epage shiftLeft].
	
	! !

!KaeruTextRepository methodsFor: 'private' stamp: 'DF 7/7/2025 21:05:33'!
erasePagesFrom: bPage to: ePage
	
	bPage prev next: ePage.
	ePage prev: bPage prev.
	
! !

!KaeruTextRepository methodsFor: 'private' stamp: 'DF 6/13/2025 19:05:23'!
insertAtStart: aCharacter 

	end next = end "the text is empty"
		ifTrue:[
			end insertNewLine ].

	end next insert: aCharacter asString at: 1.
		
	^Address fromLine: end next index: 1.
		
		
	
	! !

!KaeruTextRepository methodsFor: 'private' stamp: 'DF 7/11/2025 12:02:55'!
insertNotAtStart: aCharacter after: anAddress

	| line index bb |
		
	self assert: anAddress ~= self end.
	
	line := anAddress line.
	index := anAddress index + 1.
	
	line insert: aCharacter asString at: index.		
	
	"fix line if it overflows and fix prev line if prev becomes unpacked "	
	
	bb := anAddress.
		
	line length = (self width + 1) " the newly inserted character overflows the line "
		ifTrue:[ "if the index is located after width + 1 - shifted tokens length then the address that indicates the location moves to the next line at index - (width + 1 - stlen)"
			| stlen |
			stlen := line shiftRight: self width.
			index > (self width + 1 - stlen + 1)
				ifTrue:[
					bb := Address fromLine: line next index: index - (self width + 1 - stlen) - 1 ] ].
	
	aCharacter isSeparator
		ifFalse:[^bb inc].
		
	aCharacter isLineSeparator 
		ifTrue:[ 
			[index < line length]  "the line separator is not the last token in the line"
				whileTrue:[
					line shiftRight: self width ] ]. "shift all the token after the line separator to the next line"
			
	line prev isPacked: self width ::
		ifTrue:[
			^bb inc]
		ifFalse:[ | len |
			len := line prev shiftLeft: self width. 
			len < index 
				ifTrue:[
					^Address fromLine: line index: index - len]
				ifFalse:[ | pline |
					pline := line prev.
					line length = 0 
						ifTrue:[line delete].
					^Address fromLine: pline index: pline length] ]
	
	! !

!KaeruTextRepository methodsFor: 'private' stamp: 'DF 7/11/2025 12:03:14'!
repackAfterErase: aLine
	
	| nshifted |
		
	nshifted := 0.
	
	aLine isPacked: self width :: 
		ifFalse:[ nshifted := nshifted - (aLine shiftLeft: self width)].
				
	aLine isKissing ifTrue:[ 
		"The line is packed so we cannot shift left, nevertheless we shift left once,
		this will join the two kissing tokens and will overflow the line. A call to shiftRight
		will then move the larger token into its correct position."
		nshifted := nshifted - aLine shiftLeftOnce.
		nshifted := nshifted + (aLine shiftRight: self width) ].

	^nshifted! !

!KaeruTextRepository methodsFor: 'private' stamp: 'DF 6/20/2025 11:55:30'!
repackAfterErase: bLine to: eLine
	
	| nshifted pp |
	
	pp := bLine.
		
	nshifted := self repackAfterErase: bLine.
	
	pp := pp next.
	
	[pp ~= eLine and:[eLine isDeleted not] ] "if eLine is deleted it means that we have already packed up to it"
		whileTrue:[
			self repackAfterErase: pp.
			pp := pp next ].
		
	^nshifted
	
	! !

!KaeruTextRepository methodsFor: 'editing' stamp: 'DF 7/8/2025 08:32:30'!
eraseFrom: bAddress to: eAddress

	|  start dd |
	
	self assert: bAddress <= eAddress.

	start := Address fromLine: bAddress line prev index:1.
	
	"measure the number of characters from start to bAddress"
	
	dd := bAddress line prev length + bAddress index - 1.
	
	bAddress line == eAddress line
		ifTrue:[ 
			bAddress line eraseFrom: bAddress index to: eAddress index ]			
		ifFalse:[	
			bAddress index = 1 
				ifTrue:[
					self eraseLinesFrom: bAddress line to: eAddress line ]
				ifFalse:[
					bAddress line eraseFrom: bAddress index. 
					self eraseLinesFrom: bAddress line next to: eAddress line ]. 
	 
			eAddress line eraseTo: eAddress index ].
	
	self assert: self checkPages.
	self assert: self checkLines.
	
	"Several properties may be violated after erasing:
	
	1. The line before bAddress line may become unpacked, for 
	example when we erase the tail of the first token in bAddress line, 
	making it shorter and therefore it could be shifted left.
	
	2. The line eAddress line may become unpacked for example when
	we erase some characters from its beginning and therefore make 
	room for a token in the next line.
	
	3. The text in the affected lines may kiss --- this is when the last token in a line
	and the first token in the next line are both words (non separator tokens), which means
	that they should become a single larger token and thus shift entirely to the left or to
	the right. 
	
	Note that it is possible for lines to kiss but only if one of the tokens occupies the entire
	line.
	
	"
	
	self repackAfterErase: start line to: eAddress line next.

	self assert: self checkPages.
	self assert: self checkLines.

	dd timesRepeat:[start := start inc].
	
	^start
	! !

!KaeruTextRepository methodsFor: 'editing' stamp: 'DF 6/13/2025 19:01:12'!
insert: aCharacter after: anAddress

	anAddress = self end "add at the beginning of text"
		ifTrue:[
			^self insertAtStart: aCharacter].
		
	^self insertNotAtStart: aCharacter after: anAddress
		
	
	! !

!KaeruTextRepository methodsFor: 'searching' stamp: 'DF 7/12/2025 16:32:24'!
match: aString from: anAddress

	|  pp ii nn ee |
	
	self assert: aString size > 0.

	ee := self end.
	
	nn := aString size + 1.
		
	ii := 1.
	
	pp := anAddress.
	
	[ii ~= nn  and:[pp ~= ee] and:[pp char = (aString at: ii) ] ] 
		whileTrue:[
			ii := ii + 1.
			pp := pp inc ].
		
	^ii == nn
	
	

	! !

!KaeruTextRepository methodsFor: 'searching' stamp: 'DF 7/9/2025 20:35:43'!
matchLeft: aString from: anAddress

	|  pp ii ee |
	
	self assert: aString size > 0.
	
	ee := self end.
		
	ii := aString size.
	
	pp := anAddress.
	
	[ii ~= 0 and:[pp ~= ee] and:[pp char = (aString at: ii) ] ] 
		whileTrue:[
			ii := ii - 1.
			pp := pp dec ].
		
	^ii == 0
	
	

	! !

!KaeruTextRepository methodsFor: 'searching' stamp: 'DF 7/12/2025 16:32:32'!
searchLeft: aString from: anAddress

	| pp |
	
	self assert: aString notEmpty.
	
	pp := anAddress dec.
	
	[pp ~= anAddress and:[ (self match: aString from: pp) not ]  ] 
		whileTrue:[
			pp := pp dec ].
		
	^pp
	
	! !

!KaeruTextRepository methodsFor: 'searching' stamp: 'DF 7/12/2025 16:32:24'!
searchRight: aString from: anAddress

	| pp |
	
	self assert: aString notEmpty.
	
	pp := anAddress inc.
	
	[pp ~= anAddress and:[ (self match: aString from: pp) not ]  ] 
		whileTrue:[
			pp := pp inc ].
			
	^pp
	
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:56:06'!
charAt: anIntegerNumber

	^text at: anIntegerNumber ! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 20:56:39'!
delete
	
	page notNil
		ifTrue:[
			self assert: self isSentinel not.
			page lastLine: prev.
			prev page: page.
			page := nil].
		
	next prev: prev.
	prev next: next.	
	
	"set text to nil to indicate that this line is deleted but keep the next and prev
	pointers, they are useful when implementing erase"
	
	text := nil.
	
! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 12:00:14'!
eraseFrom: bIndex 

	self assert: bIndex > 0.
	
	text := text copyReplaceFrom:bIndex to: text size with: ''.
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 20:48:58'!
eraseFrom: bIndex to: eIndex

	self assert: bIndex > 0.
	self assert: eIndex <= (text size +1).
	
	text := text copyReplaceFrom:bIndex to: eIndex - 1 with: ''.
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 12:01:02'!
eraseTo: eIndex

	self assert: eIndex >= 1.
	self assert: eIndex <= (text size +1).
	
	text := text copyReplaceFrom:1 to: eIndex - 1 with: ''.
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:27:12'!
firstToken

	| aReadStream cc aWriteStream |
	
	aReadStream := ReadStream on: text.
	
	cc := aReadStream next.
	
	cc isSeparator
		ifTrue:[^cc asString].

	aWriteStream := WriteStream on: ''.
			
	[cc notNil and:[cc isSeparator not] ] whileTrue:[
		aWriteStream nextPut: cc.
		cc := aReadStream next].
	
	^aWriteStream contents
	
	
! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 14:31:33'!
initialize

	text := ''! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 19:38:32'!
insert: aString at: anIntegerIndex

	self assert: anIntegerIndex > 0.
	self assert: anIntegerIndex <= (text size +1).
	
	text := text copyReplaceFrom:anIntegerIndex to: anIntegerIndex-1 with: aString.
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 17:12:48'!
insertNewLine

	| aNewLine aPage |
	
	aNewLine := Line new.
	
	aNewLine next: next.
	next prev: aNewLine.
	
	aNewLine prev: self.
	self next: aNewLine.
	
	aPage := aNewLine page.
	
	aPage isOverflow 
		ifTrue:[
			aPage shiftRight]
		! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 19:31:26'!
lastToken

	| aReadStream cc aWriteStream |
	
	aReadStream := ReadStream on: text reverse.
	
	cc := aReadStream next.
	
	cc isSeparator
		ifTrue:[^cc asString].

	aWriteStream := WriteStream on: ''.
			
	[cc notNil and:[cc isSeparator not] ] whileTrue:[
		aWriteStream nextPut: cc.
		cc := aReadStream next].
	
	^aWriteStream contents reverse
	
	
! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2025 22:45:25'!
lineNumber

	| pp nn |
	
	pp := self.
	
	nn := 1.
	
	[pp prev isLastInPage] 
		whileFalse:[
			pp := pp prev.
			nn := nn + 1].
		
	^nn! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:36:38'!
page

	^page ifNil:[next page] ifNotNil:[page]! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:36:01'!
page: aPage

	page := aPage.
	
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 20:08:18'!
shiftLeft: anIntegerWidth
	
	| len |
	
	self assert: (self isPacked: anIntegerWidth) not.
	
	len := 0.
	
	[self isPacked: anIntegerWidth] whileFalse:[
		len := len + self shiftLeftOnce ].
	
	next length > 0 and:[next isPacked: anIntegerWidth :: not ] ::	
		ifTrue:[next shiftLeft: anIntegerWidth ]. 
		
	^len
		! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 23:18:35'!
shiftLeftOnce
	
	| token |
	
	token := next firstToken.
	self insert: token at: text size + 1.
	token size = next length
		ifTrue:[ | aPage | 
			aPage := next page.
			next delete.
			aPage isUnderflow
				ifTrue:[
					aPage shiftLeft].
			]
		ifFalse:[
			next eraseFrom: 1 to: token size + 1
		].
	^token size.
		! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 10:13:30'!
shiftRight: anIntegerWidth
	
	| token len |
	
	self assert: (self isOverflow: anIntegerWidth).
	
	len := 0.
	
	next isSentinel
		ifTrue:[
			self insertNewLine].
	
	[self isOverflow: anIntegerWidth] whileTrue:[
		
		token := self lastToken.
	
		text size > token size 
			ifTrue:[
				next insert: token at:1.
				text := text copyFrom:1 to: text size - token size. 
				len := len + token size. ]
			ifFalse:[
				next insert: (token copyFrom: anIntegerWidth + 1 to: token size) at:1.
				text := text copyFrom: 1 to: anIntegerWidth.
				len := len + (token size - anIntegerWidth). ] ].
	
	next isOverflow: anIntegerWidth ::	
		ifTrue:[next shiftRight: anIntegerWidth ]. 
	
	^len	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:28:10'!
to: aLine

	self assert: (self precedes: aLine).
	
	^LineRange new begin: self ; end: aLine ; yourself! !

!Line methodsFor: 'testing' stamp: 'DF 7/7/2025 22:57:29'!
checkPages

	page isNil or:[page lastLine == self] :: ifFalse:[self halt].

	page notNil
		ifTrue:[
			page next == next page
				ifFalse:[self halt] ].
					
	^true! !

!Line methodsFor: 'testing' stamp: 'DF 7/11/2025 19:12:20'!
endsWithPageSeparator

	^text notEmpty and: [text last isPageSeparator ]! !

!Line methodsFor: 'testing' stamp: 'DF 7/7/2025 22:55:51'!
invariant: aNumberWidth

	self isDeleted ifTrue:[self halt].

	page isNil or:[page lastLine == self] :: ifFalse:[self halt].

	page notNil
		ifTrue:[
			page next == next page
				ifFalse:[self halt] ].
					
	next prev == self ifFalse:[self halt].
	
	prev next == self ifFalse:[self halt].

	self isPacked: aNumberWidth :: ifFalse:[self halt].
		
	self isSentinel ifTrue:[^true].
	
	text size = 0 ifTrue:[self halt].
	
	text size > aNumberWidth ifTrue:[self halt].
	
	^true! !

!Line methodsFor: 'testing' stamp: 'DF 6/19/2025 19:37:42'!
isDeleted

	^text isNil! !

!Line methodsFor: 'testing' stamp: 'DF 7/12/2025 13:17:42'!
isFirstInPage
	^prev isLastInPage! !

!Line methodsFor: 'testing' stamp: 'DF 7/7/2025 19:38:49'!
isInPage
	^page isNil! !

!Line methodsFor: 'testing' stamp: 'DF 6/19/2025 19:42:33'!
isKissing
	"Answer true if this line ends with a non separator character and the next line starts with a non separating character, and it does not hold a single token that occupies the entire line."
	
	next isSentinel
		ifTrue:[
			^false].
		
	text last isSeparator
		ifTrue:[^false].
		
	next startsWithSeparator 
		ifTrue:[^false].
		
	self firstToken size = text size 
		ifTrue:[^false].
		
	^true
	! !

!Line methodsFor: 'testing' stamp: 'DF 7/7/2025 19:36:41'!
isLastInPage
	^page notNil! !

!Line methodsFor: 'testing' stamp: 'DF 6/12/2025 19:27:35'!
isOverflow: anIntegerWidth
	
	| ii |
	
	text size > anIntegerWidth ifTrue:[^true].
	
	ii := 1.
	
	[ii <= text size and:[text at:ii :: isLineSeparator not] ] whileTrue:[ii := ii + 1].
	
	^ii < text size "the line separator is not located at the end of the line"! !

!Line methodsFor: 'testing' stamp: 'DF 6/12/2025 11:39:45'!
isPacked: anIntegerWidth

	^self isSealed or:[next isSentinel] or:[text size + next firstToken size > anIntegerWidth] ! !

!Line methodsFor: 'testing' stamp: 'DF 6/12/2025 11:14:50'!
isSealed
	^text last isLineSeparator! !

!Line methodsFor: 'testing' stamp: 'DF 6/12/2025 11:15:27'!
isSentinel
	^false! !

!Line methodsFor: 'testing' stamp: 'DF 6/14/2025 11:41:58'!
precedes: aLine

	| pp |
	
	pp := self.
	
	[pp ~= aLine and:[pp isSentinel not] ] whileTrue:[pp := pp next].
	
	^pp == aLine! !

!Line methodsFor: 'testing' stamp: 'DF 6/14/2025 19:40:19'!
startsWithSeparator
	^text first isSeparator! !

!Line methodsFor: 'accessing' stamp: 'DF 7/12/2025 22:58:38'!
height
	^ self isLastInPage ifTrue:[2] ifFalse:[1]
		! !

!Line methodsFor: 'accessing' stamp: 'DF 7/12/2025 14:30:28'!
heightFrom: aLine

	| height pp |
	
	self assert: (aLine precedes: self).
	
	height := 0.
	
	pp := aLine.
	
	[pp ~= self]
		whileTrue:[
			height := height + pp height.
			pp := pp next ].
		
	^height
		! !

!Line methodsFor: 'accessing' stamp: 'DF 6/19/2025 19:38:12'!
length

	^text isNil ifTrue:[0] ifFalse:[text size]! !

!Line methodsFor: 'accessing' stamp: 'DF 6/12/2025 11:31:39'!
next
	^next! !

!Line methodsFor: 'accessing' stamp: 'DF 6/12/2025 10:55:13'!
next: aLine
	next := aLine! !

!Line methodsFor: 'accessing' stamp: 'DF 6/12/2025 11:31:41'!
prev
	^prev! !

!Line methodsFor: 'accessing' stamp: 'DF 6/12/2025 10:55:18'!
prev: aLine
	prev := aLine! !

!Sentinel methodsFor: 'accessing' stamp: 'DF 6/20/2025 18:42:52'!
length
	^1 "because one has to inc an address once to move over the sentinel"! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/14/2025 19:30:17'!
isKissing
	^false! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/12/2025 19:21:12'!
isOverflow: anIntegerWidth
	^true! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/12/2025 11:17:08'!
isPacked: aNumberWidth
	^true! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/12/2025 11:15:33'!
isSentinel
	^true! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/14/2025 19:39:35'!
startsWithSeparator
	^false! !

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

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 7/12/2025 21:04:35'!
intersect: aLineRange

	| b e p q  |
	
	p := begin.
	
	[p = end]
		whileFalse:[
			p = aLineRange begin
				ifTrue:[
					b := p].
			p = aLineRange end
				ifTrue:[
					e := p].
			p := p next ].
	
	q := aLineRange begin.

	[q = aLineRange end ]
		whileFalse:[
			q = begin
				ifTrue:[
					b := q].
			q = end
				ifTrue:[
					e := q].
			q := q next ].
	
	p = q 
		ifTrue:[
			self assert: e isNil.
			e := p].
	
	^LineRange new begin: b ; end: e ; yourself! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 11:46:17'!
invariant

	self assert: ((begin isNil and: end isNil) or:[begin precedes: end] ).
	
	^true! !

!LineRange methodsFor: 'testing' stamp: 'DF 5/12/2025 23:08:25'!
= aLineRange

	self class == aLineRange class 
		ifFalse:[^false].
		
	^begin = aLineRange begin and:[end = aLineRange end]
	
	! !

!LineRange methodsFor: 'testing' stamp: 'DF 7/11/2025 12:31:13'!
isEmpty
	begin isNil and:[ end isNil ] :: ifTrue:[^true].
	
	^begin = end! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/8/2025 08:54:19'!
countLines

	| nn begin |
		
	lastLine isSentinel and:[lastLine prev isSentinel] :: ifTrue:[^0].

		
	begin := lastLine isSentinel ifTrue:[lastLine prev] ifFalse:[lastLine].	

	begin page == self ifFalse:[^0].

	begin := begin prev.
	nn := 1.
			
	[begin isInPage] whileTrue:[
		nn := nn + 1.
		begin := begin prev.
	].

	^nn ! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 17:23:24'!
delete

	prev next: next.
	next prev: prev.
	
	lastLine page: nil.
	lastLine := nil.
	! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2025 22:50:55'!
distanceFrom: aPage

	| ii pp |
	
	ii := 0.
	
	pp := aPage.
	
	[pp ~= self ]
		whileTrue:[
			ii := ii + 1.
			pp := pp next].
		
	^ii ! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/8/2025 09:00:59'!
invariant

	lastLine ifNil:[self halt].
	
	next prev == self ifFalse:[self halt].
	
	prev next == self ifFalse:[self halt].
	
	lastLine page == self ifFalse:[self halt].
	
	lastLine next page == next.
	
	lastLine isSentinel or:[self countLines > 0] :: ifFalse:[self halt].
		 
	^true
	
	
	! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:40:59'!
isLast

	^lastLine isSentinel
	! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 16:09:12'!
isOverflow
	
	^self countLines > Page PageSize

	! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 17:25:56'!
isUnderflow

	self isLast ifTrue:[^false].
	
	^self countLines < Page PageSize

	! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:38:39'!
lastLine
	^lastLine! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/8/2025 09:01:12'!
lastLine: aLine

	self assert: aLine notNil.
	
	lastLine := aLine! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:38:42'!
next
	^next! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:34:15'!
next: aPage
	next := aPage! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 19:15:40'!
pageNumber

	| pp nn |
	
	pp := self.
	
	nn := 1.
	
	[pp prev isLast] 
		whileFalse:[
			pp := pp prev.
			nn := nn + 1].
		
	^nn! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:38:45'!
prev
	^prev! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 14:34:20'!
prev: aPage
	prev := aPage! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 17:04:49'!
pushNewPage

	| aNewPage |
		
	self assert: self isLast.
		
	aNewPage := Page new.

	prev next: aNewPage.
	aNewPage prev: prev.

	aNewPage next: self.
	prev := aNewPage.		

	aNewPage lastLine: lastLine prev.
	lastLine prev page: aNewPage.

	^aNewPage! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 21:54:49'!
shiftLeft

	self assert: self isLast not.
	
	lastLine next isSentinel
		ifTrue:[
			self delete]
		ifFalse:[
			lastLine page: nil.
			
			lastLine := lastLine next.
			
			lastLine page: self.
			
			next isUnderflow
				ifTrue:[next shiftLeft] ]
	
	
! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 23:38:56'!
shiftRight

	| aPage nn |
	
	self assert: self isOverflow.
	
	"move the last line in this page to the next page. create a new page if this is the last page "
	
	aPage := self isLast
				ifTrue:[
					self pushNewPage]
				ifFalse:[
					self].
	
	nn := aPage countLines - Page PageSize.
	
	nn timesRepeat:[aPage shrink].
	
	aPage next isOverflow
		ifTrue:[aPage next shiftRight].

		
	
	
		! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 17:11:31'!
shrink

	self assert: self isLast not.
	
	lastLine page: nil.
	
	lastLine := lastLine prev.
	
	lastLine page: self.
	
	
! !

!Page class methodsFor: 'as yet unclassified' stamp: 'DF 7/7/2025 16:07:12'!
PageSize
	"answer number of lines in page "
	
	^3! !

!KaeruEditorMorph methodsFor: 'events' stamp: 'DF 7/12/2025 15:29:14'!
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
					"machine creepRight" ]
				ifFalse:[
					leapLeftDown
						ifTrue:[
							"machine creepLeft" ] ].
			self leap. 
			self scrollToCursor ].
	
	state = #editing and: [ leapRightDown or: [ leapLeftDown ] ] ::
		ifTrue:[
			state := #init].
	
	"Transcript show: ('key: down. state: {1}. code: {5} . leap again: {2}. leap left:{3} . leap right:{4} ' format:{ state . leapAgainDown . leapLeftDown . leapRightDown . aMorphicEvent keyValue }); cr."

! !

!KaeruEditorMorph methodsFor: 'events' stamp: 'DF 7/12/2025 22:24:01'!
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
					machine insert: Character cr ].
			mapper isPageBreakKey: aKeyboardEvent ::
				ifTrue:[
					machine insert: Character newPage ].
			mapper isEraseKey: aKeyboardEvent ::
				ifTrue:[
					self erase]
				ifFalse:[ 
					keyv > 31
						ifTrue:[ | cc |
							cc := Character codePoint: keyv.
							machine insert: cc ] ] ].
	
	state = #init and: [keyv < 128 ] :: 
		ifTrue:[
			machine clearPattern.
			match := true.
			machine storeCursor.
			state := #building ].
			
	state = #building and:[keyv < 128] and:[match] ::
		ifTrue:[
			machine patternPut: (Character codePoint:keyv).
			match := self leap.
			match 
				ifFalse:[
					machine restoreCursor ] ].
	
	self scrollToCursor.
"	
	self removeAlarm: #autoSave.
	
	self addAlarm: #autoSave after: 3*60*1000."  "3 min. in millisec"
! !

!KaeruEditorMorph methodsFor: 'events' stamp: 'DF 5/31/2025 12:32:56'!
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

!KaeruEditorMorph methodsFor: 'events' stamp: 'DF 6/5/2025 18:55:06'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self activeHand newKeyboardFocus: self! !

!KaeruEditorMorph methodsFor: 'events' stamp: 'DF 6/5/2025 18:55:17'!
mouseEnter: aMouseButtonEvent

	self activeHand newKeyboardFocus: self! !

!KaeruEditorMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 18:51:34'!
onBlinkCursor
	
	"Blink the cursor"
	
	showCursor := showCursor not.
	
	textCursorRect ifNotNil:[:r | self invalidateLocalRect: r].
! !

!KaeruEditorMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 17:35:36'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: 500.
	! !

!KaeruEditorMorph methodsFor: 'blinking' stamp: 'DF 5/11/2025 17:20:55'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		textCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]]! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 7/12/2025 22:59:25'!
drawCursorOn: aCanvas

	| xcursor ycursor |

	ycursor := dy * (machine cursor line heightFrom: wbegin line).
	
	"A line that ends a page occupies two lines, its text is in the top line "
	
	"machine cursor line isLastInPage
		ifTrue:[
			ycursor := ycursor + dy].
"
	"draw the blinking gray part "
			
	xcursor := dx * (machine cursor index) + (dx * machine leftMargin).
	
	machine isCursorNarrow ifTrue:[xcursor := xcursor - dx].
	
	textCursorRect := xcursor@ycursor extent: dx@dy.

	aCanvas fillRectangle: textCursorRect  color: cursorColor.
	
! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 7/12/2025 20:54:41'!
drawOn: aCanvas

	[ | selection yy wend |
		
	self assert: machine notNil.
	
	super drawOn: aCanvas.

	wend := self wend.

	selection := (wbegin to: wend) intersect: machine selection expand.
	
	selection isEmpty
		ifTrue:[
			self drawOn:aCanvas textFrom: wbegin to: wend atHeight:0 highlight: false color: Color black]

		ifFalse:[ 			
			yy := self drawOn: aCanvas textFrom: wbegin to: selection begin atHeight: 0 highlight: false color: Color black.
	
			yy := self drawOn: aCanvas textFrom: selection begin to: selection end atHeight: yy highlight: true color: Color white.
			self drawOn: aCanvas textFrom: selection end to: wend atHeight: yy highlight: false color: Color black ].

	showCursor 
		ifTrue:[self drawCursorOn: aCanvas ] 
	]
	on: AssertionFailure do:[:ex | self drawingFails. self halt.].
	! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 7/12/2025 23:03:41'!
drawOn: aCanvas at: aNumberHeight color: aColor highlight: aBoolean from: anAddressB to: anAddressE 

	| yy nn |
	
	self assert: (anAddressB line == anAddressE line or: [ anAddressB line next == anAddressE line and: [ anAddressE index = 1 ] ]).
	
	nn := anAddressB line == anAddressE line
		ifTrue:[anAddressE index - anAddressB index]
		ifFalse:[anAddressB line length + 1 - anAddressB index ].
			
	yy := aNumberHeight.
			
	aBoolean
		ifTrue:[ | xb |
			xb := dx * (anAddressB index - 1) + (dx * machine leftMargin).
			aCanvas fillRectangle: (xb @ yy extent: (dx * nn) @ dy) color: Color black].
		
	aCanvas drawString: (machine textFrom: anAddressB to: anAddressE) at: dx * (anAddressB index - 1) + (dx * machine leftMargin) @ yy font: font color: aColor.

	anAddressB line endsWithPageSeparator  
		ifTrue:[
			aCanvas drawString: (Character codePoint:182) asString at:dx * (anAddressB line length - 1) + (dx * machine leftMargin) @ yy font: font color: aColor ].

	anAddressB line isLastInPage
		ifTrue:[ 
			yy := yy + dy.
			self drawOn: aCanvas page: anAddressB line page breakAt: yy. ].
	
	^  anAddressE line ~= anAddressB line
		ifTrue:[yy + dy]
		ifFalse:[aNumberHeight]
		
		
! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 7/12/2025 23:05:43'!
drawOn: aCanvas page: aPage breakAt: aNumberHeight

	| hh |
	
	hh := aNumberHeight + (0.25*dy).
	aCanvas fillRectangle: (0@hh extent: self morphWidth @ (dy / 2.0)) color: (Color fromHexString:'#BBBBBB').
	
	aCanvas drawString: ('{1}' format:{aPage pageNumber}) atCenterX: (self morphWidth / 2.0 @ (hh - (0.125*dy))) font: pageNumberFont color: Color black.
! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 7/12/2025 21:30:36'!
drawOn: aCanvas textFrom: addrB to: addrE atHeight: hh highlight: aBoolean color: aColor

	| yy addr |

	addr := addrB.
	yy := hh.
	
	[ addr line ~= addrE line ] whileTrue:[
		
		yy := self drawOn: aCanvas at: yy color: aColor highlight: aBoolean from: addr to: addr nextLine.		
		addr := addr nextLine ].

	^addrE index = 1
		ifTrue:[yy]
		ifFalse:[
			self drawOn: aCanvas at: yy color: aColor highlight: aBoolean from: addr to: addrE]
! !

!KaeruEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 7/12/2025 21:22:25'!
erase

	| selection bb ee |
	
	" If the selection we are about to erase includes wbegin we must set wbegin to 
	the line immediately after the erased lines.
	"
	
	selection := machine selection.
	
	bb := selection begin line.
	ee := selection end line.
	
	[ bb ~= wbegin line and: [bb ~= ee ] ] 
		whileTrue:[ bb := bb next ].
	
	machine erase.
	
	bb == wbegin line
		ifTrue:[
			wbegin := Address fromLine:machine cursor line index:1 ].
! !

!KaeruEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 19:27:20'!
leap

	^leapLeftDown 
		ifTrue:[
			machine pattern first = Character newPage 
				ifTrue:[
					machine "leapBackToPage" ]
				ifFalse:[
					machine leapLeft] ]
		ifFalse:[
			leapRightDown
				ifTrue:[
					machine pattern first = Character newPage 
						ifTrue:[
							machine "leapForwardToPage" ]
						ifFalse:[
							machine leapRight] ]
				ifFalse:[
					self assert: false. "we must not leap when both alts are pressed" ] ].
			
	
! !

!KaeruEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 18:51:13'!
machine: aKaeruEditor

	machine := aKaeruEditor.

	pageWidth := machine width.
	
	wbegin := machine begin.
	
	self scrollToCursor ! !

!KaeruEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 22:24:51'!
wend

	| pp ii |
	
	pp := wbegin.
	
	ii := 0.
	
	[ii < wsize and:[pp line isSentinel not] ] whileTrue:[
		ii := ii + pp line height.
		pp := pp nextLine ].
	
	^pp! !

!KaeruEditorMorph methodsFor: 'scrolling' stamp: 'DF 7/11/2025 19:30:39'!
scrollBackwardToCursor

	[ wbegin line = machine cursor line ] whileFalse:[wbegin := wbegin prevLine ].
	
! !

!KaeruEditorMorph methodsFor: 'scrolling' stamp: 'DF 7/11/2025 23:27:36'!
scrollForwardToCursor

	| ii pp |
	
	pp := machine cursor line.
	
	ii := pp height - 1.	

	[ pp prev isSentinel not and:[ii <( wsize - 1)]  ] whileTrue:[pp := pp prev. ii := ii + pp height. ].
	
	" pp prev isNil and pp notNil and ii = distance[pp,line] and pp prev isNil or ii = wsize "
	
	" pp notNil and ii = distance[pp,line] and ii <= wsize "
	
	"pp notNil and distance[pp,line] <= wsize"
	
	wbegin := Address fromLine: pp index:1.! !

!KaeruEditorMorph methodsFor: 'scrolling' stamp: 'DF 7/12/2025 13:45:59'!
scrollToCursor

	"
	look for the cursor within the window, if found there is no need to scroll.
	
	"
	
	| pp ii |
	
	"if wbegin is a sentinel it means that the text was empty and an insert adds the first real line to the text."
	
	wbegin line isSentinel ifTrue:[
		wbegin := machine begin ].
	
	pp := wbegin.
	
	ii := 0.
	
	[ii < wsize and:[pp line isSentinel not] and: [pp line ~= machine cursor line ] ] whileTrue:[
		ii := ii + pp line height.
		pp := pp nextLine ].
	
	ii < wsize and: [pp line = machine cursor line] :: ifTrue:[^self].
	
	" otherwise, see where to scroll "
	
	self wend line precedes: machine cursor line ::
		ifTrue:[
			^self scrollForwardToCursor ].
		
	machine cursor line precedes: wbegin line ::
		ifTrue:[
			^self scrollBackwardToCursor ].
		
		! !

!KaeruEditorMorph methodsFor: 'event handling testing' stamp: 'DF 5/11/2025 19:27:43'!
handlesKeyboard
	^true! !

!KaeruEditorMorph methodsFor: 'event handling testing' stamp: 'DF 5/12/2025 21:45:09'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!KaeruEditorMorph methodsFor: 'event handling testing' stamp: 'DF 6/5/2025 18:54:45'!
handlesMouseOver:aMouseButtonEvent
	^true! !

!KaeruEditorMorph methodsFor: 'initialization' stamp: 'DF 7/11/2025 18:47:29'!
initialize

	super initialize. 
	
	mapper := KaeruKeyboardMapper instance.
	
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

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 18:14:14'!
Erase
	^8! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:15'!
LeftAlt
	^152! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:51'!
LeftCtrl
	^222! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 19:10:02'!
NewLine
	^13! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 21:13:12'!
Page
	^12! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:31'!
RightAlt
	^136! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:27:02'!
RightCtrl
	^221! !

!TestAddressRange methodsFor: 'as yet unclassified' stamp: 'DF 7/12/2025 19:45:48'!
testIntersection

	| text aFrogEditor bb ee |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.

	bb := aFrogEditor begin.
	ee := bb inc inc.
	
	self assert: ee char = Character space.
	
	self halt.
	
	self assert: ((bb to:ee) intersect: (aFrogEditor begin to: aFrogEditor end)) = (bb to:ee).
	
	self assert: (bb to:bb) isEmpty
	! !

!TestKaeruEditor methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 22:51:44'!
testHighlight

	| text aKaeruEditor |
		
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aKaeruEditor := KaeruEditor new.

	aKaeruEditor insertAll: text.
	
	'when' do:[:eachChar | aKaeruEditor patternPut:eachChar ].
	
	aKaeruEditor leapRight.
	
	aKaeruEditor clearPattern.
	
	'have' do:[:eachChar | aKaeruEditor patternPut:eachChar ].
	
	aKaeruEditor leapRight.
	
	aKaeruEditor highlight.
	
	self assert: aKaeruEditor selectionText = 'when to wish was to '.
! !

!TestKaeruEditor methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 22:52:15'!
testMoveHighlight

	| text aKaeruEditor |
		
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aKaeruEditor := KaeruEditor new.

	aKaeruEditor insertAll: text.
	
	'when' do:[:eachChar | aKaeruEditor patternPut:eachChar ].
	
	aKaeruEditor leapRight.
	
	aKaeruEditor clearPattern.
	
	'have' do:[:eachChar | aKaeruEditor patternPut:eachChar ].
	
	aKaeruEditor leapRight.
	
	aKaeruEditor highlight.
	
	self assert: aKaeruEditor selectionText = 'when to wish was to '.

	text :=  'In olden times, have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a when to wish was to little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKaeruEditor clearPattern.
	
	' little' do:[:eachChar | aKaeruEditor patternPut:eachChar ].

	aKaeruEditor leapRight.
	
	self assert: aKaeruEditor text = text.
	! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/9/2025 18:49:16'!
abstractIndexOf: anAddress base: anInitialAddress

	^(anAddress distanceFrom: anInitialAddress) + 1
	! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 18:55:40'!
allTextIn: aFrogEditor

	^aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 18:53:05'!
fill: aFrogEditor with: aString

	| bb |
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	aString do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: aFrogEditor invariant.
! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 18:53:25'!
goto: anIndex from: anAddress

	| pp |
	
	pp := anAddress.
	
	anIndex timesRepeat:[
		pp := pp inc
	].

	^pp! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:05:37'!
testErase

	| text aFrogEditor bb ee pp |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.

	bb := aFrogEditor begin.
	ee := bb inc inc.
	
	self assert: ee char = Character space.
		
	aFrogEditor eraseFrom:bb to: ee.

	self assert: aFrogEditor invariant.
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= (text copyReplaceFrom: 1 to: 2 with: '').
	
	bb := aFrogEditor begin.
	
	ee := bb.
	
	[ee char ~= $w] whileTrue:[ee := ee inc].
	
	self assert: (self abstractIndexOf: ee base: aFrogEditor begin :: = 15).
		
	pp := aFrogEditor eraseFrom:bb to:ee.
	
	self assert: (self abstractIndexOf: pp base: aFrogEditor begin :: = 1).

	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= (text copyReplaceFrom: 1 to: 16 with: '').
	
	self assert: aFrogEditor invariant.
	
! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:06:36'!
testEraseError

	| text aFrogEditor ab ae cb ce pp |
	
	text :='Inmes, whwahery.'.
	
	aFrogEditor := KaeruTextRepository new.
	 
	aFrogEditor leftMargin:8 ; rightMargin: 16.

	cb := aFrogEditor begin.
	
	text do:[:each | 
		cb := aFrogEditor insert: each after: cb].
	
	self assert: aFrogEditor invariant.

	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.
	
	ab := 7.
	
	ae := 14.
	
	cb := self goto:ab from: aFrogEditor end.
	
	self assert: ab = (self abstractIndexOf: cb base: aFrogEditor  begin).
	
	ce := self goto: ae from: aFrogEditor end.
	
	self assert: ae = (self abstractIndexOf: ce base: aFrogEditor  begin).
		
	pp := aFrogEditor eraseFrom:cb to: ce.
	
	self assert: aFrogEditor invariant.
	
	self assert: (self abstractIndexOf: pp base: aFrogEditor begin) = ab. 
	! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:06:40'!
testEraseFullLines

	| text aFrogEditor bb ee pp |
	
	text := '12345678abcdefgh12345678ABCDEFGH'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.

	self assert: aFrogEditor invariant.

	bb := aFrogEditor begin.
	
	7 timesRepeat:[bb := bb inc].
	
	self assert: bb char = $8.
	
	self assert: (self abstractIndexOf: bb base: aFrogEditor begin) = 8.
	
	ee := bb inc inc.
	
	self assert: ee char = $b.
	
	pp := aFrogEditor eraseFrom: bb to:ee.
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= '1234567bcdefgh12345678ABCDEFGH'.
	
	self assert: (self abstractIndexOf: pp base: aFrogEditor begin) = 8.

	self assert: aFrogEditor invariant.
	
	
		! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:06:45'!
testInitialize

	| aFrogEditor |
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:06:48'!
testInsert

	| aFrogEditor bb pp |
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	pp := aFrogEditor insert: $1 after: bb.

	self assert: aFrogEditor invariant.

	self assert: pp char = $1.
	
	bb := bb inc.
	
	pp := aFrogEditor insert: $2 after: bb.

	self assert: aFrogEditor invariant.

	self assert: pp char = $2.

	bb := bb inc.
	
	pp := aFrogEditor insert: $3 after: bb.

	self assert: aFrogEditor invariant.
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end) = '123'.

	self assert: pp char = $3.
	
	aFrogEditor insert: Character lf after: bb.

	self assert: aFrogEditor invariant.

	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end) = '12
3'.

	bb := bb inc inc.
	
	' abc def' do:[:each | 
		aFrogEditor insert: each after:bb.
		self assert: aFrogEditor invariant.
		bb := bb inc.].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end) = '12
3 abc def'.

	self assert: aFrogEditor invariant.
	
	 bb := aFrogEditor begin. 
	
	9 timesRepeat:[bb := bb inc] . 
	
	self assert: bb char = $d.
	
	aFrogEditor insert: Character space after: bb.
	
	
	! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:06:52'!
testInsertLargeText

	| text aFrogEditor bb |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.
		
	self assert: aFrogEditor invariant.


! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:06:55'!
testInsertPages

	| text aFrogEditor bb |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful.'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.
		
	self assert: aFrogEditor invariant.


! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:07:00'!
testInsertUnpack

	| aFrogEditor bb ee |
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	'123 56789' do:[:each |
		bb := aFrogEditor insert: each after: bb].

	self assert: aFrogEditor invariant.

	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end) = '123 56789'.

	self assert: bb char = $9.
	
	bb := bb dec dec.
	
	self assert: bb char = $7.
	
	bb := aFrogEditor insert: Character lf after: bb.
	
	self assert: bb char = Character lf.
	
	bb := bb inc.
	ee := bb.
	
	'abcdefgh' do:[:each |  ee := aFrogEditor insert: each after:ee ].
	
	self assert: aFrogEditor invariant.
	
	self assert: ee char = $h.
	
	self assert: (aFrogEditor textFrom:bb to: ee) = '8abcdefg'.
	
! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:07:04'!
testKissing

	| text aFrogEditor bb ee |
	
	text := 'In olden times, when to wish'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.

	bb := aFrogEditor begin.
	ee := bb.
	8 timesRepeat:[ee := ee inc].
	
	self assert: ee char = Character space.
	
	aFrogEditor eraseFrom:ee to: ee inc.
	
	self assert: aFrogEditor invariant.
! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/12/2025 16:38:22'!
testMatch

	| text aFrogEditor bb |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	self assert: (aFrogEditor match: 'In o' from: bb).
	
	9 timesRepeat:[ bb := bb inc ].
	
	self assert: (aFrogEditor match: 'times' from:bb).
	
! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/11/2025 12:07:10'!
testRandom

	| text aFrogEditor ii jj pp ab ae cb ce |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self fill: aFrogEditor with: text.
	
	self assert: aFrogEditor invariant.
	
	"select at random two indices ii, jj between 1 and text size + 1, "
	
	[ text isEmpty ] whileFalse:[
		ii := (text size + 1) atRandom.
		
		jj := (text size + 1) atRandom.
		
		"move to the same location in both concrete and abstract systems. "
		
		ab :=  ii min: jj. ae := ii max: jj.
		
		cb := self goto:ab from: aFrogEditor end.
		
		self assert: ab = (self abstractIndexOf: cb base: aFrogEditor begin).
		
		ce := self goto: ae from: aFrogEditor end.
		
		self assert: ae = (self abstractIndexOf: ce base: aFrogEditor begin).
		
		"erase the parts at both the abstract and concrete sytems. "
		
		pp := aFrogEditor eraseFrom: cb to: ce.

		self assert: aFrogEditor invariant.
			
		text := text eraseFrom:ab to:ae.
		
		"check that the abstract and concrete systems correspond"
		
		self assert: text  = (self allTextIn: aFrogEditor).
		
		self assert: (self abstractIndexOf: pp base: aFrogEditor begin) = ab. ]

	! !

!TestKaeruTextRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/12/2025 15:59:43'!
testSearch

	| text aFrogEditor bb pp qq |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := KaeruTextRepository new.
	
	aFrogEditor leftMargin:8 ; rightMargin: 16.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.

	pp := aFrogEditor searchRight: 'splashed' from: bb.
	
	self assert: pp ~= bb.

	qq := pp.
	
	'splashed' size timesRepeat:[qq := qq inc].
	
	self assert: (aFrogEditor textFrom: pp to: qq) = 'splashed'.
	
	self assert: (aFrogEditor searchRight: 'splazhed' from: bb) = bb.
	
	self assert: (aFrogEditor searchLeft: 'splashed' from:bb) ~= bb.

	self assert: (aFrogEditor searchLeft: 'splaxhed' from:bb) = bb.
	
! !

!CharacterSequence methodsFor: '*FrogEditor-unittest' stamp: 'DF 6/19/2025 18:35:16'!
eraseFrom: bIndex to: eIndex

	^ self copyReplaceFrom: bIndex to: eIndex - 1 with: ''! !

!Character methodsFor: '*FrogEditor' stamp: 'DF 7/11/2025 19:12:15'!
isPageSeparator

	^self codePoint = 12 "form feed"! !
