'From Cuis7.3 [latest update: #7041] on 12 September 2025 at 1:45:23 pm'!
'Description '!
!provides: 'Kaeru' 1 504!
!requires: 'Regex-Core' 1 6 nil!
SystemOrganization addCategory: #Kaeru!
SystemOrganization addCategory: 'Kaeru-Keyboard'!
SystemOrganization addCategory: #'Kaeru-Morphic'!


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
	instanceVariableNames: 'paragraphs border pageSize'
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

!classDefinition: #KParagraph category: #Kaeru!
Object subclass: #KParagraph
	instanceVariableNames: 'leftMargin rightMargin lineHeight lines'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KParagraph class' category: #Kaeru!
KParagraph class
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

!classDefinition: #KaeruController category: 'Kaeru-Keyboard'!
Object subclass: #KaeruController
	instanceVariableNames: 'master mapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruController class' category: 'Kaeru-Keyboard'!
KaeruController class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditorController category: 'Kaeru-Keyboard'!
KaeruController subclass: #KaeruEditorController
	instanceVariableNames: 'state leapLeft leapRight leapAgain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruEditorController class' category: 'Kaeru-Keyboard'!
KaeruEditorController class
	instanceVariableNames: ''!

!classDefinition: #KaeruHelpController category: 'Kaeru-Keyboard'!
KaeruController subclass: #KaeruHelpController
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruHelpController class' category: 'Kaeru-Keyboard'!
KaeruHelpController class
	instanceVariableNames: ''!

!classDefinition: #KaeruMasterController category: 'Kaeru-Keyboard'!
KaeruController subclass: #KaeruMasterController
	instanceVariableNames: 'active controllers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruMasterController class' category: 'Kaeru-Keyboard'!
KaeruMasterController class
	instanceVariableNames: ''!

!classDefinition: #KaeruKeyboardMapper category: 'Kaeru-Keyboard'!
Object subclass: #KaeruKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruKeyboardMapper class' category: 'Kaeru-Keyboard'!
KaeruKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxKeyboardMapper category: 'Kaeru-Keyboard'!
KaeruKeyboardMapper subclass: #LinuxKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'LinuxKeyboardMapper class' category: 'Kaeru-Keyboard'!
LinuxKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxRaspiKeyboardMapper category: 'Kaeru-Keyboard'!
LinuxKeyboardMapper subclass: #LinuxRaspiKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'LinuxRaspiKeyboardMapper class' category: 'Kaeru-Keyboard'!
LinuxRaspiKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #KaeruKeyboardStateMachine category: 'Kaeru-Keyboard'!
Object subclass: #KaeruKeyboardStateMachine
	instanceVariableNames: 'leapLeft leapRight leapAgain mapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruKeyboardStateMachine class' category: 'Kaeru-Keyboard'!
KaeruKeyboardStateMachine class
	instanceVariableNames: ''!

!classDefinition: #KaeruKeyboardTester category: 'Kaeru-Keyboard'!
PlacedMorph subclass: #KaeruKeyboardTester
	instanceVariableNames: 'controller'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruKeyboardTester class' category: 'Kaeru-Keyboard'!
KaeruKeyboardTester class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditorMorph category: #'Kaeru-Morphic'!
ColoredBoxMorph subclass: #KaeruEditorMorph
	instanceVariableNames: 'rulerFont statusFont dx showCursor textFont rulerH rulerY textw texth textr wc textx klib dy cursor window numLines'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruEditorMorph class' category: #'Kaeru-Morphic'!
KaeruEditorMorph class
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

!KaeruKeyboardTester commentStamp: '<historical>' prior: 0!
The editor controller can be in one of the following states:

1. editing

when in this state pressing printable keys results in adding them to the text. Pressing a leap key
transitions to a search state

2. search

as long as the leap key is pressed pressing printable keys results in adding them to the search pattern. when
the leap key is realeased the machine transitions back to the editing state.

pressing both leap keys 

this necessarily means that one is pressed after the other. !

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

!KIterator methodsFor: 'testing' stamp: 'Df 9/11/2025 18:14:03'!
< aKIterator

	^ self <= aKIterator and:[self ~= aKIterator ]! !

