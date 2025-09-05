'From Cuis7.3 [latest update: #7041] on 5 September 2025 at 9:49:19 pm'!
'Description '!
!provides: 'Kaeru' 1 412!
!requires: 'Regex-Core' 1 6 nil!
SystemOrganization addCategory: #Kaeru!


!classDefinition: #KBackwardStream category: #Kaeru!
Object subclass: #KBackwardStream
	instanceVariableNames: 'kiterator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KBackwardStream class' category: #Kaeru!
KBackwardStream class
	instanceVariableNames: ''!

!classDefinition: #KForwardStream category: #Kaeru!
Object subclass: #KForwardStream
	instanceVariableNames: 'kiterator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KForwardStream class' category: #Kaeru!
KForwardStream class
	instanceVariableNames: ''!

!classDefinition: #KIterator category: #Kaeru!
Object subclass: #KIterator
	instanceVariableNames: 'pars parIndex lineIndex charIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KIterator class' category: #Kaeru!
KIterator class
	instanceVariableNames: ''!

!classDefinition: #KLibrary category: #Kaeru!
Object subclass: #KLibrary
	instanceVariableNames: 'paragraphs border'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KLibrary class' category: #Kaeru!
KLibrary class
	instanceVariableNames: ''!

!classDefinition: #KLine category: #Kaeru!
Object subclass: #KLine
	instanceVariableNames: 'chars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KLine class' category: #Kaeru!
KLine class
	instanceVariableNames: ''!

!classDefinition: #KNode category: #Kaeru!
Object subclass: #KNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KNode class' category: #Kaeru!
KNode class
	instanceVariableNames: ''!

!classDefinition: #KPart category: #Kaeru!
KNode subclass: #KPart
	instanceVariableNames: 'containers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KPart class' category: #Kaeru!
KPart class
	instanceVariableNames: ''!

!classDefinition: #KDoc category: #Kaeru!
KPart subclass: #KDoc
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KDoc class' category: #Kaeru!
KDoc class
	instanceVariableNames: ''!

!classDefinition: #KPage category: #Kaeru!
KPart subclass: #KPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KPage class' category: #Kaeru!
KPage class
	instanceVariableNames: ''!

!classDefinition: #KParagraph category: #Kaeru!
Object subclass: #KParagraph
	instanceVariableNames: 'leftMargin rightMargin lines'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KParagraph class' category: #Kaeru!
KParagraph class
	instanceVariableNames: ''!

!classDefinition: #KRepository category: #Kaeru!
Object subclass: #KRepository
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KRepository class' category: #Kaeru!
KRepository class
	instanceVariableNames: ''!

!classDefinition: #KTokenStream category: #Kaeru!
Object subclass: #KTokenStream
	instanceVariableNames: 'stream head'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KTokenStream class' category: #Kaeru!
KTokenStream class
	instanceVariableNames: ''!

!classDefinition: #ExhaustiveTestKLibrary category: #Kaeru!
TestCase subclass: #ExhaustiveTestKLibrary
	instanceVariableNames: 'lib text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'ExhaustiveTestKLibrary class' category: #Kaeru!
ExhaustiveTestKLibrary class
	instanceVariableNames: ''!

!classDefinition: #TestKLibrary category: #Kaeru!
TestCase subclass: #TestKLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'TestKLibrary class' category: #Kaeru!
TestKLibrary class
	instanceVariableNames: ''!

!classDefinition: #TestKParagraph category: #Kaeru!
TestCase subclass: #TestKParagraph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'TestKParagraph class' category: #Kaeru!
TestKParagraph class
	instanceVariableNames: ''!

!classDefinition: #TestKTokenStream category: #Kaeru!
TestCase subclass: #TestKTokenStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'TestKTokenStream class' category: #Kaeru!
TestKTokenStream class
	instanceVariableNames: ''!


!KLibrary commentStamp: '<historical>' prior: 0!
A KLibrary holds a collection of KDocuments

!

!KNode commentStamp: '<historical>' prior: 0!
This is the interface for the KNode tree. 

The tree holds a structured representation of characters. Each level in the tree represents a structural element: libraries hold documents; documents hold pages; pages hold paragarphs; paragraphs hold lines, and lines holds characters. 

Each element in the tree is identified using an address. An address is a tuple of integers that mark the position in each level of the tree. 

The essential quality of this tree is that it manages overflow and underflow. When an element overflows (for example a page overflows when the number of lines in the page exceeds its limits) we move the last child in the element to the next element. Similarly, when a an element underflows (e.g. a page has too few lines) we move the first child in the next element back to the underflowed element. 

A few key properties: 

length

The length of the node is the number of its children. For a line this is the number of characters in the line. 

weight

The number of lines in the node. For a page this is the sum of the weights of its paragraphs. 

text

The entire sequence of characters held in the node.

newItem

Answers a new child object. For example, a paragraph answers a new line. A page answers a new paragraph.
!

!KRepository commentStamp: '<historical>' prior: 0!
A KRepository is the object that holds the entire text and provides the operations to manipulate the text. !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:53:53'!
atEnd

	^ kiterator isAtStart! !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:54:23'!
next

	kiterator prev.
	^ kiterator char.
! !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:54:57'!
peek

	^kiterator isAtStart
		ifTrue:[ nil ] ifFalse:[ kiterator copy prev char ]! !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:51:45'!
position
	^kiterator copy! !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:51:45'!
position: aKIterator
	kiterator := aKIterator ! !

!KBackwardStream class methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:59:46'!
on: aKIterator

	| aKStream |
	
	aKStream := KBackwardStream new.
	
	aKStream position: aKIterator.
	
	^aKStream! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:15:36'!
atEnd

	^ kiterator isAtEnd! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:24:36'!
next

	| cc |
	
	cc := kiterator char.
	kiterator next.
	
	^cc! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:32:35'!
peek

	^kiterator isAtEnd
		ifTrue:[ nil ] ifFalse:[ kiterator char ]! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:46:04'!
position
	^kiterator copy! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:37:57'!
position: aKIterator
	kiterator := aKIterator ! !

!KForwardStream class methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:50:38'!
on: aKIterator

	| aKStream |
	
	aKStream := KForwardStream new.
	
	aKStream position: aKIterator.
	
	^aKStream! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:34:44'!
privCharIndex
	^charIndex! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:59:45'!
privCharIndex: anIndex

	charIndex := anIndex ! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:34:39'!
privLineIndex
	^lineIndex! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:59:54'!
privLineIndex: anIndex

	lineIndex := anIndex! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:21:16'!
privNextChar

	self assert: charIndex <  (pars at: parIndex :: lineAt: lineIndex :: length ).
	
	charIndex := charIndex + 1! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:21:39'!
privNextLine

	self assert: lineIndex <  (pars at: parIndex :: numLines ).

	self assert: charIndex =  (pars at: parIndex :: lineAt: lineIndex :: length ).
	
	lineIndex := lineIndex + 1.
	
	charIndex := 1.! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:22:12'!
privNextPar

	self assert: lineIndex =  (pars at: parIndex :: numLines ).

	self assert: charIndex =  (pars at: parIndex :: lineAt: lineIndex :: length ).
	
	parIndex := parIndex + 1.
	
	lineIndex := 1.
	
	charIndex := 1.! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:34:31'!
privParIndex
	^parIndex! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 17:00:16'!
privParIndex: anIndex

	parIndex := anIndex! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:33:24'!
privPars
	^pars! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:22:56'!
privPrevChar

	self assert: charIndex > 1.
	
	charIndex := charIndex - 1! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:23:50'!
privPrevLine

	self assert: lineIndex >  1.

	self assert: charIndex =  1.
	
	lineIndex := lineIndex - 1.
	
	charIndex := (pars at: parIndex :: lineAt: lineIndex :: length ).
! !

!KIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:25:48'!
privPrevPar

	self assert: parIndex > 1.
	
	self assert: lineIndex =  1.

	self assert: charIndex =  1.
	
	parIndex := parIndex - 1.
	
	lineIndex := 	pars at: parIndex :: numLines.
	
	charIndex := pars at: parIndex :: lineAt: lineIndex :: length.
