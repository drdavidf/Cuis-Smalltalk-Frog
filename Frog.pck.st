'From Cuis7.3 [latest update: #7041] on 16 May 2025 at 7:13:20 pm'!
'Description '!
!provides: 'Frog' 1 251!
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

!classDefinition: #Line category: #Frog!
Object subclass: #Line
	instanceVariableNames: 'text prev next'
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
	instanceVariableNames: 'paragraphs prev next'
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
	instanceVariableNames: 'lines cursor beginh endh width pattern pcursor pbeginh pendh'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WordProcessorMachine class' category: #Frog!
WordProcessorMachine class
	instanceVariableNames: ''!

!classDefinition: #WPRuler category: #Frog!
BorderedBoxMorph subclass: #WPRuler
	instanceVariableNames: 'rulerFont machine dx statusFont rulerCursorRect showCursor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WPRuler class' category: #Frog!
WPRuler class
	instanceVariableNames: ''!

!classDefinition: #WPTextMorph category: #Frog!
BorderedBoxMorph subclass: #WPTextMorph
	instanceVariableNames: 'font machine dy wbegin wsize showCursor textCursorRect dx cursorColor leftAltDown rightAltDown ctrlDown state match rulerCursorRect'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WPTextMorph class' category: #Frog!
WPTextMorph class
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

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:41:30'!
index
	^index! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 17:35:16'!
index: aNumber

	self assert: aNumber > 0.
	
	index := aNumber! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 19:53:50'!
isFirst
	^ line prev isNil and: [index = 1]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 17:52:49'!
isInvalidOffset: aNumber

	self assert: aNumber >= 0.
	
	^line next isNil and:[index + aNumber > (line text size)]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 19:26:08'!
isPastLast
	^ line next isNil and:[index = (line text size + 1) ]! !

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

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 16:03:24'!
pastLastLine

	| pp |
	
	pp := line.
	
	[ pp next isNil ] whileFalse:[
		pp := pp next].
	
	^ Address new line: pp ; index: pp text size + 1 ; yourself.
	
	! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 21:34:22'!
to: anAddress

	self assert: self <= anAddress.
	
	^AddressRange new begin: self; end: anAddress; yourself.! !

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

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:35:16'!
intersect: anAddressRange

	| commonLines beginIndex endIndex |
	
	commonLines :=  self lineRange intersect: anAddressRange lineRange.
	
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

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:22:17'!
invariant

	^ (begin isNil and: end isNil) or:[begin <= end]! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 20:24:30'!
