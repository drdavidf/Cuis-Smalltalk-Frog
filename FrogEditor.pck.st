'From Cuis7.3 [latest update: #6895] on 14 June 2025 at 12:54:07 pm'!
'Description '!
!provides: 'FrogEditor' 1 35!
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

!classDefinition: #FrogEditor category: #FrogEditor!
Object subclass: #FrogEditor
	instanceVariableNames: 'end width'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'FrogEditor class' category: #FrogEditor!
FrogEditor class
	instanceVariableNames: ''!

!classDefinition: #Line category: #FrogEditor!
Object subclass: #Line
	instanceVariableNames: 'next prev text'
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

!classDefinition: #TestFrogEditor category: #FrogEditor!
TestCase subclass: #TestFrogEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!
!classDefinition: 'TestFrogEditor class' category: #FrogEditor!
TestFrogEditor class
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

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 20:25:15'!
dec
	^index > 0
		ifTrue:[
			Address fromLine: line index: index - 1]
		ifFalse:[
			Address fromLine: line prev index: line prev length]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:55:09'!
hash

	^(line hash hashMultiply + index hash) hashMultiply! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 15:15:40'!
inc
	^index < line length
		ifTrue:[
			Address fromLine: line index: index+1]
		ifFalse:[
			Address fromLine: line next index: (line next isSentinel ifTrue:[0] ifFalse:[1])]! !

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

!Address class methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:18:53'!
fromLine: aLine index: anInteger

	^Address new line: aLine; index: anInteger ; yourself! !

!FrogEditor methodsFor: 'testing' stamp: 'DF 6/12/2025 11:36:04'!
invariant

	| pp |
	
	pp := end.
	
	pp invariant: width :: ifFalse:[^false].
	
	pp := pp next.
	
	[pp isSentinel not and: [pp invariant:width ] ] whileTrue:[pp := pp next ].
	
	^pp isSentinel! !

!FrogEditor methodsFor: 'accessing' stamp: 'DF 6/12/2025 14:29:21'!
begin
	^self end inc! !

!FrogEditor methodsFor: 'accessing' stamp: 'DF 6/12/2025 11:20:06'!
end
	^Address fromLine: end index: 0! !

!FrogEditor methodsFor: 'accessing' stamp: 'DF 6/12/2025 11:34:47'!
width: anInteger

	self assert: anInteger > 0.
	
	width := anInteger.! !

!FrogEditor methodsFor: 'initialization' stamp: 'DF 6/12/2025 11:34:27'!
initialize

	end := Sentinel new.
	end next: end.
	end prev: end.! !

!FrogEditor methodsFor: 'private' stamp: 'DF 6/14/2025 12:05:43'!
eraseLinesFrom: bLine to: eLine

	"erase all the lines from bLine to eLine not including eLine. 
	
	Note that if bLine == eLine then this operation is a skip "
	
	bLine prev next: eLine.
	eLine prev: bLine prev.
	! !

!FrogEditor methodsFor: 'private' stamp: 'DF 6/13/2025 19:05:23'!
insertAtStart: aCharacter 

	end next = end "the text is empty"
		ifTrue:[
			end insertNewLine ].

	end next insert: aCharacter asString at: 1.
		
	^Address fromLine: end next index: 1.
		
		
	
	! !

!FrogEditor methodsFor: 'private' stamp: 'DF 6/14/2025 10:52:10'!
insertNotAtStart: aCharacter after: anAddress

	| line index bb |
		
	self assert: anAddress ~= self end.
	
	line := anAddress line.
	index := anAddress index + 1.
	
	line insert: aCharacter asString at: index.		
	
	"fix line if it overflows and fix prev line if prev becomes unpacked "	
	
	bb := anAddress.
		
	line length = (width + 1) " the newly inserted character overflows the line "
		ifTrue:[ "if the index is located after width + 1 - shifted tokens length then the address that indicates the location moves to the next line at index - (width + 1 - stlen)"
			| stlen |
			stlen := line shiftRight: width.
			index > (width + 1 - stlen + 1)
				ifTrue:[
					bb := Address fromLine: line next index: index - (width + 1 - stlen) - 1 ] ].
	
	aCharacter isSeparator
		ifFalse:[^bb inc].
		
	aCharacter isLineSeparator 
		ifTrue:[ 
			[index < line length]  "the line separator is not the last token in the line"
				whileTrue:[
					line shiftRight: width ] ]. "shift all the token after the line separator to the next line"
			
	line prev isPacked: width ::
		ifTrue:[
			^bb inc]
		ifFalse:[ | len |
			len := line prev shiftLeft: width. 
			len < index 
				ifTrue:[
					^Address fromLine: line index: index - len]
				ifFalse:[ | pline |
					pline := line prev.
					line length = 0 
						ifTrue:[line delete].
					^Address fromLine: pline index: pline length] ]
	
	! !

!FrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 12:03:21'!
eraseFrom: bAddress to: eAddress

	self assert: bAddress <= eAddress.
	
	bAddress line == eAddress line
		ifTrue:[
			bAddress line eraseFrom: bAddress index to: eAddress index]
		ifFalse:[	
			bAddress index = 1 
				ifTrue:[
					self eraseLinesFrom: bAddress line to: eAddress line]
				ifFalse:[
					bAddress line eraseFrom: bAddress index. 
					self eraseLinesFrom: bAddress line next to: eAddress line]. 
	 
			eAddress line eraseTo: eAddress index].
	
	! !

!FrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/13/2025 19:01:12'!
insert: aCharacter after: anAddress

	anAddress = self end "add at the beginning of text"
		ifTrue:[
			^self insertAtStart: aCharacter].
		
	^self insertNotAtStart: aCharacter after: anAddress
		
	
	! !

!FrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:56:49'!
textFrom: bAddr to: eAddr

	| aWriteStream bb |
	
	aWriteStream := WriteStream on: ''.
	
	bb := bAddr.
	
	[bb ~= eAddr] whileTrue:[
		aWriteStream nextPut: bb char.
		bb := bb inc ].
	
	^aWriteStream contents
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:56:06'!
charAt: anIntegerNumber

	^text at: anIntegerNumber ! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 20:55:25'!
delete

	next prev: prev.
	prev next: next.	
	
	next := nil.
	prev :=nil.
	text := nil.! !

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

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 21:37:28'!
insertNewLine

	| aNewLine |
	
	aNewLine := Line new.
	
	aNewLine next: next.
	next prev: aNewLine.
	
	aNewLine prev: self.
	self next: aNewLine.
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

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 10:50:54'!
shiftLeft: anIntegerWidth
	
	| token len |
	
	self assert: (self isPacked: anIntegerWidth) not.
	
	len := 0.
	
	[self isPacked: anIntegerWidth] whileFalse:[
		token := next firstToken.
		self insert: token at: text size + 1.
		next eraseFrom: 1 to: token size + 1.
		len := len + token size ].
	
	next length > 0 and:[next isPacked: anIntegerWidth :: not ] ::	
		ifTrue:[next shiftLeft: anIntegerWidth ]. 
		
	^len
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

!Line methodsFor: 'testing' stamp: 'DF 6/12/2025 21:41:31'!
invariant: aNumberWidth

	next prev == self ifFalse:[^false].
	
	prev next == self ifFalse:[^false].

	self isPacked: aNumberWidth :: ifFalse:[^false].
		
	self isSentinel ifTrue:[^true].
	
	text size = 0 ifTrue:[^false].
	
	text size > aNumberWidth ifTrue:[^false].
	
	^true! !

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

!Line methodsFor: 'accessing' stamp: 'DF 6/12/2025 11:50:34'!
length
	^text size! !

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

!Sentinel methodsFor: 'accessing' stamp: 'DF 6/12/2025 11:50:04'!
length
	^0! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/12/2025 19:21:12'!
isOverflow: anIntegerWidth
	^true! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/12/2025 11:17:08'!
isPacked: aNumberWidth
	^true! !

!Sentinel methodsFor: 'testing' stamp: 'DF 6/12/2025 11:15:33'!
isSentinel
	^true! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 12:53:49'!
testErase

	| text aFrogEditor bb ee |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.

	bb := aFrogEditor begin.
	ee := bb inc inc.
	
	self assert: ee char = Character space.
	
	aFrogEditor eraseFrom:bb to: ee.
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= (text copyReplaceFrom: 1 to: 2 with: '').
	
	bb := aFrogEditor begin.
	
	ee := bb.
	
	[ee char ~= $w] whileTrue:[ee := ee inc].
	
	aFrogEditor eraseFrom:bb to:ee.

	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= (text copyReplaceFrom: 1 to: 16 with: '').
	
! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/12/2025 11:36:58'!
testInitialize

	| aFrogEditor |
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
	self assert: aFrogEditor invariant.! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/13/2025 20:59:58'!
testInsert

	| aFrogEditor bb pp |
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
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

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 12:21:29'!
testInsertLargeText

	| text aFrogEditor bb |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.

! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 11:33:15'!
testInsertUnpack

	| aFrogEditor bb ee |
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
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