! !

!KIterator methodsFor: 'testing' stamp: 'DF 8/18/2025 16:35:32'!
= aKIterator

	aKIterator isKindOf: self class :: ifFalse:[^false].
	
	pars == aKIterator privPars ifFalse:[^false].
	
	parIndex = aKIterator privParIndex ifFalse:[^false].
	
	lineIndex = aKIterator privLineIndex ifFalse:[^false].
	
	^ charIndex = aKIterator privCharIndex ! !

!KIterator methodsFor: 'testing' stamp: 'DF 8/18/2025 16:40:41'!
~= aKIterator

	^( self = aKIterator ) not
! !

!KIterator methodsFor: 'testing' stamp: 'DF 8/18/2025 16:40:09'!
hash

	^pars hash bitXor: ( parIndex hash bitXor: ( lineIndex hash bitXor: charIndex hash ) )! !

!KIterator methodsFor: 'testing' stamp: 'DF 8/30/2025 17:21:15'!
isAtEnd
	^parIndex = (pars size + 1)
! !

!KIterator methodsFor: 'testing' stamp: 'DF 8/30/2025 17:53:28'!
isAtStart
	
	^ parIndex = 1 and:[ lineIndex = 1] and:[ charIndex = 1]! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:30:44'!
char

	^ pars at: parIndex :: lineAt: lineIndex :: charAt: charIndex! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:28:35'!
next

	charIndex <  (pars at: parIndex :: lineAt: lineIndex :: length )
		ifTrue:[
			^self privNextChar ].
		
	lineIndex <  (pars at: parIndex :: numLines )
		ifTrue:[
			^self privNextLine ].
	
	self privNextPar! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:07:53'!
pars: anOrderedCollection

	pars := anOrderedCollection.
! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:29:17'!
prev

	charIndex >  1
		ifTrue:[
			^self privPrevChar ].
		
	lineIndex >  1
		ifTrue:[
			^self privPrevLine ].
	
	self privPrevPar! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:15:41'!
setAtEnd
	parIndex := pars size + 1.
	lineIndex := 1.
	charIndex := 1.! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:15:41'!
setAtStart
	parIndex := 1.
	lineIndex := 1.
	charIndex := 1.! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 8/18/2025 16:31:34'!
begin

	| anIterator |
	
	anIterator := KIterator new.
	
	anIterator pars: paragraphs ; setAtStart.
	
	^anIterator ! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 8/18/2025 17:02:10'!
charIndexToIterator: anIndex

	| pi li iterator |
	
	pi := self charIndexToParIndex: anIndex.
	
	li := paragraphs at: pi first :: charIndexToLineIndex: pi second.
	
	iterator := KIterator new.
	
	iterator pars: paragraphs ; privParIndex: pi first ; privLineIndex: li first ; privCharIndex: li second. 
	
	^iterator! !

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/5/2025 20:10:55'!
charIndexToParIndex: anIndex

	" answer a pair whose first member is the paragraph index and whose second member is the character index in the paragraph text that corresponds to anIndex.
	If anIndex exceeds the number of characters in the library, answer the remainder. For example,
	
	if there are 3 paragraphs each with 10 characters then
	
	self charIndexToParIndex: 31 = { 4 . 1 }.
	
	This behavior gives the correct result when we pass anIndex that is marks one position past the end of the text in the library. "
	
	| ii pp |
	
	ii := anIndex. pp := 1.
	
	[ pp <= paragraphs size and: [ii > ((paragraphs at:pp) length) ] ]
		whileTrue:[
			ii := ii - ((paragraphs at:pp) length).
			pp := pp + 1].

	^ { pp . ii }! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 8/18/2025 16:31:44'!
end

	| anIterator |
	
	anIterator := KIterator new.
	
	anIterator pars: paragraphs ; setAtEnd.
	
	^anIterator ! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 8/16/2025 21:53:49'!
insert: aCharacter after: anIndex

	aCharacter isKLineSeparator 
		ifTrue:[
			self insertBreakCharacter: aCharacter after: anIndex]
		ifFalse:[
			self insertLetter: aCharacter after: anIndex]
		
	! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 8/18/2025 11:11:16'!