!KIterator methodsFor: 'testing' stamp: 'Df 9/8/2025 21:24:44'!
<= aKIterator

	self assert: (aKIterator isKindOf: self class).
	
	self assert: pars == aKIterator privPars.

	parIndex < aKIterator privParIndex ifTrue:[^true].
	
	parIndex > aKIterator privParIndex ifTrue:[^false].
	
	" parIndex = aKIterator parIndex "
	
	lineIndex < aKIterator privLineIndex ifTrue:[^true].

	lineIndex > aKIterator privLineIndex ifTrue:[^false].

	" lineIndex = aKIterator lineIndex "
	
	^ charIndex <= aKIterator privCharIndex 	! !

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

!KIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 12:07:31'!
advance: anInteger

	anInteger timesRepeat: [self next].
	
	^self! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 11:38:15'!
attributes

	^ pars at: parIndex :: attributes! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:30:44'!
char

	^ pars at: parIndex :: lineAt: lineIndex :: charAt: charIndex! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/8/2025 18:06:28'!
line

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	pars at: parIndex :: lineAt: lineIndex :: textInto: aWriteStream.
	
	^ aWriteStream contents.
	! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:28:35'!
next

	charIndex <  (pars at: parIndex :: lineAt: lineIndex :: length )
		ifTrue:[
			^self privNextChar ].
		
	lineIndex <  (pars at: parIndex :: numLines )
		ifTrue:[
			^self privNextLine ].
	
	self privNextPar! !

!KIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/8/2025 21:30:29'!
nextLine

	lineIndex <  (pars at: parIndex :: numLines )
		ifTrue:[
			charIndex := pars at: parIndex :: lineAt: lineIndex :: length.
			^self privNextLine ].
	
	charIndex :=  pars at: parIndex :: lineAt: lineIndex :: length.
	
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

!KIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 12:07:43'!
retreat: anInteger

	anInteger timesRepeat: [self prev].
	
	^self! !

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

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/12/2025 11:36:39'!
charIndexToLineIndex: aCharIndex

	" Answer the line index and line offset of the line that holds the character at aCharIndex.
	
	We assume that aCharIndex refers to a character position in the text, that is, 
	aCharIndex is not past the end of the text.
	
	"
	
	| charIndex lineIndex parIndex pp |
	
	charIndex := aCharIndex.
	
	lineIndex := 0.
	
	parIndex := 1.
	
	[ parIndex<= paragraphs size and: [ paragraphs at: parIndex :: length < charIndex] ]
		whileTrue:[ 
			lineIndex := lineIndex + (paragraphs at: parIndex :: numLines).			
			charIndex := charIndex - (paragraphs at: parIndex :: length ).			
			parIndex := parIndex  + 1. ].
		
	" As we assume that aCharIndex refers to a character in the text, we may assume that
	parIndex <= paragraphs size and therefore paragraphs at: parIndex :: length > charIndex.
	Therefore we only need to find the line index that corresponds to charIndex in this paragraph"
	
	pp := paragraphs at: parIndex :: charIndexToLineIndex: charIndex.
	
	^ { lineIndex + pp first . pp second . paragraphs at: parIndex :: attributes }
	! !

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

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/11/2025 17:52:42'!
lineIndexToIterator: anIndex

	| pi li iterator |
	
	pi := self lineIndexToParIndex: anIndex.
	
	li := pi second.
	
	iterator := KIterator new.
	
	iterator pars: paragraphs ; privParIndex: pi first ; privLineIndex: li  ; privCharIndex: 1. 
	
	^iterator! !

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/12/2025 13:20:39'!
lineIndexToParIndex: aLineIndex

	" Answer a 4 member tuple that holds the following position information related to aLineIndex:
	
	1. the paragraph index
	2. the line index in the paragraph 
	3. the page number
	4. the line number in the page

	we count both page numbers and line numbers in the page from 0.
	
	For example, if there are 3 paragraphs, each with 10 lines, and the page size is 10 half lines (5 lines), then
	
	line par page page line
	1    1    0       0
	2    1    0       2
	3    1    0       4
	4    1    0       6
	5    1    0       8
	6    1    1       0
	7    1    1       2
	8    1    1       4
	9    1    1       6
	10  1    1       8
	11  2    2       0
	12  2    2       2
	
	self lineIndexToParIndex: 12 = { 2 . 2 . 2 . 2 }.
	
	The page number is calculated as (12 - 1) * 2 (22 half lines starting from 0) div 10 = 2
	The line number in the page is 22 mod 10 = 2.
	
	This is assuming that no paragraph ends with a page break. In case that a paragraph ends with a page 
	break we have to increment the number of pages by 1 and reset the page line number to 0.
	
	For example, if there are 3 paragraphs, each with 7 lines, and the page size is 10 half lines (5 lines), and
	the first paragraph ends with a page break, then

	line par page page line
	1    1    0       0
	2    1    0       2
	3    1    0       4
	4    1    0       6
	5    1    0       8
	6    1    1       0
	7    1    1       2
	8    2    2       0
	9    2    2       2
	10  2    2       4
	11  2    2       6
	12  2    2       8
	
	self lineIndexToParIndex: 12 = { 2 . 2 . 2 . 8 } 
	
	If aLineIndex exceeds the number of lines in the library, answer the remainder. For example,
		
	self lineIndexToParIndex: 31 = { 4 . 1 . 6 . 0 }.
	
	This behavior gives the correct result when we pass aLineIndex that marks one line past the end of the text in the library. "
	
	| par nlines ii pg pp jj lineH |
	
	ii := aLineIndex. 
	
	pp := 0. " page number "
	
	jj := 0. " line number in page (page offset) "
	
	pg := 1.
	
	par := paragraphs at:pg.
	
	nlines := par numLines.
	lineH := par attributes second.
	
	[ pg <= paragraphs size and: [ii > nlines ] ]
		whileTrue:[ 
			ii := ii - nlines.
			pp := pp + ((jj + (nlines * lineH)) div: pageSize).
			jj := (jj + (nlines * lineH)) mod: pageSize.
			pg := pg + 1.
			par := paragraphs at:pg.
			nlines := (paragraphs at:pg) numLines.
			lineH := par attributes second ].

	pp := pp + ((jj + (ii * lineH)) div: pageSize).
	jj := (jj + (ii * lineH)) mod: pageSize.
	
	^ { pg . ii .pp . jj }! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 8/16/2025 21:53:49'!
