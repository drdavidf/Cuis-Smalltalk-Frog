'From Cuis7.3 [latest update: #6895] on 13 May 2025 at 4:19:07 pm'!
'Description '!
!provides: 'Frog' 1 135!
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
	instanceVariableNames: 'lines cursor beginh endh width pattern rightl leftl'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WordProcessorMachine class' category: #Frog!
WordProcessorMachine class
	instanceVariableNames: ''!

!classDefinition: #WPRuler category: #Frog!
BorderedBoxMorph subclass: #WPRuler
	instanceVariableNames: 'font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WPRuler class' category: #Frog!
WPRuler class
	instanceVariableNames: ''!

!classDefinition: #WPTextMorph category: #Frog!
BorderedBoxMorph subclass: #WPTextMorph
	instanceVariableNames: 'font machine dy wbegin wsize showCursor textCursorRect dx cursorColor'
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


!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 19:59:02'!
+ anInteger

	self assert: index + anInteger <= line text size + 1.
	
	^Address new line: line ; index: index + anInteger ;yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 19:58:32'!
- anInteger

	self assert: index > anInteger.
	
	^Address new line: line ; index: index - anInteger ;yourself! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 22:00:59'!
<= anAddress
	^ (line precedes: anAddress line) and: [index <= anAddress index]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 15:31:04'!
= anAddress

	self class == anAddress class 
		ifFalse:[^false].
		
	^line = anAddress line and:[index = anAddress index]
	
	! !

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

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/9/2025 19:26:08'!
isPastLast
	^ line next isNil and:[index = (line text size + 1) ]! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:41:33'!
line
	^line! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:34:03'!
line: aLine
	line := aLine! !

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

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 20:47:00'!
begin: anAddress
	begin := anAddress! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 20:47:09'!
end: anAddress
	end := anAddress! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 21:01:57'!
intersect: anAddressRange

	| pp |
	
	"
	no intersection: 
			pp will reach self end before other begin or other end
			qq will reach other end before self begin or self end
			
	{ } [ ]	answer an empty range
	[ ] { }	answer an empty range
	
	inclusion:  
	[ { } ]	pp will reach self end before other begin or other end. qq will reach other begin before self end
				answer self
	{ [ ] }	vise versa
				answer other
	
	intersection
	[ { ] }	answer self begin to: other end
	{ [ } ]	answer other begin to self end
	
	"
	pp := begin.
	
	[pp == end or:[pp == anAddressRange begin] or: [pp == anAddressRange end] ] whileFalse:[
		pp := pp next ].
! !

!AddressRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 20:47:59'!
invariant
	^ begin notNil and: [end notNil] and: [begin precedes: end]! !

!Line methodsFor: 'private' stamp: 'DF 5/8/2025 15:48:23'!
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

!Line methodsFor: 'testing' stamp: 'DF 5/9/2025 17:30:16'!
precedes: aLine

	^self == aLine or: [self next notNil and: [self next precedes: aLine] ]! !

!Line methodsFor: 'initialization' stamp: 'DF 5/8/2025 15:52:17'!
initialize

	text := ''.! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:41'!
initialize

	paragraphs := Paragraph new! !

!Paragraph methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:54'!
initialize

	lines := Line new! !

!WordProcessor class methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 15:25:49'!
open: aWordProcessorMachine

	| machine root top text bottom ruler |
	
	machine := WordProcessorMachine new.
	
	root := LayoutMorph newColumn.

	root morphExtent: 2160@1620.

	top := LayoutMorph newRow.

	top padding: 17*24@12.

	text := WPTextMorph new.

	text morphExtent: 66*24 @ (1620 - 168).
	
	text machine: aWordProcessorMachine.

	top addMorph: text.

	bottom := LayoutMorph newColumn.

	bottom morphExtent: 2160@168.
	
	ruler := WPRuler new.
	
	ruler morphExtent: 80*24 @ 84.
	
	bottom padding: 5*24 @ 0.
	
	bottom addMorph: ruler.

	root addMorph: top; addMorph: bottom.

	root scaleBy: 0.5 :: openInWorld.

! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/8/2025 22:14:28'!
invariant

	beginh line notNil and: [endh line notNil] and: [beginh <= endh] and: [ lines allSatisfy: [:eachLine | eachLine invariant] ]
	
	! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/9/2025 19:38:06'!
isNarrowCursor
	^ beginh = endh and: [ endh = cursor]! !

!WordProcessorMachine methodsFor: 'testing' stamp: 'DF 5/9/2025 19:38:23'!
isWideCursor
	^ beginh = endh and: [ endh forward = cursor]! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/11/2025 15:37:21'!
highlight

	beginh := leftl min: rightl.
	endh := leftl max: rightl.! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/12/2025 00:00:59'!
