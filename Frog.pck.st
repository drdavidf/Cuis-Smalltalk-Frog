'From Cuis7.3 [latest update: #6895] on 8 May 2025 at 5:23:23 pm'!
'Description '!
!provides: 'Frog' 1 30!
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

!classDefinition: #WordProcessorModel category: #Frog!
Object subclass: #WordProcessorModel
	instanceVariableNames: 'lines cursor width'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WordProcessorModel class' category: #Frog!
WordProcessorModel class
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

!classDefinition: #TestWordProcessorModel category: #Frog!
TestCase subclass: #TestWordProcessorModel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'TestWordProcessorModel class' category: #Frog!
TestWordProcessorModel class
	instanceVariableNames: ''!


!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:41:30'!
index
	^index! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:34:09'!
index: aNumber
	index := aNumber! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:41:33'!
line
	^line! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:34:03'!
line: aLine
	line := aLine! !

!Address methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 15:59:23'!
nextLine

	self assert: line next notNil.
	
	^Address new line: line next ; index:0 ; yourself! !

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

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 19:30:06'!
deleteFrom: begin to: end

	| aWriteStream |
	
	self assert: 1 <= begin.
	self assert: begin <= end.
	self assert: end <= text size.
	
	aWriteStream := WriteStream on: ''.
	
	aWriteStream nextPutAll: (text copyFrom: 1 to: begin - 1) ; nextPutAll: (text copyFrom: end+1 to: text size).
	
	text := aWriteStream contents.! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 15:52:17'!
initialize

	text := ''.! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 15:48:23'!
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
			src skip: 0 - token size ].

	self assert: (dst contents , src tail) = raw .
		
	text := dst contents.
	
	self assert: (text , src tail) = raw.
	
	^ src upToEnd.
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 15:54:47'!
invariant

	^(prev isNil or:[prev next == self ]) and:[next isNil or:[next prev == self ] ]! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:41'!
initialize

	paragraphs := Paragraph new! !

!Paragraph methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:54'!
initialize

	lines := Line new! !

!WordProcessorModel methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 10:35:50'!
initialize

	width := 8. "maximum number of characters in a line"
	
	lines := Line new.
	
	cursor := Address new.
	
	cursor line: lines ; index: 0.! !

!WordProcessorModel methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 17:20:59'!
insert: aString

	"insert aString right after cursor. Create new lines as needed. Move the cursor to point one character ahead of the inserted string."
	
	| line tail index |
	
	self halt.
	
	line := cursor line.
	
	tail := line insert: aString after: cursor index width: width.
	
	index := tail firstIndex: [:eachCharacter | eachCharacter isSeparator ].
	
	[index > width] whileTrue:[
		
		| aNewLine |
		
		aNewLine := Line new.
		
		aNewLine insert: (tail copyFrom:1 to: width) after: 0 width: width. 
		
		self insert: aNewLine after: line.
		
		cursor := cursor nextLine.
		
		line := cursor line.
		
		tail := tail copyFrom: width+1 to: tail size.
		
		index := tail firstIndex: [:eachCharacter | eachCharacter isSeparator ] ].

! !

!WordProcessorModel methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 15:55:05'!
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

!WordProcessorModel methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 17:04:36'!
lines
	^lines! !

!TestLine methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 19:31:34'!
testDelete

	| aLine tail |
	
	aLine := Line new.
	
	tail := aLine insert: '12345' after:0 width: 8.
	
	self assert: tail isEmpty.
	
	self assert: aLine text = '12345'.
	
	aLine deleteFrom: 1 to: 5.
	
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

!TestWordProcessorModel methodsFor: 'as yet unclassified' stamp: 'DF 5/8/2025 17:06:35'!
testInsert

	| aWordProcessor aLine |
	
	aWordProcessor := WordProcessorModel new.
	
	aWordProcessor insert:'12345678abcdefghABCDEFGH12345678'.
	
	aLine := aWordProcessor lines.
	
	self assert: aLine text = '12345678'.
	
	aLine := aLine next.
	
	self assert: aLine text = 'abcdefgh'.

	aLine := aLine next.
	
	self assert: aLine text = 'ABCDEFGH'.
	
	aLine := aLine next.
	
	self assert: aLine text = '12345678'.
	! !

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
