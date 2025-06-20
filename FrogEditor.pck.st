'From Cuis7.3 [latest update: #6895] on 20 June 2025 at 6:43:34 pm'!
'Description '!
!provides: 'FrogEditor' 1 97!
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

!FrogEditor methodsFor: 'accessing' stamp: 'DF 6/20/2025 12:21:54'!
end
	^Address fromLine: end index: 1! !

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

!FrogEditor methodsFor: 'private' stamp: 'DF 6/18/2025 19:20:12'!
repackAfterErase: aLine
	
	| nshifted |
	
	nshifted := 0.
	
	aLine isPacked: width :: 
		ifFalse:[ nshifted := nshifted - (aLine shiftLeft:width)].
				
	aLine isKissing ifTrue:[ 
		"The line is packed so we cannot shift left, nevertheless we shift left once,
		this will join the two kissing tokens and will overflow the line. A call to shiftRight
		will then move the larger token into its correct position."
		nshifted := nshifted - aLine shiftLeftOnce.
		nshifted := nshifted + (aLine shiftRight: width) ].

	^nshifted! !

!FrogEditor methodsFor: 'private' stamp: 'DF 6/20/2025 11:55:30'!
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

!FrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/18/2025 19:17:44'!
abstractIndexOf: anAddress

	| ii pp |
	
	ii := 0.
	
	pp := self begin line.
	
	[pp ~= end and:[pp ~= anAddress line] ]
		whileTrue:[
			ii := ii + pp  length.
			pp := pp next].
		
	^ii + anAddress index
	! !

!FrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/20/2025 18:43:29'!
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

	dd timesRepeat:[start := start inc].
	
	^start
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

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 22:42:38'!
delete

	next prev: prev.
	prev next: next.	
	
	"set text to nil to indicate that this line is deleted but keep the next and prev
	pointers, they are useful when implementing erase"
	
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

!Line methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 19:19:21'!
shiftLeftOnce
	
	| token |
	
	token := next firstToken.
	self insert: token at: text size + 1.
	token size = next length
		ifTrue:[
			next delete
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

!Line methodsFor: 'testing' stamp: 'DF 6/19/2025 22:57:24'!
invariant: aNumberWidth

	self isDeleted ifTrue:[self halt. ^  false].
	
	next prev == self ifFalse:[^false].
	
	prev next == self ifFalse:[^false].

	self isPacked: aNumberWidth :: ifFalse:[self halt. ^false].
		
	self isSentinel ifTrue:[^true].
	
	text size = 0 ifTrue:[self halt. ^false].
	
	text size > aNumberWidth ifTrue:[self halt. ^false].
	
	^true! !

!Line methodsFor: 'testing' stamp: 'DF 6/19/2025 19:37:42'!
isDeleted

	^text isNil! !

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

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 18:55:40'!
allTextIn: aFrogEditor

	^aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 18:53:05'!
fill: aFrogEditor with: aString

	| bb |
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	aString do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: aFrogEditor invariant.
! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/19/2025 18:53:25'!
goto: anIndex from: anAddress

	| pp |
	
	pp := anAddress.
	
	anIndex timesRepeat:[
		pp := pp inc
	].

	^pp! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/18/2025 19:59:25'!
testErase

	| text aFrogEditor bb ee pp |
	
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
	
	self assert: (aFrogEditor abstractIndexOf: ee :: = 15).
	
	pp := aFrogEditor eraseFrom:bb to:ee.
	
	self assert: (aFrogEditor abstractIndexOf: pp :: = 1).

	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= (text copyReplaceFrom: 1 to: 16 with: '').
	
	self assert: aFrogEditor invariant.
	
! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/20/2025 14:29:59'!
testEraseError

	| text aFrogEditor ab ae cb ce pp |
	
	text := 'In ollfavourite form of play.'.
	
	aFrogEditor := FrogEditor new.
	 
	aFrogEditor width:8.

	cb := aFrogEditor begin.
	
	text do:[:each | 
		cb := aFrogEditor insert: each after: cb].
	
	self assert: aFrogEditor invariant.

	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.
	
	ab := 6.
	
	ae := 13.
	
	cb := self goto:ab from: aFrogEditor end.
	
	self assert: ab = (aFrogEditor abstractIndexOf: cb).
	
	ce := self goto: ae from: aFrogEditor end.
	
	self assert: ae = (aFrogEditor abstractIndexOf: ce).
	
	pp := aFrogEditor eraseFrom:cb to: ce.
	
	self assert: aFrogEditor invariant.
	
	self assert: (aFrogEditor abstractIndexOf: pp) = ab. 
	
! !

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/18/2025 20:11:44'!
testEraseFullLines

	| text aFrogEditor bb ee pp |
	
	text := '12345678abcdefgh12345678ABCDEFGH'.
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
	self assert: aFrogEditor invariant.
	
	bb := aFrogEditor begin.
	
	text do:[:each | 
		bb := aFrogEditor insert: each after: bb].
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= text.

	self assert: aFrogEditor invariant.

	bb := aFrogEditor begin.
	
	7 timesRepeat:[bb := bb inc].
	
	self assert: bb char = $8.
	
	self assert: (aFrogEditor abstractIndexOf: bb) = 8.
	
	ee := bb inc inc.
	
	self assert: ee char = $b.
	
	pp := aFrogEditor eraseFrom: bb to:ee.
	
	self assert: (aFrogEditor textFrom: aFrogEditor begin to: aFrogEditor end)	= '1234567bcdefgh12345678ABCDEFGH'.
	
	self assert: (aFrogEditor abstractIndexOf: pp) = 8.

	self assert: aFrogEditor invariant.
	
	
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

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/14/2025 20:16:20'!
testKissing

	| text aFrogEditor bb ee |
	
	text := 'In olden times, when to wish'.
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
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

!TestFrogEditor methodsFor: 'as yet unclassified' stamp: 'DF 6/20/2025 12:30:03'!
testRandom

	| text aFrogEditor ii jj pp ab ae cb ce |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	aFrogEditor := FrogEditor new.
	
	aFrogEditor width:8.
	
	self fill: aFrogEditor with: text.
	
	self assert: aFrogEditor invariant.
	
	"select at random two indices ii, jj between 1 and text size + 1, "
	
	[ text isEmpty ] whileFalse:[
		ii := (text size + 1) atRandom.
		
		jj := (text size + 1) atRandom.
		
		"move to the same location in both concrete and abstract systems. "
		
		ab :=  ii min: jj. ae := ii max: jj.
		
		cb := self goto:ab from: aFrogEditor end.
		
		self assert: ab = (aFrogEditor abstractIndexOf: cb).
		
		ce := self goto: ae from: aFrogEditor end.
		
		self assert: ae = (aFrogEditor abstractIndexOf: ce).
		
		"erase the parts at both the abstract and concrete sytems. "
		
		pp := aFrogEditor eraseFrom: cb to: ce.

		self assert: aFrogEditor invariant.
			
		text := text eraseFrom:ab to:ae.
		
		"check that the abstract and concrete systems correspond"
		
		self assert: text  = (self allTextIn: aFrogEditor).
		
		self assert: (aFrogEditor abstractIndexOf: pp) = ab. ]
	! !

!CharacterSequence methodsFor: '*FrogEditor-unittest' stamp: 'DF 6/19/2025 18:35:16'!
eraseFrom: bIndex to: eIndex

	^ self copyReplaceFrom: bIndex to: eIndex - 1 with: ''! !