leapLeft

	| p |
	
	pattern ifEmpty:[^self].
	
	p := cursor isFirst 
			ifTrue:[cursor] 
			ifFalse:[cursor back].

	" leap back "
	
	[ p isFirst or: [ self matchBackFrom: p  ] ] whileFalse:[
		p := p back ].

	(p isFirst) 
		ifFalse:[
			cursor := p - (pattern size - 1).
			leftl := cursor.
			^self].
		
	" we did not find it going back towards the beginning. now start from the end 
	and stop when reaching cursor"
	
	p := p pastLastLine back.
	
	[ p = cursor or: [self matchBackFrom: p  ] ] whileFalse:[
		p := p back ].
	
	(p = cursor)
		ifFalse:[
			cursor := p - (pattern size - 1).
			leftl := cursor.
			^self].
		
	self assert: self isNarrowCursor = true
			
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/12/2025 00:01:04'!
leapRight

	| p |

	pattern ifEmpty:[^self].
	
	p := cursor isPastLast 
			ifTrue:[cursor] 
			ifFalse:[cursor forward].

	" leap forward "
			
	[ p isPastLast or: [ self matchForwardFrom: p  ] ] whileFalse:[
		p := p forward ].

	(p isPastLast) 
		ifFalse:[
			cursor := p.
			rightl := p.
			^self].
		
	" we did not find it going forward towards the end. Now start from the beginning
	and stop when reaching cursor"
	
	p := p firstLine.
	
	[ p = cursor or: [self matchForwardFrom: p ] ] whileFalse:[
		p := p forward ].
	
	(p = cursor)
		ifFalse:[
			cursor := p.
			rightl := p.
			^self].
			
	self assert: self isNarrowCursor = true
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/9/2025 15:22:46'!
matchBackFrom: anAddress

	| p ii |
	
	p := anAddress.

	ii := pattern size.
		
	[ ii  = 0 or: [ p isFirst ] or: [ p char ~= (pattern at: ii) ] ] whileFalse:[
		ii := ii - 1.
		p := p back ].
	
	^ ii = 0
! !

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/9/2025 19:30:31'!
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

!WordProcessorMachine methodsFor: 'leaping' stamp: 'DF 5/11/2025 23:55:41'!
patternPut: anInteger
	pattern := pattern , (Character codePoint: anInteger) asString! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/9/2025 19:21:22'!
cursor
	^cursor! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/8/2025 17:04:36'!
lines
	^lines! !

!WordProcessorMachine methodsFor: 'accessing' stamp: 'DF 5/11/2025 16:06:39'!
width: anInteger

	self assert: anInteger > 0.
	
	width := anInteger! !

!WordProcessorMachine methodsFor: 'initialization' stamp: 'DF 5/9/2025 17:39:01'!
initialize

	width := 8. "maximum number of characters in a line"
	
	lines := Line new.
	
	cursor := Address new.
	
	beginh := cursor.
	endh := cursor.
	
	cursor line: lines ; index: 1.! !

!WordProcessorMachine methodsFor: 'editing' stamp: 'DF 5/9/2025 18:18:55'!
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
	
	[p isNil or: [p text last isLineSeparator ] ] whileFalse:[
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
	! !

!WordProcessorMachine methodsFor: 'editing' stamp: 'DF 5/11/2025 19:15:29'!
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

!WPRuler methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 15:33:42'!
drawOn: aCanvas
	
	| xx dx wc |
	
	super drawOn: aCanvas.
	
	wc := (font widthOf: $8) / 2.
	
	dx := 24.
	
	0 to:79 do:[:ii |
		xx := dx * ii.
		aCanvas line: xx@0 to: xx@12 width:1 color: Color white ].
	
	1 to:8 do:[:ii |
		xx := dx * 10 * ii.
		aCanvas 
			line: xx@0 to: xx@24 width:1 color: Color white ;
			drawString: ('{1}' format:{ii}) at: (xx - wc) @ 24  font: font color: Color white ].
		
	aCanvas frameRectangle: (7 * 24 - 12 @ 0 extent: (66 * 24 + 24  @ 60) ) borderWidth: 1 color: Color white.! !

!WPRuler methodsFor: 'as yet unclassified' stamp: 'DF 5/10/2025 21:08:13'!
font: aFont
	font := aFont! !

!WPRuler methodsFor: 'as yet unclassified' stamp: 'DF 5/10/2025 21:10:03'!
initialize

	super initialize .
	
	color := Color black.
	
	font := FontFamily familyName: 'CMU Typewriter Text' pointSize: 18.	! !

!WPTextMorph methodsFor: 'blinking' stamp: 'DF 5/11/2025 16:49:47'!
onBlinkCursor
	
	"Blink the cursor"
	
	showCursor := showCursor not.
	
	textCursorRect ifNotNil:[:r | self invalidateLocalRect: r].! !

!WPTextMorph methodsFor: 'blinking' stamp: 'DF 5/11/2025 16:49:05'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: 500! !

!WPTextMorph methodsFor: 'blinking' stamp: 'DF 5/11/2025 17:20:55'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		textCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]]! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/11/2025 18:10:48'!
drawCursorOn: aCanvas

	| xcursor ycursor |
	
	ycursor := dy * (wbegin distanceFrom: machine cursor line).
	xcursor := dx * (machine cursor index) - dx.
	
	textCursorRect := xcursor@ycursor extent: dx@dy.

	aCanvas fillRectangle: textCursorRect  color: cursorColor.
	machine isWideCursor
		ifTrue:[ self drawHighlightOn: aCanvas ] 
! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/13/2025 16:18:27'!
drawHighlightOn: aCanvas

	| ycursor cc wycursor wxcursor |
	
	ycursor := dy * (wbegin distanceFrom: machine cursor line).
	
	cc := machine cursor back.
	wycursor := ycursor - (dy * (cc line distanceFrom: machine cursor line)).
	wxcursor := dx * (cc index) - dx.
	
	aCanvas fillRectangle: (wxcursor @ wycursor extent: dx@dy) color: Color black.
	aCanvas drawString: cc char asString at: wxcursor@wycursor  font: font  color: Color white
	
! !

!WPTextMorph methodsFor: 'drawing' stamp: 'DF 5/13/2025 16:16:48'!
drawOn: aCanvas

	| yy ii line |
	
	self assert: machine notNil.
	
	super drawOn: aCanvas.

	ii := 0.
	yy := 0.
	
	line := wbegin.
	
	[ line notNil and: [yy + dy < self morphHeight] ] whileTrue:[
		aCanvas drawString: line text at: 0@ yy font: font color: Color black.
		ii := ii + 1.
		yy := ii * dy.
		line := line next ].

	showCursor 
		ifTrue:[self drawCursorOn: aCanvas ]
		! !

!WPTextMorph methodsFor: 'initialization' stamp: 'DF 5/11/2025 18:37:20'!
initialize

	super initialize. 
	
	color := Color white.
	
	font := FontFamily familyName: 'CMU Typewriter Text' pointSize: 28.
	
	dy := font lineSpacing.
	
	dx := font widthOf:$M.
	
	wsize := 24.
	
	showCursor := true.
	
	cursorColor := Color fromHexString: '#AAAAAA'.
	
	! !

!WPTextMorph methodsFor: 'events' stamp: 'DF 5/12/2025 20:30:18'!
keyDown: aMorphicEvent

	aMorphicEvent commandAltKeyPressed
		ifTrue:[ | keyv |
			keyv := aMorphicEvent keyValue.
			keyv = 152 or: [keyv = 136] ::
				ifTrue:[
					machine pattern: '' ]
				ifFalse:[
					machine patternPut: aMorphicEvent keyValue] ].
			
	Transcript show: 'keyDown: ' ; show: aMorphicEvent commandAltKeyPressed ; show: ' # '; show: aMorphicEvent keyValue; cr! !

!WPTextMorph methodsFor: 'events' stamp: 'DF 5/12/2025 20:31:13'!
keyUp: aMorphicEvent

	Transcript show: 'keyUp: ' ; show: aMorphicEvent keyValue; cr.

	aMorphicEvent keyValue = 152
		ifTrue:[
			machine leapLeft.
			].
		
	aMorphicEvent keyValue = 136
		ifTrue:[
			machine leapRight.
			].
		
	self redrawNeeded 
! !

!WPTextMorph methodsFor: 'event handling testing' stamp: 'DF 5/11/2025 19:27:43'!
handlesKeyboard
	^true! !

!WPTextMorph methodsFor: 'event handling testing' stamp: 'DF 5/12/2025 20:26:18'!
handlesMouseDown: aMouseButtonEvent
	^ true! !

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 15:53:35'!
machine: aWPMachine

	machine := aWPMachine.
	
	wbegin := machine begin line.
	
	self scrollToCursor ! !

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 15:53:46'!
scrollBackwardToCursor

	[ wbegin = machine cursor line ] whileFalse:[wbegin := wbegin prev ].
	
! !

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 15:42:13'!
scrollForwardToCursor

	| ii pp |
	
	pp := machine cursor line.
	
	ii := 0.
	

	[ pp prev notNil and:[ii < wsize]  ] whileTrue:[pp := pp prev. ii := ii + 1. ].
	
	" pp prev isNil and pp notNil and ii = distance[pp,line] and pp prev isNil or ii = wsize "
	
	" pp notNil and ii = distance[pp,line] and ii <= wsize "
	
	"pp notNil and distance[pp,line] <= wsize"
	
	wbegin := pp.! !

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 16:00:53'!
scrollToCursor

	self wend precedes: machine cursor line ::
		ifTrue:[
			^self scrollForwardToCursor ].
		
	machine cursor line precedes: wbegin ::
		ifTrue:[
			^self scrollBackwardToCursor ].
		
		! !

!WPTextMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/13/2025 15:58:16'!
wend

	| pp |
	
	pp := wbegin.
	
	wsize timesRepeat: [ pp := pp next].
	
	^pp! !

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

!TestWordProcessorMachine methodsFor: 'as yet unclassified' stamp: 'DF 5/11/2025 18:37:48'!
testMorph

	| text machine |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.

Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

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