insertBreakCharacter: aCharacter after: anIndex

	"Find the paragraph that corresponds to the index and the offset in the paragraph's text. we assume that
	the index references a character in one of the paragraphs (that is, it is not larger than the total characters
	in the library.
	
	Split the paragraph's text at the offset. Add the break character to the end of the first part and rebuild the paragraph just from the first part. Create a new paragraph and build it from the second part. Add the new paragraph after the current paragraph.
	"
	
	| pi ii pp text left right newPar |
	
	pi := self charIndexToParIndex: anIndex.
	
	pp := pi first. ii := pi second. 
		
	text := (paragraphs at:pp) text.
	
	left := text copyFrom:1 to: ii.
	right := text copyFrom: ii+1 to: text size.
	
	(paragraphs at:pp) rebuildFromText: left asOrderedCollection, {aCharacter}.
	
	newPar := self newItem.
	
	newPar rebuildFromText: right.
	
	paragraphs add: newPar afterIndex: pp.
	
	! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 8/18/2025 12:17:49'!
insertLetter: aCharacter after: anIndex

	"find the paragraph that corresponds to the index and the offset in the paragraph's text. we assume that
	the index references a character in one of the paragraphs (that is, it is not larger than the total characters
	in the library."
	
	| pi ii pp par |
	
	pi := self charIndexToParIndex: anIndex.
	
	pp := pi first. ii := pi second. 
	
	"if the address references a line breaking character we must insert the character at the beginning of the 
	next paragraph."
	
	par := paragraphs at:pp.
	
	ii > 0 and: [par notEmpty] and:[ par charAt: ii :: isKLineSeparator ] ::
		ifTrue: [
			pp := pp + 1. 
			ii := 0.
	
			pp = (paragraphs size + 1)
				ifTrue:[
					paragraphs add: self newItem] ].
		
	(paragraphs at:pp) insert: aCharacter after: ii! !

!KLibrary methodsFor: 'accessing' stamp: 'DF 8/16/2025 21:52:22'!
text

	| aWriteStream |
	
	aWriteStream := WriteStream on:''.
	
	self textInto: aWriteStream.
	
	^aWriteStream contents.! !

!KLibrary methodsFor: 'accessing' stamp: 'DF 8/16/2025 21:52:13'!
textInto: aWriteStream

	paragraphs do:[:each | each textInto: aWriteStream ].
! !

!KLibrary methodsFor: 'initialization' stamp: 'DF 8/16/2025 21:43:46'!
initialize

	paragraphs := OrderedCollection new.
	
	paragraphs add: self newItem.
	
	border := 1.! !

!KLibrary methodsFor: 'factory' stamp: 'DF 8/16/2025 21:42:29'!
newItem
	^KParagraph new! !

!KLibrary methodsFor: 'erasing' stamp: 'Df 9/5/2025 20:26:22'!
eraseFrom: aBeginIndex to: anEndIndex

	| beginPi endPi headText tailText par |
	
	beginPi := self charIndexToParIndex: aBeginIndex .
	
	endPi := self charIndexToParIndex: anEndIndex .
	
	headText := paragraphs at: beginPi first :: textFrom: 1 to: beginPi second.

	" If endPi exceeds the number of paragraphs in the text it means that we erase all the text after beginPi until the end of text
	therefore just keep the text before beginPi. Otherwise we have to erase the beginning of the paragraph marked by endPi and
	keep the text that follows."
	
	endPi first <= paragraphs size
		ifTrue:[
			par := paragraphs at: endPi first.
	
			tailText := par textFrom: endPi second.
	
			par rebuildFromText: headText, tailText.
	
			paragraphs := (paragraphs copyFrom:1 to: beginPi first - 1) , { par } , (paragraphs copyFrom: endPi first + 1 to: paragraphs size) ]

		ifFalse:[ 
			paragraphs := paragraphs copyFrom:1 to: beginPi first - 1.
			
			headText isEmpty
				ifFalse:[
					par := KParagraph new.
					par rebuildFromText: headText.
					paragraphs add: par ] ].
	
	
! !

!KLibrary methodsFor: 'testing' stamp: 'DF 8/18/2025 11:56:28'!
invariant

	paragraphs allButLastDo: [:each |
		self assert: each isLineBreaking ].
	
	^true! !

!KLibrary methodsFor: 'searching' stamp: 'DF 8/18/2025 16:52:37'!
match: aString at: anIterator

	| bb ee ii | 
	
	bb := anIterator copy.
	
	ee := self end.
	
	ii := 1.	

	self assert: aString size > 0.
	
	[ bb ~= ee and: [ii <= aString size] and: [ bb char = (aString at: ii) ] ]
		whileTrue:[
			bb next.
			ii := ii + 1 ].
		
	^ii = aString size
	
	! !

!KLine methodsFor: 'inserting' stamp: 'DF 8/8/2025 12:07:56'!
buildFrom: aTokenStream limitBy: anIntegerWidth

	"build a line assuming that the token stream has no line separator or a single line separator at the end "
	
	| token  |
		
	token := aTokenStream first.
		
	[token notEmpty and: [ chars size + token size <= anIntegerWidth] ]
		whileTrue:[
			chars addAll: token.
			aTokenStream nextUpTo: anIntegerWidth.
			token := aTokenStream first ].
	! !

!KLine methodsFor: 'testing' stamp: 'DF 8/18/2025 11:55:19'!
isLineSeparating

	^chars size > 0 and: [chars last isKLineSeparator ]
	! !

!KLine methodsFor: 'testing' stamp: 'DF 8/18/2025 12:13:59'!
notEmpty
	^chars notEmpty ! !

!KLine methodsFor: 'accessing' stamp: 'DF 8/18/2025 12:03:58'!
charAt: anIndex
	^chars at: anIndex! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:33:49'!
length

	^chars size! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/20/2025 11:37:37'!
textInto: aWriteStream

	aWriteStream nextPutAll: chars.! !

!KLine methodsFor: 'initialization' stamp: 'DF 7/19/2025 15:42:54'!
initialize

	chars := OrderedCollection new! !

!KNode methodsFor: 'inserting' stamp: 'DF 7/19/2025 21:55:27'!
insert: aCharacter after: anAddress

	^self subclassResponsibility ! !

!KNode methodsFor: 'erasing' stamp: 'DF 7/22/2025 13:08:48'!
eraseFrom: aBeginAddress

	"erase all the children from aBeginAddress"

	^self subclassResponsibility ! !

!KNode methodsFor: 'erasing' stamp: 'DF 7/22/2025 13:00:55'!
eraseFrom: aBeginAddress to: anEndAddress

	^self subclassResponsibility ! !

!KNode methodsFor: 'erasing' stamp: 'DF 8/1/2025 15:54:39'!
eraseTo: anEndAddress 

	" Erase all the characters that are in addresses before anEndAddress. 
		
	"
	self subclassResponsibility ! !

!KNode methodsFor: 'erasing' stamp: 'DF 7/21/2025 08:18:41'!
removeLast: aKNode
	^self subclassResponsibility ! !

!KNode methodsFor: 'addressing' stamp: 'DF 8/2/2025 17:45:10'!
distanceFrom: aBeginAddr to: anEndAddr

	| bb ii | 
	
	self assert: ( self precedes: aBeginAddr before: anEndAddr ).
		
	bb := aBeginAddr.
	ii := 0.
	
	[bb ~= anEndAddr ] 
		whileTrue:[
			bb := self next:bb.
			ii := ii + 1 ].
		
	^ii
	
	
	! !

!KNode methodsFor: 'addressing' stamp: 'DF 7/22/2025 10:15:35'!
lastAddress
	^self subclassResponsibility ! !

!KNode methodsFor: 'addressing' stamp: 'DF 7/22/2025 10:01:44'!
resolve: anAddress  

	^self subclassResponsibility! !

!KNode methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:33:41'!
length

	^self subclassResponsibility ! !

!KNode methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:22:31'!
overweight
	^self subclassResponsibility ! !

!KNode methodsFor: 'accessing' stamp: 'DF 7/21/2025 08:09:37'!
text

	| aWriteStream |
	
	aWriteStream := WriteStream on:''.
	
	self textInto: aWriteStream.
	
	^aWriteStream contents.! !

!KNode methodsFor: 'accessing' stamp: 'DF 7/21/2025 08:18:46'!
textInto: aWriteStream

	^self subclassResponsibility ! !

!KNode methodsFor: 'accessing' stamp: 'DF 7/19/2025 15:57:18'!
weight
	^self subclassResponsibility ! !

!KNode methodsFor: 'testing' stamp: 'DF 7/21/2025 08:18:32'!
isOverflow: aParentNode

	^self subclassResponsibility ! !

!KNode methodsFor: 'factory' stamp: 'DF 7/20/2025 10:03:47'!
newItem
	^self subclassResponsibility ! !

!KPart methodsFor: 'initialization' stamp: 'DF 7/19/2025 14:28:12'!
initialize

	containers := OrderedCollection new! !

!KPart methodsFor: 'testing' stamp: 'DF 7/24/2025 21:16:07'!
invariant

	self assert: (self invariant: nil neighbour: nil).		
	
	^true! !

!KPart methodsFor: 'testing' stamp: 'DF 7/26/2025 18:54:01'!
invariant: aKPage neighbour: aKParagraph

	1 to: containers size - 1 do:[:ii |
		self assert: (containers at:ii :: invariant: self neighbour: (containers at:ii+1)) ].
	
	containers notEmpty
		ifTrue:[
			self assert: (containers last invariant: self neighbour: nil)].
	
	^true
		! !

!KPart methodsFor: 'testing' stamp: 'DF 7/24/2025 23:06:52'!
isEmpty
	^containers isEmpty! !

!KPart methodsFor: 'testing' stamp: 'DF 8/2/2025 21:21:43'!
isUnderflow  
	
	^self subclassResponsibility ! !

!KPart methodsFor: 'testing' stamp: 'DF 8/2/2025 21:12:39'!
precedes: aBeginAddress before: anEndAddress
	
	aBeginAddress isEmpty
		ifTrue:[
			^true].
		
	^ aBeginAddress first < anEndAddress first or:[
		aBeginAddress first = anEndAddress first and:[
			self precedes: aBeginAddress allButFirst before: anEndAddress allButFirst ] ]! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/9/2025 12:47:36'!
adjustUnderflow: anAddress
			
	^anAddress! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 21:19:01'!
eraseFrom: aBeginAddress 

	
	" Erase all the characters that are in addresses equal to or after aBeginAddress. 
	
	aBeginAddress must never be the address of the first character in this tree (all 1's).
	
	"

	| addr  |
	
	self assert: (aBeginAddress anySatisfy:[:any | any > 1]). 
	
	self assert: aBeginAddress first <= containers size.
	
	aBeginAddress allButFirst allSatisfy:[:each | each = 1 ] ::
		ifTrue:[ 
			" Necessarily the first member of begin address is greater than 1"
			
			containers := containers copyFrom: 1 to: aBeginAddress first - 1.
			
			addr := containers at: aBeginAddress first - 1 :: lastAddress.
			
			^ self adjustUnderflow: { aBeginAddress first - 1 } , addr].
	
	addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst. 

	containers := containers copyFrom: 1 to: aBeginAddress first.
	
	^ self adjustUnderflow: { aBeginAddress first } , addr
	! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 21:19:21'!
eraseFrom: aBeginAddress to: anEndAddress

	| addr |
	
	self assert: (aBeginAddress anySatisfy:[:any | any > 1 ]).
	self assert: aBeginAddress first <= anEndAddress first.	
	self assert: anEndAddress first <= containers size.

	" Erasing in a single item. The item itself cannot be entirely erased because anEndAddress at most can
	point to the last element, but erasing does not include the last element. "
	
	aBeginAddress first = anEndAddress first
		ifTrue:[ 
			
			aBeginAddress allButFirst allSatisfy:[:each | each = 1 ] :: 
				ifTrue:[ 
					containers at: aBeginAddress first :: eraseTo: anEndAddress allButFirst.
					
					addr := containers at: aBeginAddress first - 1 :: lastAddress.
					
					^ self adjustUnderflow: { aBeginAddress first - 1 } , addr ].
				
			addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst to: anEndAddress allButFirst.
			^ self adjustUnderflow: { aBeginAddress first } , addr].
		
	" Erasing more than one item, and starting from the first char in the first item, necessarily erases
	the first item. "
	
	aBeginAddress allButFirst allSatisfy:[:each | each = 1 ] :: 
		ifTrue:[ 
			addr := containers at: aBeginAddress first - 1 :: lastAddress.
			
			containers at: anEndAddress first :: eraseTo: anEndAddress allButFirst.

			containers := (containers copyFrom: 1 to: aBeginAddress first - 1) , (containers copyFrom: anEndAddress first to: containers size).
			
			^ self adjustUnderflow: { aBeginAddress first - 1 } , addr ].
							
	" Otherwise the first item is not erased, only a part of it is erased. " 

	addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst. 

	containers at: anEndAddress first :: eraseTo: anEndAddress allButFirst.

	containers := (containers copyFrom: 1 to: aBeginAddress first) , (containers copyFrom: anEndAddress first to: containers size).

	^ self adjustUnderflow: { aBeginAddress first } , addr
	
	
	! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 17:31:33'!
eraseTo: anEndAddress 

	" Erase all the characters that are in addresses before anEndAddress. 
		
	"
		
	self assert: anEndAddress first <= containers size.
		
	containers at: anEndAddress first :: eraseTo: anEndAddress allButFirst. 
	
	containers := containers copyFrom: anEndAddress first to: containers size.
	
	self adjustUnderflow: (anEndAddress size copiesOf:1 ) asArray! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 22:02:51'!
removeItemsFrom: anInteger

	^containers removeLast: containers size - anInteger + 1! !

!KPart methodsFor: 'inserting' stamp: 'DF 8/2/2025 21:36:23'!
append: anItem  

	self assert: (anItem isKindOf: KNode).
	
	containers add: anItem.
! !

!KPart methodsFor: 'inserting' stamp: 'DF 8/2/2025 22:10:03'!
appendAll: items

	containers addAll: items.
! !

!KPart methodsFor: 'inserting' stamp: 'DF 8/6/2025 18:08:00'!
insert: aCharacter after: anAddress

	| ii cc addr |
			
	self assert: (aCharacter isKindOf: Character).
			
	ii := anAddress first.
	
	cc := containers at:ii.
	
	addr := cc insert: aCharacter after: anAddress allButFirst.
	
	cc isOverflow: self :: 
		ifTrue:[ |  anchor distance faddr | 

			" Set anchor to a stable address. 
			
			The address of the last character in the previous paragraph is always stable because
			only the paragraph at addr can rebuild and shift to the next page.
			
			If cc is the first paragraph in the page then the address of its first character is stable
			because the first line of the first paragraph in a page will never shift to the next page.
			
			"
			anchor := cc anchor: addr.
				
			distance := cc distanceFrom: anchor to: addr.
								
			self adjustOverflow: ii. 
			
			faddr := {ii},anchor. distance timesRepeat:[faddr := self next:faddr].
			
			^ faddr ].

	^{ii}, addr! !

!KPart methodsFor: 'inserting' stamp: 'DF 7/19/2025 22:17:37'!
push: anItem

	self assert: (anItem isKindOf: KNode).
	
	containers add: anItem afterIndex:0 ! !

!KPart methodsFor: 'inserting' stamp: 'DF 8/2/2025 22:20:37'!
splitAt: anAddr

	| cc aNewContainer |
	
	aNewContainer := self newItem.
	
	cc := containers at: anAddr first.
	
	"The address addr points to the item that ends with a line separator
	character. we need to move the next item and all the other items to the new container."
		
	aNewContainer appendAll: (cc removeItemsFrom: anAddr second + 1). 
		
	containers add: aNewContainer afterIndex: anAddr first.
	
	^aNewContainer ! !

!KPart methodsFor: 'addressing' stamp: 'DF 8/2/2025 18:48:36'!
firstAddress
	^ { 1 } , containers first firstAddress! !

!KPart methodsFor: 'addressing' stamp: 'DF 8/1/2025 22:07:05'!
lastAddress
	^ { containers size } , containers last lastAddress! !

!KPart methodsFor: 'addressing' stamp: 'DF 8/2/2025 20:49:48'!
next: anAddress

	| addr cc |
	
	self assert: anAddress size > 0.
	
	cc := containers at: anAddress first.
	
	addr :=  cc next: anAddress allButFirst.
	
	^addr first = (cc length + 1)
		ifTrue:[
			anAddress first + 1 <= containers size
				ifTrue:[
					{ anAddress first + 1 } , (containers at: anAddress first + 1 :: firstAddress) ]
				ifFalse:[
					{ anAddress first + 1} ] ]
		ifFalse:[
			{ anAddress first } , addr ]! !

!KPart methodsFor: 'addressing' stamp: 'DF 8/2/2025 20:57:03'!
prev: anAddress  

	| addr |
	
	self assert: anAddress first <= containers size + 1.
	
	anAddress first = containers size + 1
		ifTrue:[
			self assert: anAddress size = 1.
			^ containers last lastAddress ].
	
	addr := containers at: anAddress first :: prev: anAddress allButFirst.
	
	addr isEmpty "because anAddress alButFirst referened the first character in the container at anAddress first"
		ifTrue:[
			^anAddress first = 1
				ifTrue:[
					{}]
				ifFalse:[
					{ anAddress first - 1 } , (containers at: anAddress first - 1 :: last) ] ] .
			
	^{ anAddress first }, addr! !

!KPart methodsFor: 'addressing' stamp: 'DF 7/22/2025 10:01:44'!
resolve: anAddress  
			
	^containers at: anAddress first :: resolve: anAddress allButFirst ! !

!KPart methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:33:57'!
length

	^containers size! !

!KPart methodsFor: 'accessing' stamp: 'DF 7/20/2025 11:38:06'!
textInto: aWriteStream

	containers do:[:each | each textInto: aWriteStream ].
! !

!KPart methodsFor: 'accessing' stamp: 'DF 8/2/2025 22:21:23'!
weight

	containers isEmpty
		ifTrue:[^0].
		
	^containers sum:[:each | each weight]! !

!KDoc methodsFor: 'testing' stamp: 'DF 7/19/2025 16:05:31'!
isOverflow: aParentNode
	
	^false! !

!KDoc methodsFor: 'testing' stamp: 'DF 8/2/2025 21:21:43'!
isUnderflow  
	
	^false! !

!KDoc methodsFor: 'factory' stamp: 'DF 7/20/2025 10:23:52'!
newItem
	^KPage new! !

!KDoc methodsFor: 'erasing' stamp: 'DF 8/2/2025 23:41:04'!
adjustUnderflow: anAddress

	| aPage addr |
	
	containers isEmpty
		ifTrue:[
			^anAddress].
	
	addr := anAddress.
	
	aPage  := containers at: anAddress first.

	" The address marks the character immediately after the erased text. shifting left may
	bring more text to the container. If the last character (the one pointed to by the address)
	is a word character and the next character in the shifted container is also a word character 
	the entire word may have to move to the next container, invalidating the address. "
	
	aPage isUnderflow 
		ifTrue:[ | anchor distance |
			
			anchor := aPage anchor: anAddress allButFirst.
			
			distance := aPage distanceFrom: anchor to: anAddress allButFirst.
			
			self shiftLeft: anAddress first .
			
			addr := {anAddress first},anchor. distance timesRepeat:[ addr := self next: addr] ].
		
	" We must check the next page (if it is not the last) for underflow because when we erase a range
	of pages the first page may not underflow but the last page may.  "
	
	anAddress first + 1 < containers size and: [containers at: anAddress first + 1 :: isUnderflow ] :: 
		ifTrue:[ 
			self shiftLeft: anAddress first + 1 ].
		
	^addr! !

!KDoc methodsFor: 'erasing' stamp: 'DF 8/2/2025 21:39:05'!
shiftLeft: anIndex   

	" As long as self is not the last container, and self is underflow, move the first element of the next container to become the last container in self (perhaps splitting a part of it to avoid overflowing self) If the next container becomes empty, remove it. "
	
	| item ii |
	
	ii := anIndex.
	
	[ii < containers size and:[ (containers at:ii) isUnderflow] ]  
		whileTrue:[

			" It is possible that the container at ii is still underflow even after we append
			to it the item from the next container (for example when we append a paragraph
			it may rebuild itself and thus lose a line). 
			
			Thus we must keep taking items from the next container until the current 
			container (at ii) is not underflowed or until we have emptied all the containers after
			ii."
			
			[ ii ~= containers size and:[ (containers at:ii) isUnderflow] ]
				whileTrue:[
					
					item := containers at: ii +1 :: removeFirst: (containers at:ii).
					
					containers at: ii :: append: item .
				
					containers at: ii + 1 :: isEmpty 
						ifTrue:[
							containers removeAt: ii + 1] ].
			
			ii := ii + 1 ].
	
	! !

!KDoc methodsFor: 'inserting' stamp: 'DF 8/8/2025 21:52:50'!
adjustOverflow: anIndex 

	"Moves the last element of container at anIndex to the next container, creating a new container
	if anIndex is the last child. 
	
	Answers the address of the moved container.
	"
	
	| item ii  |
	
	ii := anIndex.
	
	[(containers at:ii) isOverflow]
		whileTrue:[
			ii = containers size
				ifTrue:[
					containers add: self newItem ].

			[(containers at:ii) isOverflow]
				whileTrue:[
					item := containers at: ii :: removeLast: self.
					containers at: ii + 1 :: push: item ].
				
			ii := ii + 1 ].
	
	^{anIndex + 1 . 1 . item length }
	! !

!KDoc methodsFor: 'inserting' stamp: 'DF 8/9/2025 10:48:25'!
insert: aCharacter after: anAddress

	| addr ii page |
		
	"insert a character to the doc assuming that the character is not a document break character"

	self assert: aCharacter isKDocSeparator not.

	aCharacter isPageSeparator 
		ifTrue:[
			^self insertPageBreakAfter: anAddress].
		
	ii := anAddress first.
	
	page := containers at:ii.
	
	addr := page insert: aCharacter after: anAddress allButFirst .
	
	" a page can underflow due to an insert if we insert a space character that makes it possible
	to squeez more tokens into the same line thus reducing the number of lines in the page. "
	
	ii < containers size and:[page isUnderflow] :: "the last page is allowed to underflow "
		ifTrue:[ 
			^self adjustUnderflow: { anAddress first}, addr].
		
	page isOverflow 	
		ifTrue:[
			|  anchor distance faddr | 

			" Set anchor to a stable address. 
			
			The address of the last character in the previous paragraph is always stable because
			only the paragraph at addr can rebuild and shift to the next page.
			
			If cc is the first paragraph in the page then the address of its first character is stable
			because the first line of the first paragraph in a page will never shift to the next page.
			
			"
			anchor := page anchor: addr.
				
			distance := page distanceFrom: anchor to: addr.
								
			self adjustOverflow: ii. 
			
			faddr := {ii},anchor. distance timesRepeat:[faddr := self next:faddr].
			
			^ faddr ].
	
	^{ anAddress first} , addr	! !

!KDoc methodsFor: 'inserting' stamp: 'DF 8/8/2025 22:01:16'!
insertPageBreakAfter: anAddress
		
	| addr page aNewPage |
		
	page := containers at: anAddress first.
	
	addr := page insertBreakCharacter: (Character codePoint:12) after: anAddress allButFirst.
	
	aNewPage := self splitAt: { anAddress first}, addr.
	
	^self adjustUnderflow: { anAddress first } , addr
	! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/9/2025 13:20:52'!
append: aParagraph  

	" Append aParagraph to the end of the page. If the page is empty or If the paragraph ends 
	with a new line then just append the entire paragraph. 
	
	Otherwise we must merge the lines of aParagraph with the lines of the last paragraph, 
	and rebuild the paragraph. 

	if the last token in the last paragraph and the first token in the appended paragraph are
	both word tokens then the resulting larger token may require a line by itself thus overflowing
	the page. 
	
	
	"
	
	| cc |
		
	self assert: (aParagraph isKindOf: KParagraph).
	
	containers isEmpty
		ifTrue:[
			^containers add: aParagraph].
			
	cc := containers last.
	
	cc lines last lastCharacter isKLineSeparator 
		ifTrue:[
			^containers add: aParagraph].
		
	"The last paragraph does not end with an newline character, therefore we must extend it
	with the lines in aParagaraph. Add all the lines from a paragraph to the end of the last paragraph 
	in the page self"
	
	cc lines addAll: aParagraph lines.

	" rebuild  the last paragraph"
	
	cc rebuild.
	
	self assert: self isOverflow not.
				
! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/8/2025 14:23:35'!
insert: aCharacter after: anAddress

	| addr |
	
	"insert a character to the page assuming that the character is not a break character"

	aCharacter isKLineSeparator ifTrue:[
		^self insertParagraphBreakAfter: anAddress. ].
	
	self assert: aCharacter isKLineSeparator not.
	
	addr := containers at: anAddress first :: insert: aCharacter after: anAddress allButFirst .
	
	^{ anAddress first} , addr	! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/8/2025 21:28:33'!
insertBreakCharacter: aCharacter after: anAddress

	| newp1 newp2 par distance text stream1 stream2 |

	self assert: aCharacter isKLineSeparator.
			
	par := containers at: anAddress first.
	
	distance := par distanceFrom: { 1 . 0 } to: anAddress allButFirst.
	
	text := par text.
	
	newp1 := self newItem.
	
	stream1 := KTokenStream new.
	
	stream1 on: (text copyFrom: 1 to: distance) asOrderedCollection, {aCharacter}.
	
	stream1 nextUpTo: newp1 width.
	
	newp1 buildFrom: stream1.
	 
	newp2 := self newItem.

	stream2 := KTokenStream new.
	
	stream2 on: (text copyFrom: distance + 1 to: text size).
	
	stream2 nextUpTo: newp2 width.
	
	newp2 buildFrom: stream2.
	
	newp2 isEmpty
		ifTrue:[
			newp2 lines add: newp2 newItem ].
		
	containers removeAt: anAddress first.
	
	containers add: newp1 afterIndex: anAddress first - 1.
	
	containers add: newp2 afterIndex: anAddress first.
	
	^{ anAddress first } , newp1 lastAddress
	! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/8/2025 21:28:54'!
insertParagraphBreakAfter: anAddress

	^self insertBreakCharacter: Character cr after: anAddress! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/8/2025 15:26:37'!
push: aKPar

	self assert: (aKPar isKindOf: KParagraph).
	
	containers isEmpty or: [ aKPar lastCharacter isKLineSeparator ] ::
		ifTrue:[containers add: aKPar afterIndex:0]
		ifFalse:[
			containers first addLinesOf: aKPar]! !

!KPage methodsFor: 'testing' stamp: 'DF 8/9/2025 10:28:19'!
invariant: aKDoc neighbour: aKPage

	self assert: (super invariant: aKDoc neighbour: aKPage).
	
	self assert: (self isOverflow not).
	
	aKPage
		ifNil:[^true].
		
	self assert: (self isUnderflow not). 
	
	^true
		! !

!KPage methodsFor: 'testing' stamp: 'DF 8/8/2025 12:58:17'!
isOverflow

	^self weight > 5! !

!KPage methodsFor: 'testing' stamp: 'DF 8/2/2025 23:24:19'!
isUnderflow  

	| addr |
	
	containers isEmpty
		ifTrue:[^true].
		
	addr :=  self lastAddress.
	
	addr last = 0 ifTrue:[^true]. "the page has not characters in it"

	"a page that ends with an explicit page separator never underflows"
	
	(self resolve: addr) isPageSeparator 
		ifTrue:[^false].
		
	^self weight < 5! !

!KPage methodsFor: 'factory' stamp: 'DF 7/20/2025 10:24:04'!
newItem
	^KParagraph new! !

!KPage methodsFor: 'erasing' stamp: 'DF 8/9/2025 12:47:55'!
adjustUnderflow: anAddress

	" The address points to a paragraph that had some of its lines erased. if the paragraph was terminated with a
	page break we must join it with the next paragraph. "
	
	anAddress first < containers size and:[ containers at: anAddress first :: lastCharacter isKLineSeparator not] ::
		ifTrue:[ | par1 par2 aNewPar stream distance addr |
			
			par1 := containers at: anAddress first.
			par2 := containers at: anAddress first + 1.
			
			distance := par1 distanceFrom: #(1 0) to:  anAddress allButFirst.

			"this is not the last paragraph but it does not end with a line separator so we must join it with the
			next paragraph"
			
			stream := KTokenStream new.
			
			stream on: (par1 text) asOrderedCollection , (par2 text) asOrderedCollection.
			
			stream nextUpTo: par1 width.
			
			aNewPar := KParagraph new.
			
			aNewPar buildFrom: stream.
			
			" remove the two paragraphs and insert the new one instead "
			
			containers removeAt: anAddress first.
			containers removeAt: anAddress first.
			
			containers add: aNewPar afterIndex: anAddress first - 1.
			
			addr := { anAddress first . 1 . 0 }.
			
			distance timesRepeat:[ addr := self next: addr ].
			
			^addr ].
			
	^anAddress! !

!KPage methodsFor: 'erasing' stamp: 'DF 7/25/2025 14:45:08'!
removeFirst: aPage

	"if the weight of the first paragraph is less than the underweight (available space) in aPage
	move the entire paragraph to aPage. Otherwise split the paragraph and move only enough
	lines from the beginning of aPar to fill aPage without overflowing it. 
	"
	
	| aPar |
	
	aPar := containers first.
	
	^aPar weight <= aPage underweight 
		ifTrue:[
			containers removeFirst]
		ifFalse:[
			aPar splitBefore: aPage underweight].  
			! !

!KPage methodsFor: 'erasing' stamp: 'DF 8/8/2025 21:51:09'!
removeLast: aDoc

	| aPar |
	
	aPar := containers last.
	
	^aPar weight <= self overweight 
		ifTrue:[
			containers removeLast]
		ifFalse:[
			aPar splitAfter: self overweight].  
			! !

!KPage methodsFor: 'addressing' stamp: 'DF 8/8/2025 13:09:30'!
anchor: anAddress

	"answer a stable address that precedes anAddress but is close to it as possible. "
	
	^anAddress first = 1 "the address points to the first paragraph in the page"
		ifTrue:[
			
			" the address of the first character in the first paragraph is stable
			because the first line of the first paragraph in a page will never shift to the next page."

			#(1 1 0)]
		ifFalse:[ 
			
			"Otherwise answer the address of the last character in the previous paragraph"
			
			{ anAddress first  -1 }, (containers at: anAddress first - 1 :: lastAddress ) ]! !

!KPage methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:23:00'!
overweight

	^self weight - 5! !

!KPage methodsFor: 'accessing' stamp: 'DF 8/2/2025 22:00:59'!
paragraphs
	^containers! !

!KPage methodsFor: 'accessing' stamp: 'DF 7/24/2025 18:10:58'!
underweight

	^5 - self weight ! !

!KParagraph methodsFor: 'initialization' stamp: 'DF 8/16/2025 21:29:11'!
initialize

	lines := OrderedCollection new.
		
	leftMargin := 6.
	
	rightMargin := 6+8! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/16/2025 21:30:48'!
buildFrom: aTokenStream
	
	[aTokenStream first notEmpty ]
		whileTrue:[
			lines add: self newItem.
			lines last buildFrom: aTokenStream limitBy: self width ].
		
	! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/16/2025 22:04:12'!
insert: aCharacter after: anIndex

	"insert a character to the paragraph assuming that the character is not a line separator "
	
	| text  |
	
	self assert: aCharacter isKLineSeparator not.
	 
	text := self text asOrderedCollection.
	
	text add: aCharacter afterIndex: anIndex.
		
	self rebuildFromText: text.! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/16/2025 22:03:56'!
rebuildFromText: aString

	| stream |
	
	stream := KTokenStream new.
	
	stream on: aString.

	stream nextUpTo: self width.
	
	lines removeAll.

	self buildFrom: stream.
! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 8/18/2025 11:01:41'!
eraseFrom: abeginIndex to: anEndIndex

	| text left right |
	
	self assert: abeginIndex > 1.
	
	text := self text.
	
	left := text copyFrom: 1 to: abeginIndex - 1.
	
	right := text copyFrom: anEndIndex to: text size.
	
	self rebuildFromText: left, right.
	! !

!KParagraph methodsFor: 'testing' stamp: 'DF 8/18/2025 11:55:35'!
isLineBreaking

	^ lines size > 0 and: [lines last isLineSeparating ]! !

!KParagraph methodsFor: 'testing' stamp: 'DF 8/18/2025 12:13:05'!
notEmpty
	^lines notEmpty and: [lines first notEmpty]! !

!KParagraph methodsFor: 'factory' stamp: 'DF 7/20/2025 10:24:19'!
newItem
	^KLine new! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 12:14:35'!
charAt: anIndex

	| ii jj |
	
	jj := anIndex.
	
	ii := 1.
	
	[jj > (lines at:ii) length] 
		whileTrue:[
			jj := jj - (lines at:ii) length.
			ii := ii + 1 ].
	
	^lines at:ii :: charAt: jj
	
! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 16:57:45'!
charIndexToLineIndex: anIndex

	| ii pp |
	
	ii := anIndex. pp := 1.
	
	[ii > ((lines at:pp) length) ]
		whileTrue:[
			ii := ii - ((lines at:pp) length).
			pp := pp + 1].

	^ { pp . ii }! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/16/2025 21:47:46'!
length
	^ lines sum:[:each | each length ] ifEmpty:0! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 16:21:04'!
lineAt: anIndex
	^ lines at: anIndex! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 16:20:18'!
numLines
	^lines size! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/16/2025 21:31:29'!
text

	| aWriteStream |
	
	aWriteStream := WriteStream on:''.
	
	self textInto: aWriteStream.
	
	^aWriteStream contents.! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 11:34:09'!
textFrom: aBeginIndex 

	| text |
	
	text := self text.
	
	^self text copyFrom: aBeginIndex to: text size! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 11:33:50'!
textFrom: aBeginIndex to: anEndIndex

	^self text copyFrom: aBeginIndex to: anEndIndex - 1! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/16/2025 21:31:19'!
textInto: aWriteStream

	lines do:[:each | each textInto: aWriteStream ].
! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 7/19/2025 15:54:50'!
width
	^rightMargin - leftMargin! !

!KRepository methodsFor: 'accessing' stamp: 'DF 8/2/2025 20:39:01'!
begin

	^#(1 1 1 1 0)  "doc . page . paragraph . line . char "
			 ! !

!KRepository methodsFor: 'accessing' stamp: 'DF 8/2/2025 20:55:19'!
end

	" Answer one address past the last address in the tree. 
	
	( ( ab ) (cde) ) ( (fg) (hi) ) 
		
	i's address is #(2 2 2) 
	
	the next address is #(3)
	
	
	"
	
	^{ root length + 1  } 
! !

!KRepository methodsFor: 'accessing' stamp: 'DF 7/26/2025 18:52:34'!
root
	^root! !

!KRepository methodsFor: 'accessing' stamp: 'DF 7/25/2025 21:43:15'!
textFrom: aBeginAddr to: anEndAddr

	| bb aWriteStream |
	
	bb := aBeginAddr.
	
	aWriteStream := WriteStream on: ''.
	
	[bb ~= anEndAddr]
		whileTrue:[
			aWriteStream nextPut: (root resolve:bb).
			bb := root next: bb ].
		
	^aWriteStream contents! !

!KRepository methodsFor: 'initialization' stamp: 'DF 8/2/2025 20:39:35'!
initialize

	"
	
	Initially the repository has a single document with a single page, a single paragraph and a single
	empty line. 
	
	Thus the address for the next character to insert into the repository is
	
	#(1 1 1 1 0)
	
	"
	
	| lib doc page par line |
	
	lib := KLibrary new.
	doc := KDoc new.
	page := KPage new.
	par := KParagraph new.
	line := KLine new.
	
	par push: line.
	page push: par.
	doc push: page.
	lib push: doc.
	
	root := lib
	
	! !

!KRepository methodsFor: 'editing' stamp: 'DF 8/2/2025 21:07:29'!
eraseFrom: aBeginAddr to: anEndAddr

	self assert: (root precedes: aBeginAddr before: anEndAddr).
	
	aBeginAddr = anEndAddr 
		ifTrue:[
			^aBeginAddr].
		
	^anEndAddr = self end
		ifTrue:[			
			aBeginAddr = root firstAddress ::
				ifTrue:[ "erase all the text in the repository"
					self initialize.
					self begin ]
				ifFalse:[
					root eraseFrom: aBeginAddr ] ]
		ifFalse:[
			aBeginAddr = root firstAddress ::
				ifTrue:[
					root eraseTo: anEndAddr.
					self begin ]
				ifFalse:[
					root eraseFrom: aBeginAddr to: anEndAddr ] ]! !

!KRepository methodsFor: 'editing' stamp: 'DF 8/8/2025 20:04:16'!
insert: aCharacter after: anAddress

	| addr |
	
	addr := anAddress last ~= 0 and:[ ( root resolve:anAddress ) isKLineSeparator ] ::
			ifTrue:[ | naddr | 
				naddr := root next:anAddress.
			
				" naddr will point to the first character in the next line. We want the address
				that points one place before the first character. Thus we replace the last 
				component (the character's position) with 0."
			
				naddr at: naddr size put: 0. naddr ]
			ifFalse:[
				anAddress].
		
	^root insert: aCharacter after: addr.
	
! !

!KRepository methodsFor: 'searching' stamp: 'DF 7/25/2025 21:26:17'!
match: aString at: anAddress end: anEndAddr

	^self notMatch: aString at: anAddress end: anEndAddr  :: not! !

!KRepository methodsFor: 'searching' stamp: 'DF 7/25/2025 21:22:55'!
notMatch: aString at: anAddress end: anEndAddr

	| begin ii |
	
	begin := anAddress.
	
	ii := 1.
	
	[begin ~= anEndAddr and:[ii <= aString size] and: [ (root resolve:begin) = aString at: ii ] ]
		whileTrue:[
			begin := root next: begin.
			ii := ii + 1].
		
	^ ii ~= aString size + 1! !

!KRepository methodsFor: 'searching' stamp: 'DF 7/25/2025 21:34:30'!
searchFrom: anAddress backwardFor: aString

	| end begin start |
	
	start := root first.
	
	end := root next: root last.
	
	begin := anAddress.
	
	[ ( self notMatch: aString at: begin end: end) and: [ begin ~= start ] ]
		whileTrue:[
			begin := root prev: begin ].
		 
	self match: aString at:begin end: end ::
		ifTrue:[
			^begin ].
		
	begin := self last.
	
	[begin ~= anAddress and: [self notMatch: aString at: begin end: end ] ]
		whileTrue:[
			begin := root prev: begin].
		
	^begin
	
	 ! !

!KRepository methodsFor: 'searching' stamp: 'DF 7/25/2025 21:25:05'!
searchFrom: anAddress forwardFor: aString

	| end begin |
	
	end := root next: root last.
	
	begin := anAddress.
	
	[begin ~= end and: [self notMatch: aString at: begin end: end ] ]
		whileTrue:[
			begin := root next: begin ].
		 
	begin ~= end
		ifTrue:[
			^begin ].
		
	begin := self first.
	
	[begin ~= anAddress and: [self notMatch: aString at: begin end: end ] ]
		whileTrue:[
			begin := root next: begin].
		
	^begin
	
	 ! !

!KRepository methodsFor: 'testing' stamp: 'DF 7/26/2025 18:48:15'!
invariant

	^root invariant! !

!KTokenStream methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 10:02:06'!
first
	^head! !

!KTokenStream methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 10:19:37'!
nextUpTo: anIntegerLimit

	| cc |
	
	head := OrderedCollection new.
	
	cc := stream next.
	
	cc isNil
		ifTrue:[
			^self].
		
	cc isKSeparator 
		ifTrue:[
			head add: cc. ^self ].
		
	[ cc notNil and:[ cc isKSeparator not ] and: [ head size < anIntegerLimit ] ]
		whileTrue:[
			head add: cc.
			cc := stream next ].
	
	cc notNil
		ifTrue:[
			stream skipBack].
		! !

!KTokenStream methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 10:04:23'!
on: anOrderedSequence

	stream := ReadStream on: anOrderedSequence.
! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/5/2025 20:01:18'!
doErase: aGenerator

	|  len ab ae pp ptext |
	
	len := (1/ ( (1/text size) + aGenerator next)) ceiling.
	
	ab := (text size + 1) atRandom.
	
	ae := ab + len min: text size + 1.
			
	"erase the parts at both the abstract and concrete sytems. "
	
	pp := lib eraseFrom: ab to: ae.

	self assert: lib invariant.
	
	ptext := text.
		
	text := text eraseFrom:ab to:ae.
	
	"check that the abstract and concrete systems correspond"
	
	self assert: text  = lib text.
	
	^ae - ab
! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/5/2025 19:59:29'!
doInsert: aGenerator

	| cc  ii |
		
	"We draw at random two numbers. one is the character to insert, the other the position after
	which we insert the character."
	
	cc := self drawCharacterFrom: aGenerator.
	
	" Select an abstract index and a concrete address that corresponds to this index "
	
	ii := (aGenerator next * text size) floor. "we use floor to have a chance to insert a character at the very start of the text (index 0)"
	
	lib insert: cc after: ii.
	
	text := text copyReplaceFrom:ii+1 to:ii with: cc asString. 
		
	self assert: lib text = text.

	self assert: lib invariant.


	
	! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/5/2025 19:57:54'!
drawCharacterFrom: aGenerator

	"We a character to insert based on the following table
	
	word character (a , b)			0.8
	space 						0.1889
	new line 					0.01
	new page 					0.001
	
	"

	|  xx |
	
	xx := aGenerator next. "a number drawn randomlly from [0,1)"

	^xx < 0.8 
		ifTrue:[
			aGenerator next < 0.5
				ifTrue:[
					$a]
				ifFalse:[
					$b] ] 
		ifFalse:[
			xx < (0.8  + 0.1889)
				ifTrue:[
					Character space]
				ifFalse:[
					xx < (0.8 + 0.1889 + 0.01)
						ifTrue:[
							Character cr]
						ifFalse:[
	 						Character codePoint: 12] ] ] ! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/5/2025 19:58:18'!
setUp


	lib := KLibrary new.
	
	text := ''. "the abstract representation of the text in the repository"
! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/5/2025 19:55:34'!
testEverything

	| aGenerator iteration count maxErase countErase maxCount |

	self assert: lib text = text.

	self assert: lib invariant.
	
	iteration := 0. "keeps track of how many iterations the test did"
	
	count := 0. "the number of characters in the repository"
	
	maxErase := 1. "the largest subsequence that was erased so far"
	
	countErase := 1. "the number of characters that were erased and not inserted yet. This is used to ensure that after we erase k characters we insert k - 1 characters "
	
	maxCount := 1000. "the maximal number of characters in the repository during the test."
	
	self assert: count = text size.
	
	aGenerator := Random new.

	2000 timesRepeat:[ | pp |  

		" Select either to insert a character or to erase a range depending on how close we 
		are to the maximal desired text size or if there is a debt from a previous erase 
		operation. If an erase operation erased k characters then we have a debt of k-1 characters
		to insert before we can consider erasing again."
		
		pp := (0 - (2 ln * count/ maxCount) ) exp.
		
		aGenerator next < pp or:[countErase > 1] ::
			ifTrue:[
				self doInsert: aGenerator.
				
				count := count + 1. 
				
				countErase > 1 
					ifTrue:[countErase := countErase - 1] ]
			ifFalse:[ 

				countErase := self doErase: aGenerator.

				maxErase := countErase max: maxErase.
				
				count := count - countErase.].

		self assert: count = text size.
		
		iteration := iteration + 1.

		"(Delay forMilliseconds: 50) wait" ] "fork".
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 14:59:55'!
testEraseBetweenParagraphs

	| t1 t2 text index lib |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	index := 0.
	
	t2 do:[:each | lib insert:each after: index. index := index + 1.  ].

	index := 0.
	
	t1 do:[:each | lib insert:each after: index. index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = text.
	
	self assert: lib invariant.
	
	" erase in the same paragraph "
	
	lib eraseFrom: 12 to: 56.
	
	self assert: lib text = ( (text copyFrom: 1 to:11), (text copyFrom: 56 to: text size) ).
	
	self assert: lib invariant.
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 15:00:36'!
testEraseInParagraph

	| t1 t2 text index lib |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	index := 0.
	
	t2 do:[:each | lib insert:each after: index. index := index + 1.  ].

	index := 0.
	
	t1 do:[:each | lib insert:each after: index. index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = text.
	
	" erase in the same paragraph "
	
	lib eraseFrom: 18 to: 81.
	
	self assert: lib text = ( (text copyFrom: 1 to:17), (text copyFrom: 81 to: text size) ).
	
	self assert: lib invariant.
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 12:15:04'!
testInsert

	| text lib |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.

	self assert: lib invariant.
	
	0 to: text size - 1 do:[:ii | lib insert: (text at:ii + 1) after: ii.  ].
	
	self assert: lib text = text.
	
	self assert: lib invariant.
	
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:30:04'!
testInsertBreaks

	| t1 t2 index lib |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 0.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 0.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	self assert: lib text = (t1,t2).
	
	self assert: lib invariant.
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 17:01:36'!
testIterators

	| t1 t2 text index lib bb ee |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 0.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 0.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = text.
	
	self assert: lib invariant.

	bb := lib begin.
	
	ee := lib end.
	
	index := 1.
	
	[bb ~= ee]
		whileTrue:[
			self assert: (bb char = (text at: index)).
			bb next.
			index := index + 1 ].
	
	bb := lib begin.
	
	index := text size + 1.
	
	[ee ~= bb] 
		whileTrue:[
			ee prev.
			index := index - 1.
			self assert: (ee char = (text at: index)) ].
	
	1 to: text size do:[:each | 
		bb := lib charIndexToIterator: each.
		self assert: bb char = (text at:each) ].
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:50:38'!
testRegex

	| t1 t2 text index lib aKStream aMatcher |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 0.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 0.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = text.
	
	self assert: lib invariant.

	aKStream := KForwardStream on: lib begin.
	
	aMatcher := RxMatcher forString: '.*himself'.
	
	self assert: (aMatcher matchesStreamPrefix: aKStream).
	
	
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 18:00:04'!
testStream

	| t1 t2 text index lib aKStream aStream |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 0.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 0.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = text.
	
	self assert: lib invariant.

	aKStream := KForwardStream on: lib begin.
	
	aStream := ReadStream on: text.
	
	[aKStream atEnd]
		whileFalse:[ | cc kc |
			self assert: aStream atEnd not.
			cc := aStream next.
			kc := aKStream next.
			self assert: cc = kc.
			cc := aStream peek.
			kc := aKStream peek.
			self assert: cc = kc.
			 ].
		
	self assert: aStream atEnd.

	aKStream := KBackwardStream on: lib end.
	
	index := text size.
	
	[aKStream atEnd]
		whileFalse:[ | cc |
			self assert: index > 0.
			cc := aKStream next.
			self assert: cc = (text at:index).
			index := index - 1].
	
	self assert: index = 0.

	! !

!TestKParagraph methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 11:03:21'!
testErase

	| text par |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	par := KParagraph new.
	
	0 to: text size - 1 do:[:ii | par insert: (text at:ii + 1) after: ii.  ].
	
	self assert: par text = text.

	par eraseFrom: 5 to: 173.
	
	self assert: par text = ((text copyFrom:1 to: 4) , (text copyFrom: 173 to: text size)).
	! !

!TestKParagraph methodsFor: 'as yet unclassified' stamp: 'DF 8/16/2025 21:39:42'!
testInsert

	| text par |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	par := KParagraph new.
	
	0 to: text size - 1 do:[:ii | par insert: (text at:ii + 1) after: ii.  ].
	
	self assert: par text = text.
! !

!TestKTokenStream methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 10:21:33'!
test

	| aKTokenStream |
	
	aKTokenStream := KTokenStream new.
	
	aKTokenStream on: 'aa bba  aba' , Character cr asString, 'ab ', Character lf asString, 'bba ', 'ababbab'.

	aKTokenStream nextUpTo:5.
	
	self assert: aKTokenStream first = 'aa' asOrderedCollection .

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {Character space} asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = 'bba' asOrderedCollection .

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {Character space} asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {Character space} asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = 'aba' asOrderedCollection .
	
	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {Character cr} asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = 'ab' asOrderedCollection .

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {Character space} asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {Character lf} asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = 'bba' asOrderedCollection .

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {Character space} asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = 'ababb' asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = 'ab' asOrderedCollection.

	aKTokenStream nextUpTo:5.

	self assert: aKTokenStream first = {} asOrderedCollection.
	! !

!CharacterSequence methodsFor: '*Kaeru-unittest' stamp: 'DF 6/19/2025 18:35:16'!
eraseFrom: bIndex to: eIndex

	^ self copyReplaceFrom: bIndex to: eIndex - 1 with: ''! !

!String methodsFor: '*Kaeru-*Regex-Core' stamp: 'Df 9/5/2025 21:49:09'!
asRegexLiteral

	"answer a version of self where all the special regex characters in self are preceded with a backslash character"
	
	| special aWriteStream |
	
	special := Set new.
	
	'()[].*+?|$^:\' do:[:each | special add: each].
	
	aWriteStream := WriteStream on: ''.
	
	self do:[:each |
		special includes: each 
			:: ifTrue:[
				aWriteStream nextPut: $\ ].
		aWriteStream nextPut: each ].
	
	^aWriteStream contents! !

!Integer methodsFor: '*Kaeru-enumerating' stamp: 'DF 7/20/2025 11:09:43'!
copiesOf: anObject

	"answer a sequence of self copies of anObject "
	
	| anOrderedCollection |
	
	anOrderedCollection := OrderedCollection new.
	
	self timesRepeat:[
		anOrderedCollection add: anObject ].
	
	^anOrderedCollection ! !

!Character methodsFor: '*Kaeru-testing' stamp: 'DF 8/2/2025 23:18:12'!
isKDocSeparator
	^self = Character escape ! !

!Character methodsFor: '*Kaeru-testing' stamp: 'DF 8/2/2025 23:18:06'!
isKLineSeparator

	^self isLineSeparator or:[self isKDocSeparator] ! !

!Character methodsFor: '*Kaeru-testing' stamp: 'DF 8/7/2025 16:00:20'!
isKSeparator

	^self isSeparator or:[self isKDocSeparator] ! !

!Character methodsFor: '*Kaeru-testing' stamp: 'DF 8/2/2025 23:34:43'!
isPageSeparator

	^self codePoint = 12 "form feed"
	or: [self isKDocSeparator ]! !