insert: aCharacter after: anIndex

	aCharacter isKLineSeparator 
		ifTrue:[
			self insertBreakCharacter: aCharacter after: anIndex]
		ifFalse:[
			self insertLetter: aCharacter after: anIndex]
		
	! !

!KLibrary methodsFor: 'inserting' stamp: 'Df 9/12/2025 13:44:44'!
insertBreakCharacter: aCharacter after: anIndex

	"Find the paragraph that corresponds to the index and the offset in the paragraph's text. we assume that
	the index references a character in one of the paragraphs (that is, it is not larger than the total characters
	in the library.
	
	There are three cases to consider:
	
	1. We insert the break in the middle of the paragraph.
	
	In this case we split the paragraph's text at the offset. Add the break character to the end of the first part and rebuild the paragraph just from the first part. Create a new paragraph and build it from the second part. Add the new paragraph after the current paragraph.
	
	2. We insert the break at the end of the paragraph and the paragraph does not end with a page break.
	
	In this case we just append the break character to the end of the last line.

	3. We insert the break at the end of the paragraph and the paragraph ends with a page break.
	
	In this case we create a new paragraph that holds the page break and append it after the current paragraph.
	
	"
	
	| pi ii pp text left right newPar |
	
	pi := self charIndexToParIndex: anIndex.
	
	pp := pi first. ii := pi second. 
		
	text := (paragraphs at:pp) text.

	
	left := text copyFrom:1 to: ii.
	right := text copyFrom: ii+1 to: text size.

	text at: ii :: isKLineSeparator 
		ifTrue:[
			right := { aCharacter } , right]
		ifFalse:[
			left := left, { aCharacter } ].
		
	(paragraphs at:pp) rebuildFromText: left asOrderedCollection.
	
	right notEmpty
		ifTrue:[
			newPar := self newItem.
	
			newPar rebuildFromText: right.
	
			paragraphs add: newPar afterIndex: pp].
	
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

!KLibrary methodsFor: 'initialization' stamp: 'Df 9/12/2025 12:32:55'!
initialize

	paragraphs := OrderedCollection new.
	
	paragraphs add: self newItem.
	
	border := 1.
	
	pageSize := 10. " in half lines. 10 half lines, equals 5 lines "! !

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

!KLibrary methodsFor: 'searching' stamp: 'Df 9/6/2025 12:32:53'!
searchFrom: anAddress backwardFor: aString

	" Search backward starting from anAddress iterator for a substring in text that is equal to aString. If not found
	search again from the end. If found, answer an iterator marking the first character of the substring, 	otherwise answer an iterator marking the end of text. 
	
	For example, if lib text = 'once upon a time in a galaxy far far away' then 
	
	lib searchFrom: 1 backwardFor: 'upon' 
	
	anwsers 6.

	lib searchFrom: 6 backwardFor: 'once' 
	
	anwsers 1.

	lib searchFrom: 1 backwardFor: 'zize' 
	
	anwsers 42.	"
	
	| regex aKStream aMatcher result |
	
	regex := '.*' , aString reverse asRegexLiteral.
	
	aKStream := KBackwardStream on: anAddress.
	
	aMatcher := RxMatcher forString: regex.
	
	result := aMatcher matchesStreamPrefix: aKStream.
	
	result ifTrue:[
		
		"because we use a backward stream the position answered by aMatcher is on the beginning of the substring:
		
		for example, looking for 'efg' from 9 in the text
		
		'abc efg hij'
		
		the matcher answers 5.
		
		5 is the index of e, as desired. "
		
		^ aKStream position ].

	" not found after start so search again from the end "
		
	aKStream := KBackwardStream on: self end.
	
	aMatcher := RxMatcher forString: regex.
	
	result := aMatcher matchesStreamPrefix: aKStream.
	
	^result 
		ifTrue:[aKStream position ]
		ifFalse:[self end]! !

!KLibrary methodsFor: 'searching' stamp: 'Df 9/6/2025 12:12:11'!
searchFrom: anAddress forwardFor: aString

	" Search forward starting from anAddress iterator for a substring in text that is equal to aString. If not found
	search again from the beginning. If found answer an iterator marking the first character of the substring, 	otherwise answer an iterator marking one character past the end of text. 
	
	For example, if lib text = 'once upon a time in a galaxy far far away' then 
	
	lib searchFrom: 1 forwardFor: 'upon' 
	
	anwsers 6.

	lib searchFrom: 6 forwardFor: 'far' 
	
	anwsers 30.

	lib searchFrom: 31 forwardFor: 'time' 
	
	anwsers 13.	"
	
	| regex aKStream aMatcher result |
	
	regex := '.*' , aString asRegexLiteral.
	
	aKStream := KForwardStream on: anAddress.
	
	aMatcher := RxMatcher forString: regex.
	
	result := aMatcher matchesStreamPrefix: aKStream.
	
	result ifTrue:[
		
		"the position answered by aMatcher is one character after the end of the substring, thus
		to answer the first character of the substring we must backoff by the substring's length:
		
		for example, looking for 'efg' from 1 in the text
		
		'abc efg hij'
		
		the matcher answers 8. 
		
		8 - 3 = 5
		
		5 is the index of e, as desired. "
		
		^ aKStream position retreat: aString size].

	" not found after start so search again from the beginning "
		
	aKStream := KForwardStream on: self begin.
	
	aMatcher := RxMatcher forString: regex.
	
	result := aMatcher matchesStreamPrefix: aKStream.
	
	^result 
		ifTrue:[aKStream position retreat: aString size]
		ifFalse:[self end]! !

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

!KParagraph methodsFor: 'initialization' stamp: 'Df 9/12/2025 11:32:45'!
initialize

	lines := OrderedCollection new.
		
	leftMargin := 6.
	
	rightMargin := 6+8.
	
	lineHeight := 2. "in half line units"! !

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

!KParagraph methodsFor: 'accessing' stamp: 'Df 9/12/2025 11:33:24'!
attributes

	^ { leftMargin . lineHeight }! !

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

!KParagraph methodsFor: 'accessing' stamp: 'Df 9/10/2025 19:22:34'!
lineNum
	^ lines size! !

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

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 18:51:53'!
initialize

	mapper := LinuxKeyboardMapper new.
	
! !

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 18:33:08'!
keyDown: aMorphicEvent

	self subclassResponsibility ! !

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 18:33:05'!
keyStroke: aKeyboardEvent


	self subclassResponsibility ! !

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 18:33:00'!
keyUp: aMorphicEvent

	self subclassResponsibility ! !

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 18:49:44'!
master: aKaeruMasterController

	self assert: ( aKaeruMasterController isKindOf: KaeruMasterController ).
	
	master := aKaeruMasterController ! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:51:37'!
initialize

	super initialize.
	
	state := #editing.
	
	leapLeft := #up.
	
	leapRight := #up.
	
	leapAgain := #up.! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:44:11'!
keyDown: aMorphicEvent

	mapper isLeapLeftKeyDown: aMorphicEvent ::
		ifTrue:[
			leapLeft := #down ].

	mapper isLeapRightKeyDown: aMorphicEvent ::
		ifTrue:[
			leapRight := #down ].

	mapper isLeapAgainKeyDown: aMorphicEvent ::
		ifTrue:[
			leapAgain := #down ].
		
	leapLeft = #down and:[leapRight = #down] ::
		ifTrue:[
			state := #blocked ].
! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:51:06'!
keyStroke: aKeyboardEvent

	state = #editing 
		ifTrue:[
			
			leapLeft = #down
				ifTrue:[
					state := #left . ^self ].
				
			leapRight = #down
				ifTrue:[
					state := #right . ^self ].
			
			aKeyboardEvent keyCharacter = $[ and:[ leapAgain = #down] :: 
				ifTrue:[
					master activate: #help ].
	
		].
	

! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:57:50'!
keyUp: aMorphicEvent

	mapper isLeapLeftKeyUp: aMorphicEvent ::
		ifTrue:[
			leapLeft := #up ].

	mapper isLeapRightKeyUp: aMorphicEvent ::
		ifTrue:[
			leapRight := #up ].

	mapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			leapAgain := #up ].
		
	leapRight = #up and: [leapLeft = #up] ::
		ifTrue:[
			state := #editing].

	leapRight = #up and: [leapLeft = #down] ::
		ifTrue:[
			state := #left].

	leapRight = #down and: [leapLeft = #up] ::
		ifTrue:[
			state := #right].
! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:16:44'!
state
	^state! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 22:02:03'!
keyDown: aMorphicEvent
! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 22:02:09'!
keyStroke: aKeyboardEvent

! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 22:01:56'!
keyUp: aMorphicEvent

	mapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			master activate: #edit ].
! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:29:23'!
state
	^#help! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 18:53:06'!
activate: aSymbol

	Transcript show: ('activating {1}' format:{aSymbol}); cr.
	
	active := controllers at: aSymbol ! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:13:31'!
at: aSymbol putController: aKaeruController

	self assert: (aKaeruController isKindOf: KaeruController ).
	
	controllers at: aSymbol put: aKaeruController.
	
	aKaeruController master: self! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:58:48'!
initialize

	controllers := Dictionary new.
	
	
	! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:55:21'!
keyDown: aMorphicEvent
	
	active keyDown: aMorphicEvent.
	
	Transcript show: active state; cr.! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:16:58'!
keyStroke: aKeyboardEvent

	self assert: active notNil.

	active keyStroke: aKeyboardEvent.
	
	Transcript show: active state; cr.
! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:55:26'!
keyUp: aMorphicEvent

	self assert: active notNil.

	active keyUp: aMorphicEvent.
	
	Transcript show: active state; cr.! !

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

!KaeruKeyboardStateMachine methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:01:16'!
initialize

	mapper := LinuxKeyboardMapper new.

	leapLeft := #up.
	
	leapRight := #up.
	
	leapAgain := #up.! !

!KaeruKeyboardStateMachine methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:00:27'!
keyDown: aMorphicEvent

	mapper isLeapLeftKeyDown: aMorphicEvent ::
		ifTrue:[
			leapLeft := #down ].

	mapper isLeapRightKeyDown: aMorphicEvent ::
		ifTrue:[
			leapRight := #down ].

	mapper isLeapAgainKeyDown: aMorphicEvent ::
		ifTrue:[
			leapAgain := #down ]
! !

!KaeruKeyboardStateMachine methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:00:59'!
keyUp: aMorphicEvent

	mapper isLeapLeftKeyUp: aMorphicEvent ::
		ifTrue:[
			leapLeft := #up ].

	mapper isLeapRightKeyUp: aMorphicEvent ::
		ifTrue:[
			leapRight := #up ].

	mapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			leapAgain := #up ]
! !

!KaeruKeyboardStateMachine methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:02:03'!
leapAgain
	^leapAgain! !

!KaeruKeyboardStateMachine methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:01:33'!
leapLeft
	^leapLeft! !

!KaeruKeyboardStateMachine methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:01:50'!
leapRight
	^leapRight ! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:13:40'!
handlesKeyboard
	^true! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:13:44'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:13:50'!
handlesMouseOver:aMouseButtonEvent
	^true! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 18:54:30'!
initialize

	super initialize.
	
	controller := KaeruMasterController new.
	
	controller at: #edit putController: KaeruEditorController new.

	controller at: #help putController: KaeruHelpController new. 

	controller activate: #edit.! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 21:55:26'!
keyDown: aMorphicEvent

	controller keyDown: aMorphicEvent.
! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 21:55:41'!
keyStroke: aKeyboardEvent

	controller keyStroke: aKeyboardEvent ! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 21:55:52'!
keyUp: aMorphicEvent

	controller keyUp: aMorphicEvent ! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:14:42'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self activeHand newKeyboardFocus: self! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:14:32'!
mouseEnter: aMouseButtonEvent

	self activeHand newKeyboardFocus: self! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'Df 9/12/2025 11:36:17'!
drawCursorOn: aCanvas

	| cursorColor cursorRect cline xx yy leftMargin lineHeight  |
	
	cursorColor := Color fromHexString: '#AAAAAA'.

	cline := klib charIndexToLineIndex: cursor.
	
	leftMargin := cline third first.
	
	lineHeight := cline third second.
	
	yy := (cline first - window) * (lineHeight / 2.0) * dy.	
	
	xx := (cline second ) * dx.
	
	cursorRect := textr origin + (dx * leftMargin @ 0) + (xx @ yy) extent: (dx @ dy).
	
	aCanvas fillRectangle: cursorRect  color: cursorColor.! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'Df 9/11/2025 21:36:25'!
drawOn: aCanvas

	super drawOn: aCanvas.
	
	[
		self drawRulerOn: aCanvas ; drawTextOn: aCanvas ; drawCursorOn: aCanvas.
	
	]
	on: AssertionFailure do:[:ex | self drawingFails. self halt.].! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'Df 9/8/2025 17:50:59'!
drawRulerOn: aCanvas
	
	| xx yy |
			
	yy := rulerY.
	
	0 to:79 do:[:ii |
		xx := textx + (dx / 2) + (dx * ii).
		aCanvas line: xx@yy to: xx@ (yy + 5) width:1 color: Color white ].
	
	1 to:8 do:[:ii |
		xx := textx + (dx / 2) + (dx * 10 * ii).
		aCanvas 
			line: xx@yy to: xx@(yy + 10) width:1 color: Color white ;
			drawString: ('{1}' format:{ii}) at: (xx - wc) @ (yy + 12)  font: rulerFont color: Color white ].
		
	aCanvas frameRectangle: (8 * dx @ yy extent: (65 * dx + dx  @ 30) ) borderWidth: 1 color: Color white.! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'Df 9/12/2025 11:40:02'!
drawTextOn: aCanvas
	
	| xx yy bb ee |
		
	aCanvas fillRectangle: textr color: Color white.
	
	yy := textr origin y.
	
	bb := klib lineIndexToIterator: window.
	
	ee := klib end.
	
	[yy < rulerY and:[bb ~= ee] ]
		whileTrue:[ | attrs lineHeight leftMargin |
			attrs := bb attributes.

			leftMargin := attrs first.
	
			lineHeight := attrs second.

			xx := textr origin x + (dx * leftMargin).
			
			aCanvas drawString: bb line at: xx @ yy font: textFont color: Color black.
			yy := yy + (dy * lineHeight / 2.0).
			bb nextLine ].
		
		! !

!KaeruEditorMorph methodsFor: 'scrolling' stamp: 'Df 9/11/2025 20:02:51'!
scrollToCursor

	"Ensure that the window includes the cursor "
	
	| cline |
	
	cline := klib charIndexToLineIndex: cursor :: first.
	
	cline < window		
		ifTrue:[
			^window := cline].
	
	cline >= (window + numLines)
		ifTrue:[
			window := cline - numLines + 1
			
			" cline = window + numLines - 1"].
		
	self redrawNeeded 
		! !

!KaeruEditorMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/11/2025 18:11:55'!
initialize

	super initialize .

	self morphExtent: 1024@600.
		
	color := Color black.
	
	textFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 14.
	
	rulerFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 10.	
	
	statusFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 12.
	
	dx :=  textFont widthOf:$M.
	
	dy := textFont lineSpacing.
	
	wc := (rulerFont widthOf: $8) / 2.

	rulerY := 538.
	
	rulerH := 62.

	numLines := 18.
	
	textw := (80 * dx).
			
	texth := dy * numLines.
		
	textr := (0@(rulerY - texth) corner: 1024 @ (rulerY-1)) insetBy: ((1024 - textw) / 2)@0.

	textx := textr origin x.
	
	showCursor := true.! !

!KaeruEditorMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/11/2025 18:12:41'!
text: aKLibrary

	klib := aKLibrary.
	
	cursor := 1. "char index"
	
	window := 1. "line index"! !

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

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/11/2025 19:46:12'!
testIterators

	| t1 t2 text index lib bb ee aWriteStream eachLine |
	
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
	
	aWriteStream := WriteStream on: ''.
	
	bb := lib begin.
	ee := lib end.
	
	eachLine := 1.
	
	[bb ~= ee]
		whileTrue:[
			aWriteStream nextPutAll: bb line. 
			eachLine := eachLine + 1.
			bb := lib lineIndexToIterator: eachLine	 ].
	
	self assert: aWriteStream contents = text.
	
	1 to: text size do:[:eachIndex | | pp qq |
		pp := lib charIndexToLineIndex: eachIndex.
		self assert: pp second > 0.
		qq := lib lineIndexToIterator: pp first.		
		qq advance: pp second - 1.
		self assert: qq char = (text at: eachIndex) ].
	
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 12:31:30'!
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
	
	self assert: aKStream position prev char = $f.
	self assert: aKStream position prev prev char = $l.
	self assert: aKStream position prev prev prev char = $e.
	
	aKStream := KForwardStream on: lib begin.
	
	aMatcher := RxMatcher forString: '.*herselz'.
	
	self assert: (aMatcher matchesStreamPrefix: aKStream) not.
	
	aKStream := KBackwardStream on: lib end.
	
	aMatcher := RxMatcher forString: '.*', 'himself' reverse.
	
	self assert: (aMatcher matchesStreamPrefix: aKStream).
	
	self assert: aKStream position char = $h.
	self assert: aKStream position next char = $i.
	self assert: aKStream position next next char = $m.
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 12:34:17'!
testSearch

	| t1 t2 text index lib pos |
	
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

	pos := lib searchFrom: lib begin forwardFor: 'himself'.
	
	self assert: pos char = $h.
	self assert: pos next char = $i.
	self assert: pos next char = $m.

	pos := lib searchFrom: lib begin forwardFor: 'play.'.

	self assert: pos char = $p.
	self assert: pos next char = $l.
	self assert: pos next char = $a.
		
	pos := lib searchFrom: lib end backwardFor: 'himself'.

	self assert: pos char = $h.
	self assert: pos next char = $i.
	self assert: pos next char = $m.

	pos := lib searchFrom: pos backwardFor: 'In olden'.

	self assert: pos char = $I.
	self assert: pos next char = $n.
	self assert: pos next char = Character space.
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