lineRange
	^begin line to: end line! !

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

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 17:04:23'!
distanceFrom: aLine

	| pp ii |
	
	self assert: (self precedes: aLine).
	
	pp := self.
	ii := 0.
	
	[pp notNil and: [pp == aLine]] whileFalse:[
		ii := ii + 1.
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

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 15:54:47'!
invariant

	^(prev isNil or:[prev next == self ]) and:[next isNil or:[next prev == self ] ]! !

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

!Line methodsFor: 'accessing' stamp: 'DF 5/8/2025 15:47:52'!
next
	^next! !

!Line methodsFor: 'accessing' stamp: 'DF 5/8/2025 15:49:09'!
next: aLine
	next := aLine! !

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

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:41'!
initialize

	paragraphs := Paragraph new! !

!Paragraph methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:54'!
initialize

	lines := Line new! !

!WordProcessor class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 17:38:49'!
open: aWordProcessorMachine

	|  root top text bottom ruler dx dy aFont leftm |

	aFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 14.

	dx := aFont widthOf:$M.
	
	dy := aFont lineSpacing.
	
	leftm := 1024 - (80 * dx).
	
	root := LayoutMorph newColumn.

	root morphExtent: 1024@600.

	top := LayoutMorph newRow.

	top padding: (leftm / 2)@0"10.55".

	top color: Color red.
	
	text := WPTextMorph new.

	text morphExtent: 80*dx @ (dy * 18).
	
	text machine: aWordProcessorMachine.

	text layoutSpec offAxisEdgeWeight: 1.0.
		
	top addMorph: text.

	bottom := LayoutMorph newColumn.

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

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/15/2025 19:29:22'!
invariant

	| pp |
	
	beginh line isNil
		ifTrue:[^false].
		
	endh line isNil
		ifTrue:[^false].
		
	beginh <= endh
		ifFalse:[^false].
	
	pp := lines.
	
	[pp notNil and: [pp invariant] ] whileTrue:[pp := pp next].
	
	^pp isNil
	
	! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/15/2025 19:31:18'!
isExtendedCursor
	^ beginh < endh and: [ endh forward = cursor]! !

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

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 15:17:46'!
highlight

	self assert: pcursor notNil.
	
	beginh := cursor min: pcursor.
	endh := cursor max: pcursor.
	
	cursor := endh forward.
	
	self assert: beginh <= endh.
	
	self triggerEvent: #cursor.! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 17:45:32'!
leapLeft

	| p |
	
	pattern ifEmpty:[^false].
	
	p := cursor.
	
	" leap back "
	
	[p isFirst not and: [p isInvalidOffset: pattern size - 1]] whileTrue:[
		p := p back].
	
	[ p isFirst or: [ self matchBackFrom: (p advanceBy: (pattern size - 1))  ] ] whileFalse:[
		p := p back ].

	(p isFirst) 
		ifFalse:[
			self setNarrowCursorTo: p.
			^true].
		
	" we did not find it going back towards the beginning. now start from the end 
	and stop when reaching cursor"
	
	p := p pastLastLine back.
	
	[ p = cursor or: [self matchBackFrom: p  ] ] whileFalse:[
		p := p back ].
	
	(p = cursor)
		ifFalse:[
			self setNarrowCursorTo: p - (pattern size - 1).
			^true].

	^false! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 17:45:45'!
leapRight

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

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/16/2025 17:45:54'!
matchBackFrom: anAddress

	| p ii |
	
	p := anAddress.

	ii := pattern size.
		
	[ ii  = 0 or: [ p isFirst ] or: [ p char ~= (pattern at: ii) ] ] whileFalse:[
		ii := ii - 1.
		p := p back ].
	
	^ ii = 0
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

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/16/2025 16:18:41'!
cursorLineNumber

	| pp ii |
	
	pp := lines.
	ii := 1.
	
	[ pp ~= cursor line ] whileTrue:[
		pp := pp next.
		ii := ii + 1].
	
	^ii! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/8/2025 17:04:36'!
lines
	^lines! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/15/2025 21:33:19'!
selection

	self assert: beginh notNil.
	
	self assert: endh notNil.
	
	^ beginh to: endh ! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/11/2025 16:06:39'!
width: anInteger

	self assert: anInteger > 0.
	
	width := anInteger! !

!WordProcessorMachine methodsFor: 'initialization' stamp: 'DF 5/16/2025 17:47:37'!
initialize

	width := 8. "maximum number of characters in a line"
	
	lines := Line new.
	
	cursor := lines at:1.
	
	beginh := cursor.
	endh := cursor.
! !

!WordProcessorMachine methodsFor: 'editing' stamp: 'DF 5/16/2025 18:23:24'!
erase

	| aWriteStream p uu vv bb |
	
	uu := self textFrom: self begin to: beginh.
	
	vv := self textFrom: endh forward to: self end.
	
	aWriteStream := WriteStream on: ''.
	
	" copy the parts that we do not erase and then proceed to collect into the stream
	all the lines until a line that ends with a line separator (or until the last line) "
	
	aWriteStream nextPutAll: (beginh line text copyFrom: 1 to: beginh index - 1).
	
	aWriteStream nextPutAll: (endh line text copyFrom: endh index + 1 to: endh line text size).
	
	p := endh line next.
	
	[p isNil or: [ p text notEmpty and: [p text last isLineSeparator ] ] ] whileFalse:[
		aWriteStream nextPutAll: p text.
		p := p next].
	
	p notNil
		ifTrue:[aWriteStream nextPutAll: p text].
		
	" clear beginh line and remove all the lines between beginh line next and p "
	
	beginh line eraseAll. 
	
	p isNil
		ifTrue:[
			beginh line next: nil]
		ifFalse:[
			beginh line next: p.
			p prev: beginh line].
	
	" finally insert the text back into place "
	
	cursor := Address new line: beginh line ; index: 1 ; yourself.

	bb := beginh copy. "remember beginh because self insert: messes with beginh"
		
	self insert: aWriteStream contents.

	beginh := bb back.

	endh := beginh.

	cursor := bb.	
	
	self assert: (self textFrom: self begin to: self end) = (uu , vv).
	
	self triggerEvent: #cursor.! !

!WordProcessorMachine methodsFor: 'editing' stamp: 'DF 5/16/2025 15:18:09'!
insert: aString

	"insert aString right after cursor. Create new lines as needed. Move the cursor to point one character ahead of the inserted string."
	
	| line string pp |
	
	pp := cursor copy.
	
	line := cursor line.
	
	string := aString.
	
	[string notEmpty] whileTrue:[

		string := line insert: string after: cursor index - 1 width: width.

		string isEmpty
			ifTrue:[
				cursor index: line text size]
			ifFalse:[		
				line next ifNil:[ | aNewLine |
					aNewLine := Line new.
		
					self insert: aNewLine after: line].
		
				cursor := cursor nextLine.
		
				line := cursor line ] ].
	
		cursor := pp advanceBy: aString size.
		
		beginh := cursor back. endh := beginh.
		
		self triggerEvent: #cursor.
! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/9/2025 17:39:33'!
begin
	^Address new line: lines ; index:1 ; yourself! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/9/2025 17:40:02'!
end
	^self begin pastLastLine ! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/8/2025 15:55:05'!
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
	self assert: aNewLine invariant
	! !

!WordProcessorMachine methodsFor: 'private' stamp: 'DF 5/9/2025 15:25:57'!
lastLine
	
	| pp |
	
	pp := lines.
	
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

!WPRuler methodsFor: 'drawing' stamp: 'DF 5/16/2025 17:34:27'!
drawCursorOn: aCanvas

	| xcursor |
	
	" draw the cursor indicator in the ruler area"
	
	xcursor := (machine cursor index - 0.5) * dx  - 2.
	
	rulerCursorRect := xcursor@0 extent: 4@12.

	aCanvas fillRectangle: rulerCursorRect  color: Color white. 
! !

!WPRuler methodsFor: 'drawing' stamp: 'DF 5/16/2025 17:36:51'!
drawOn: aCanvas

	super drawOn: aCanvas.
		
	self drawRulerOn: aCanvas. 
	
	showCursor ifTrue:[
		self drawCursorOn: aCanvas].

	aCanvas drawString: (machine cursorLineNumber printStringBase: 10 length: 2 padded: false) at: dx@30 font: statusFont color: Color white.! !

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

!WPTextMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 18:51:34'!
onBlinkCursor
	
	"Blink the cursor"
	
	showCursor := showCursor not.
	
	textCursorRect ifNotNil:[:r | self invalidateLocalRect: r].
! !

!WPTextMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 17:35:36'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: 500.
	! !

!WPTextMorph methodsFor: 'blinking' stamp: 'DF 5/11/2025 17:20:55'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		textCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]]! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/16/2025 18:52:09'!
drawCursorOn: aCanvas

	| xcursor ycursor |
	
	ycursor := dy * (wbegin distanceFrom: machine cursor line).
	
	xcursor := dx * (machine cursor index) - dx.
	
	textCursorRect := xcursor@ycursor extent: dx@dy.

	aCanvas fillRectangle: textCursorRect  color: cursorColor.
	
! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/16/2025 18:36:40'!
drawHighlightOn: aCanvas

	| ycursor cc wycursor wxcursor |
	
	ycursor := dy * (wbegin distanceFrom: machine cursor line).
	
	cc := machine cursor back.
	wycursor := ycursor - (dy * (cc line distanceFrom: machine cursor line)).
	wxcursor := dx * (cc index) - dx.
	
	aCanvas fillRectangle: (wxcursor @ wycursor extent: dx@dy) color: Color black.
	aCanvas drawString: cc char asString at: wxcursor@wycursor  font: font  color: Color white
	
! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/16/2025 18:52:55'!
drawOn: aCanvas

	[
	self assert: machine notNil.
	
	super drawOn: aCanvas.
	
	self drawOn: aCanvas textFrom: (wbegin at:1) to: self wend atPastEnd atHeight: 0 highlight: false color: Color black.

	showCursor 
		ifTrue:[self drawCursorOn: aCanvas ].
	
	machine isWideCursor
		ifTrue:[self drawHighlightOn: aCanvas ] .
	
	machine isExtendedCursor 
		ifTrue:[self drawSelectionOn: aCanvas].

	]
	on: AssertionFailure do:[:ex | self drawingFails. self halt.].
	! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/16/2025 18:01:23'!
drawOn: aCanvas textFrom: addrB to: addrE atHeight: hh highlight: aBoolean color: aColor

	| yy ii line |

	yy := hh.	

	aBoolean ifTrue:[ | dd mid last xb xe |

		dd := addrB line distanceFrom: addrE line.
		mid := 0 max: dd - 1.
		last := 0 max: dd .

		xb := dx * (addrB index - 1).
		xe := last = 0 
			ifTrue:[
				dx * addrE index] 
			ifFalse:[
				self morphWidth].
		
		aCanvas fillRectangle: (xb @ hh corner: xe@ (hh+dy)) color: Color black.
	
		mid > 0
			ifTrue:[
				aCanvas fillRectangle: (0 @ (hh + dy) extent: self morphWidth@ (dy * mid)) color: Color black].
	
		last > 0
			ifTrue:[
				aCanvas fillRectangle: (0 @ (hh + (dy*last)) extent: (dx * addrE index) @ dy) color: Color black] ].
	
	" there is just one line to draw"
	
	addrB line = addrE line
		ifTrue:[
			aCanvas drawString: (addrB line text copyFrom: addrB index to: addrE index - 1) at: dx * (addrB index - 1) @ yy font: font color: aColor.
		^self ].
	
	" there are at least two lines to draw"
	
	" draw the text for the first line but only from the first index"
	
	aCanvas drawString: (addrB line text copyFrom: addrB index to: addrB line text size) at: dx * (addrB index -1) @ yy font: font color: aColor.

	line := addrB line next.
	yy := hh + dy.
	ii := 1.
	
	" draw the text for the middle lines"
	
	[ line ~= addrE line] whileTrue:[
		aCanvas drawString: line text at: 0@ yy font: font color: aColor.
		ii := ii + 1.
		yy := hh + (ii * dy).
		line := line next ].

	" draw the text for the last line "

	aCanvas drawString: addrE line text  at: 0 @ yy font: font color: aColor.
	! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/15/2025 22:30:23'!
drawSelectionOn: aCanvas

	| range |
	
	range := ((wbegin at:1) to: self wend atPastEnd) intersect: machine selection.
	
	self drawOn: aCanvas textFrom: range begin to: range end atHeight: dy * (wbegin distanceFrom: range begin line) highlight: true color: Color white.
	
! !

!WPTextMorph methodsFor: 'initialization' stamp: 'DF 5/16/2025 14:03:01'!
initialize

	super initialize. 
	
	color := Color white.
	
	font := FontFamily familyName: 'CMU Typewriter Text' pointSize: 14.
	
	dy := font lineSpacing.
	
	dx := font widthOf:$M.
	
	wsize := 17.
	
	showCursor := true.
	
	cursorColor := Color fromHexString: '#AAAAAA'.
	
	leftAltDown := false.

	rightAltDown := false.

	ctrlDown := false.

	state := #editing.

	match := true.! !

!WPTextMorph methodsFor: 'events' stamp: 'DF 5/16/2025 19:11:15'!
keyDown: aMorphicEvent

	| keyv |
	
	keyv := aMorphicEvent keyValue.

	keyv = WPTextMorph LeftAlt
		ifTrue:[ leftAltDown := true].

	keyv = WPTextMorph RightAlt
		ifTrue:[ rightAltDown := true].

	keyv = WPTextMorph RightCtrl or:[keyv = WPTextMorph LeftCtrl] ::
		ifTrue:[ ctrlDown := true].

	rightAltDown and: [ leftAltDown ] ::
		ifTrue:[
			machine highlight.
			self redrawNeeded ].
	
	rightAltDown = false and: [ leftAltDown = false ] ::
		ifTrue:[
			state := #editing].
	
	state = #editing and: [ rightAltDown or: [ leftAltDown ] ] ::
		ifTrue:[
			state := #init].
	
	state = #editing and: [keyv < 128 ] ::
		ifTrue:[
			keyv = WPTextMorph NewLine
				ifTrue:[
					machine insert: String crString].
			keyv = WPTextMorph Erase
				ifTrue:[
					machine erase]
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
	
	state = #init and: [ ctrlDown ] ::
		ifTrue:[
			rightAltDown
				ifTrue:[
					machine creepRight]
				ifFalse:[
					leftAltDown
						ifTrue:[
							machine creepLeft] ].
			self leap ].
		
	state = #building and:[keyv < 128] and:[match] ::
		ifTrue:[
			machine patternPut: keyv.
			match := self leap.
			match 
				ifFalse:[
					machine popCursor ]	].
	
	self scrollToCursor.
			
	Transcript show: ('key: down. 	state: {5}. code: {1}. ctrl: {2}. left alt:{3} . right alt:{4} ' format:{ keyv . ctrlDown . leftAltDown . rightAltDown . state }); cr
	! !

!WPTextMorph methodsFor: 'events' stamp: 'DF 5/16/2025 17:58:36'!
keyUp: aMorphicEvent

	| keyv |
	
	keyv := aMorphicEvent keyValue.
	
	keyv = WPTextMorph LeftAlt
		ifTrue:[ leftAltDown := false].

	keyv = WPTextMorph RightAlt
		ifTrue:[ rightAltDown := false].

	keyv = WPTextMorph RightCtrl or:[keyv = WPTextMorph LeftCtrl] ::
		ifTrue:[ ctrlDown := false].

	rightAltDown = false and: [ leftAltDown = false ] ::
		ifTrue:[
			state := #editing].
			
	Transcript show: ('key: up. 	state: {5}. code: {1}. ctrl: {2}. left alt:{3} . right alt:{4} ' format:{ keyv . ctrlDown . leftAltDown . rightAltDown . state }); cr.
	
	"self scrollToCursor."
		
	self redrawNeeded 
! !

!WPTextMorph methodsFor: 'events' stamp: 'DF 5/12/2025 22:54:27'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self world activeHand newKeyboardFocus: self! !

!WPTextMorph methodsFor: 'event handling testing' stamp: 'DF 5/11/2025 19:27:43'!
handlesKeyboard
	^true! !

!WPTextMorph methodsFor: 'event handling testing' stamp: 'DF 5/12/2025 21:45:09'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!WPTextMorph methodsFor: 'scrolling' stamp: 'DF 5/13/2025 15:53:46'!
scrollBackwardToCursor

	[ wbegin = machine cursor line ] whileFalse:[wbegin := wbegin prev ].
	
! !

!WPTextMorph methodsFor: 'scrolling' stamp: 'DF 5/13/2025 15:42:13'!
scrollForwardToCursor

	| ii pp |
	
	pp := machine cursor line.
	
	ii := 0.
	

	[ pp prev notNil and:[ii < wsize]  ] whileTrue:[pp := pp prev. ii := ii + 1. ].
	
	" pp prev isNil and pp notNil and ii = distance[pp,line] and pp prev isNil or ii = wsize "
	
	" pp notNil and ii = distance[pp,line] and ii <= wsize "
	
	"pp notNil and distance[pp,line] <= wsize"
	
	wbegin := pp.! !

!WPTextMorph methodsFor: 'scrolling' stamp: 'DF 5/16/2025 19:12:55'!
scrollToCursor

	"
	look for the cursor within the window, if found there is not need to scroll.
	
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

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 17:04:45'!
leap

	^leftAltDown 
		ifTrue:[
			machine leapLeft]
		ifFalse:[
			rightAltDown
				ifTrue:[
					machine leapRight]
				ifFalse:[
					self assert: false. "we must not leap when both alts are pressed" ] ].
			
	
! !

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 15:53:35'!
machine: aWPMachine

	machine := aWPMachine.
	
	wbegin := machine begin line.
	
	self scrollToCursor ! !

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/15/2025 19:56:54'!
wend

	| pp ii |
	
	pp := wbegin.
	
	ii := 0.
	
	[ii < wsize and:[pp next notNil] ] whileTrue:[
		ii := ii + 1.
		pp := pp next].
	
	^pp! !

!WPTextMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 18:14:14'!
Erase
	^8! !

!WPTextMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:15'!
LeftAlt
	^152! !

!WPTextMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:51'!
LeftCtrl
	^222! !

!WPTextMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 19:10:02'!
NewLine
	^13! !

!WPTextMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:31'!
RightAlt
	^136! !

!WPTextMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:27:02'!
RightCtrl
	^221! !

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

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 15:52:48'!
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

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 15:52:48'!
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
