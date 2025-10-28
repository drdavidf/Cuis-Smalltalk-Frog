'From Cuis7.5 [latest update: #7615] on 28 October 2025 at 10:37:45 pm'!
'Description '!
!provides: 'Kaeru' 1 1144!
!requires: 'Regex-Core' 1 6 nil!
!requires: 'Sound' 1 35 nil!
!requires: 'YAXO' 1 28 nil!
SystemOrganization addCategory: #Kaeru!
SystemOrganization addCategory: #'Kaeru-Keyboard'!
SystemOrganization addCategory: #'Kaeru-Morphic'!
SystemOrganization addCategory: #'Kaeru-Text'!
SystemOrganization addCategory: #'Kaeru-Tools'!


!classDefinition: #KaeruController category: #'Kaeru-Keyboard'!
Object subclass: #KaeruController
	instanceVariableNames: 'controllerMaster keyboardMapper viewMaster'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruController class' category: #'Kaeru-Keyboard'!
KaeruController class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditorController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruEditorController
	instanceVariableNames: 'state leapLeft leapRight useFront model transitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruEditorController class' category: #'Kaeru-Keyboard'!
KaeruEditorController class
	instanceVariableNames: ''!

!classDefinition: #KaeruHelpController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruHelpController
	instanceVariableNames: 'bothLeapAgainKeysPressed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruHelpController class' category: #'Kaeru-Keyboard'!
KaeruHelpController class
	instanceVariableNames: ''!

!classDefinition: #KaeruLeftMarginController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruLeftMarginController
	instanceVariableNames: 'model left margin right'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruLeftMarginController class' category: #'Kaeru-Keyboard'!
KaeruLeftMarginController class
	instanceVariableNames: ''!

!classDefinition: #KaeruMasterController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruMasterController
	instanceVariableNames: 'active controllers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruMasterController class' category: #'Kaeru-Keyboard'!
KaeruMasterController class
	instanceVariableNames: ''!

!classDefinition: #KaeruPluggableMarginController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruPluggableMarginController
	instanceVariableNames: 'model left margin right marginGetter marginSetter showMarginMessage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruPluggableMarginController class' category: #'Kaeru-Keyboard'!
KaeruPluggableMarginController class
	instanceVariableNames: ''!

!classDefinition: #KaeruRightMarginController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruRightMarginController
	instanceVariableNames: 'model left margin right'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruRightMarginController class' category: #'Kaeru-Keyboard'!
KaeruRightMarginController class
	instanceVariableNames: ''!

!classDefinition: #KaeruScreenSaverController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruScreenSaverController
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruScreenSaverController class' category: #'Kaeru-Keyboard'!
KaeruScreenSaverController class
	instanceVariableNames: ''!

!classDefinition: #KaeruTitlesController category: #'Kaeru-Keyboard'!
KaeruController subclass: #KaeruTitlesController
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruTitlesController class' category: #'Kaeru-Keyboard'!
KaeruTitlesController class
	instanceVariableNames: ''!

!classDefinition: #KaeruKeyboardMapper category: #'Kaeru-Keyboard'!
Object subclass: #KaeruKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruKeyboardMapper class' category: #'Kaeru-Keyboard'!
KaeruKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxKeyboardMapper category: #'Kaeru-Keyboard'!
KaeruKeyboardMapper subclass: #LinuxKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'LinuxKeyboardMapper class' category: #'Kaeru-Keyboard'!
LinuxKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #LinuxRaspiKeyboardMapper category: #'Kaeru-Keyboard'!
LinuxKeyboardMapper subclass: #LinuxRaspiKeyboardMapper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'LinuxRaspiKeyboardMapper class' category: #'Kaeru-Keyboard'!
LinuxRaspiKeyboardMapper class
	instanceVariableNames: ''!

!classDefinition: #KaeruPrinter category: #'Kaeru-Morphic'!
Object subclass: #KaeruPrinter
	instanceVariableNames: 'lineNumber pageNumber dx dy yy xx foreground background canvas font displayWidth pageNumberFont pageSize displayHeight numLines displayRect statusFont cursorRect rulerCursorRect cursorOffset separatorH attributes marginRegister boldFont'
	classVariableNames: 'IconForJustify IconForJustifySelected IconForLineSpace IconForLineSpaceSelected'
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruPrinter class' category: #'Kaeru-Morphic'!
KaeruPrinter class
	instanceVariableNames: ''!

!classDefinition: #DisjointIntervalSequence category: #'Kaeru-Text'!
Object subclass: #DisjointIntervalSequence
	instanceVariableNames: 'intervals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'DisjointIntervalSequence class' category: #'Kaeru-Text'!
DisjointIntervalSequence class
	instanceVariableNames: ''!

!classDefinition: #DisjointIntervalTree category: #'Kaeru-Text'!
Object subclass: #DisjointIntervalTree
	instanceVariableNames: 'interval children kind'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'DisjointIntervalTree class' category: #'Kaeru-Text'!
DisjointIntervalTree class
	instanceVariableNames: ''!

!classDefinition: #DocBookWriter category: #'Kaeru-Text'!
Object subclass: #DocBookWriter
	instanceVariableNames: 'klib'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'DocBookWriter class' category: #'Kaeru-Text'!
DocBookWriter class
	instanceVariableNames: ''!

!classDefinition: #KBackwardStream category: #'Kaeru-Text'!
Object subclass: #KBackwardStream
	instanceVariableNames: 'kiterator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KBackwardStream class' category: #'Kaeru-Text'!
KBackwardStream class
	instanceVariableNames: ''!

!classDefinition: #KForwardIterator category: #'Kaeru-Text'!
Object subclass: #KForwardIterator
	instanceVariableNames: 'pars parIndex lineIndex charIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KForwardIterator class' category: #'Kaeru-Text'!
KForwardIterator class
	instanceVariableNames: ''!

!classDefinition: #KBidiIterator category: #'Kaeru-Text'!
KForwardIterator subclass: #KBidiIterator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KBidiIterator class' category: #'Kaeru-Text'!
KBidiIterator class
	instanceVariableNames: ''!

!classDefinition: #KForwardStream category: #'Kaeru-Text'!
Object subclass: #KForwardStream
	instanceVariableNames: 'kiterator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KForwardStream class' category: #'Kaeru-Text'!
KForwardStream class
	instanceVariableNames: ''!

!classDefinition: #KLibrary category: #'Kaeru-Text'!
Object subclass: #KLibrary
	instanceVariableNames: 'paragraphs pageSize defaultParagraphAttributes paragraphBoundary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KLibrary class' category: #'Kaeru-Text'!
KLibrary class
	instanceVariableNames: ''!

!classDefinition: #KLine category: #'Kaeru-Text'!
Object subclass: #KLine
	instanceVariableNames: 'chars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KLine class' category: #'Kaeru-Text'!
KLine class
	instanceVariableNames: ''!

!classDefinition: #KParagraph category: #'Kaeru-Text'!
Object subclass: #KParagraph
	instanceVariableNames: 'lines attributes emphasis startingCharacterIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KParagraph class' category: #'Kaeru-Text'!
KParagraph class
	instanceVariableNames: ''!

!classDefinition: #KParagraphAttributes category: #'Kaeru-Text'!
Object subclass: #KParagraphAttributes
	instanceVariableNames: 'leftMargin rightMargin indent lineHeight tabStops'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KParagraphAttributes class' category: #'Kaeru-Text'!
KParagraphAttributes class
	instanceVariableNames: ''!

!classDefinition: #KTokenStream category: #'Kaeru-Text'!
Object subclass: #KTokenStream
	instanceVariableNames: 'stream head'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KTokenStream class' category: #'Kaeru-Text'!
KTokenStream class
	instanceVariableNames: ''!

!classDefinition: #SimpleScanner category: #'Kaeru-Text'!
Object subclass: #SimpleScanner
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'SimpleScanner class' category: #'Kaeru-Text'!
SimpleScanner class
	instanceVariableNames: ''!

!classDefinition: #KPngConverter category: #'Kaeru-Tools'!
Object subclass: #KPngConverter
	instanceVariableNames: 'directory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Tools'!
!classDefinition: 'KPngConverter class' category: #'Kaeru-Tools'!
KPngConverter class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditor category: #'Kaeru-Text'!
ActiveModel subclass: #KaeruEditor
	instanceVariableNames: 'cursorState cursor selection text searchString leapRegister backupRegister searchSuccessfull showLeftMargin showRightMargin dirty showIndent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KaeruEditor class' category: #'Kaeru-Text'!
KaeruEditor class
	instanceVariableNames: ''!

!classDefinition: #KaeruKeyboardTester category: #'Kaeru-Keyboard'!
PlacedMorph subclass: #KaeruKeyboardTester
	instanceVariableNames: 'controller mapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruKeyboardTester class' category: #'Kaeru-Keyboard'!
KaeruKeyboardTester class
	instanceVariableNames: ''!

!classDefinition: #KaeruMasterMorph category: #'Kaeru-Morphic'!
BoxMorph subclass: #KaeruMasterMorph
	instanceVariableNames: 'view active controller'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruMasterMorph class' category: #'Kaeru-Morphic'!
KaeruMasterMorph class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditorMorph category: #'Kaeru-Morphic'!
ColoredBoxMorph subclass: #KaeruEditorMorph
	instanceVariableNames: 'rulerFont window printer wc editor showCursor snapshot ina219 blinkingRate'
	classVariableNames: 'BatteryIcons IconForLineSpace IconForLineSpaceSelected'
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruEditorMorph class' category: #'Kaeru-Morphic'!
KaeruEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #KaeruHelpMorph category: #'Kaeru-Morphic'!
ColoredBoxMorph subclass: #KaeruHelpMorph
	instanceVariableNames: 'text printer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruHelpMorph class' category: #'Kaeru-Morphic'!
KaeruHelpMorph class
	instanceVariableNames: ''!

!classDefinition: #KaeruScreenSaverMorph category: #'Kaeru-Morphic'!
ColoredBoxMorph subclass: #KaeruScreenSaverMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruScreenSaverMorph class' category: #'Kaeru-Morphic'!
KaeruScreenSaverMorph class
	instanceVariableNames: ''!

!classDefinition: #KaeruTitlesMorph category: #'Kaeru-Morphic'!
ColoredBoxMorph subclass: #KaeruTitlesMorph
	instanceVariableNames: 'printer editor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruTitlesMorph class' category: #'Kaeru-Morphic'!
KaeruTitlesMorph class
	instanceVariableNames: ''!

!classDefinition: #FrogAnimation category: #'Kaeru-Morphic'!
ImageMorph subclass: #FrogAnimation
	instanceVariableNames: 'index originx'
	classVariableNames: 'Frames'
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'FrogAnimation class' category: #'Kaeru-Morphic'!
FrogAnimation class
	instanceVariableNames: ''!

!classDefinition: #Kaeru category: #'Kaeru-Keyboard'!
CodePackage subclass: #Kaeru
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'Kaeru class' category: #'Kaeru-Keyboard'!
Kaeru class
	instanceVariableNames: 'mutex'!

!classDefinition: #ExhaustiveTestKLibrary category: #'Kaeru-Text'!
TestCase subclass: #ExhaustiveTestKLibrary
	instanceVariableNames: 'lib text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'ExhaustiveTestKLibrary class' category: #'Kaeru-Text'!
ExhaustiveTestKLibrary class
	instanceVariableNames: ''!

!classDefinition: #TestDisjointIntervalSeq category: #'Kaeru-Text'!
TestCase subclass: #TestDisjointIntervalSeq
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'TestDisjointIntervalSeq class' category: #'Kaeru-Text'!
TestDisjointIntervalSeq class
	instanceVariableNames: ''!

!classDefinition: #TestDisjointIntervalTree category: #'Kaeru-Text'!
TestCase subclass: #TestDisjointIntervalTree
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'TestDisjointIntervalTree class' category: #'Kaeru-Text'!
TestDisjointIntervalTree class
	instanceVariableNames: ''!

!classDefinition: #TestKLibrary category: #'Kaeru-Text'!
TestCase subclass: #TestKLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'TestKLibrary class' category: #'Kaeru-Text'!
TestKLibrary class
	instanceVariableNames: ''!

!classDefinition: #TestKParagraph category: #'Kaeru-Text'!
TestCase subclass: #TestKParagraph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'TestKParagraph class' category: #'Kaeru-Text'!
TestKParagraph class
	instanceVariableNames: ''!

!classDefinition: #TestKTokenStream category: #'Kaeru-Text'!
TestCase subclass: #TestKTokenStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'TestKTokenStream class' category: #'Kaeru-Text'!
TestKTokenStream class
	instanceVariableNames: ''!

!classDefinition: #TestScanner category: #'Kaeru-Text'!
TestCase subclass: #TestScanner
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'TestScanner class' category: #'Kaeru-Text'!
TestScanner class
	instanceVariableNames: ''!


!DisjointIntervalSequence commentStamp: '<historical>' prior: 0!
This data structure represents a tree of semi-open intervals. 

Each node in the tree has an interval and a sequence of children. The tree maintains the following properties:

1. All the intervals in the children are included in the parent interval.

2. The children are non overlapping and are ordered in an ascending order.


!

!KLibrary commentStamp: '<historical>' prior: 0!
A KLibrary holds a collection of KDocuments

!

!KParagraphAttributes commentStamp: '<historical>' prior: 0!
A simple class to hold the attributes of a paragraph. We could have used a dictionary but as some paragraph operations (notably fastInsert) make frequent use of the paragraph width, and accessing it from a dictionary is too slow. !

!KPngConverter commentStamp: '<historical>' prior: 0!
Convert PNG images to 2-bit forms and generate the text for entering them into the code base.

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

!KaeruController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 19:53:35'!
acceptControl

	! !

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 13:02:59'!
controllerMaster: aKaeruMasterController

	self assert: ( aKaeruMasterController isKindOf: KaeruMasterController ).
	
	controllerMaster := aKaeruMasterController ! !

!KaeruController methodsFor: 'as yet unclassified' stamp: 'DF 10/16/2025 21:18:19'!
initialize

	| aMapperClass |

	self assert: Smalltalk platformName = 'unix'.
	
	aMapperClass := Smalltalk platformSubtype = 'aarch64' 
						and: [(Smalltalk osVersion findString: '-rpi-') ~= 0] :: 
							ifTrue:[LinuxRaspiKeyboardMapper ] 
							ifFalse:[LinuxKeyboardMapper].
						
	keyboardMapper := aMapperClass new

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

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 13:03:59'!
viewMaster: aKaeruMorph

	viewMaster := aKaeruMorph ! !

!KaeruEditorController methodsFor: 'state machine' stamp: 'Df 9/25/2025 12:38:04'!
doTransitionFor: aSymbol

	| entry |
	
	entry := transitions at: { state . aSymbol }.
	
	state := entry isArray
		ifTrue:[
			entry second value: model.
			entry first ]
		ifFalse:[
			entry ].
		! !

!KaeruEditorController methodsFor: 'initialization' stamp: 'DF 10/18/2025 15:06:55'!
initialize

	super initialize.
	
	state := #editingState.
	
	transitions := { 
		{ #editingState . #leapLeftDown } -> { #startLeapLeftState . [:editor | editor restartSearch ] }.
		{ #editingState . #leapRightDown } -> { #startLeapRightState . [:editor | editor restartSearch ] }.
		{ #editingState . #keyStroke } -> #editingState .

		{ #freshEditingState . #leapLeftDown } -> { #startLeapLeftState . [:editor | editor restartSearch ] }.
		{ #freshEditingState . #leapRightDown } -> { #startLeapRightState . [:editor | editor restartSearch ] }.
		{ #freshEditingState . #keyStroke } -> { #editingState . [:editor | editor resetSelection ] } .
		
		{ #startLeapLeftState . #leapLeftUp } -> { #freshEditingState . [:editor | editor creepBack] }.
		{ #startLeapLeftState . #leapRightDown } -> { #selectingStartState . [:editor | editor select ] }.
		{ #startLeapLeftState . #keyStroke } -> #leapLeftState.
		
		{ #leapLeftState . #leapLeftUp } -> #freshEditingState .
		{ #leapLeftState . #leapRightDown } -> { #selectingStartState . [:editor | editor select ] }.
		{ #leapLeftState . #keyStroke } -> #leapLeftState . 

		{ #startLeapRightState . #leapRightUp } -> { #freshEditingState . [:editor | editor creepForward ] }.
		{ #startLeapRightState . #leapLeftDown } -> { #selectingStartState . [:editor | editor select ] }.
		{ #startLeapRightState . #keyStroke } -> #leapRightState.

		{ #leapRightState . #leapRightUp } -> #freshEditingState  .
		{ #leapRightState . #leapLeftDown } -> { #selectingStartState . [:editor | editor select] }.
		{ #leapRightState . #keyStroke } -> #leapRightState . 

		{ #selectingStartState . #leapLeftUp } -> #selectingInProgressState . 	
		{ #selectingStartState . #leapRightUp } -> #selectingInProgressState . 
		
		{ #selectingInProgressState . #leapLeftUp } -> #selectingReadyState.
		{ #selectingInProgressState . #leapRightUp } -> #selectingReadyState.
		
		{ #selectingReadyState . #leapLeftDown } -> #leapLeftSelectState.
		{ #selectingReadyState . #leapRightDown } -> #leapRightSelectState.
		{ #selectingReadyState . #keyStroke } -> #editingState.
		
		{ #leapLeftSelectState . #leapLeftUp } -> { #freshEditingState . [:editor | editor collapseLeft ] } .
		{ #leapLeftSelectState . #leapRightDown } -> #selectingStartState.
		{ #leapLeftSelectState . #keyStroke } -> { #searchLeftSelectState . [:editor | editor restartSearch ] }.
		
		{ #leapRightSelectState . #leapRightUp } -> { #freshEditingState . [:editor | editor collapseRight ] } .
		{ #leapRightSelectState . #leapLeftDown } -> #selectingStartState.
		{ #leapRightSelectState . #keyStroke } -> { #searchRightSelectState . [:editor | editor restartSearch ] }.
		
		{ #searchLeftSelectState . #leapLeftUp } -> { #selectingReadyState . [:editor | editor moveSelectionAfterCursor ] }.
		
		{ #searchLeftSelectState . #keyStroke } -> #searchLeftSelectState .
		
		{ #searchRightSelectState . #leapRightUp } -> { #selectingReadyState . [:editor | editor moveSelectionAfterCursor ] }.
		
		{ #searchRightSelectState . #keyStroke } ->  #searchRightSelectState  .
		
	} asDictionary.
	! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2025 16:03:22'!
keyDown: aMorphicEvent

	keyboardMapper isLeapLeftKeyDown: aMorphicEvent ::
		ifTrue:[				
			self doTransitionFor: #leapLeftDown ].

	keyboardMapper isLeapRightKeyDown: aMorphicEvent ::
		ifTrue:[
			self doTransitionFor: #leapRightDown ].

	keyboardMapper isLeapAgainKeyDown: aMorphicEvent ::
		ifTrue:[ 
			useFront := #down.
			self possiblyLeapAgain ].

! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 21:20:48'!
keyStroke: aKeyboardEvent

	self doTransitionFor: #keyStroke.

	state = #editingState
		ifTrue:[
			self processEditing: aKeyboardEvent ].

	{ #startLeapLeftState . #leapLeftState . #searchLeftSelectState } includes: state ::
		ifTrue:[
			self processLeapLeft: aKeyboardEvent ].
		
	{ #startLeapRightState . #leapRightState . #searchRightSelectState } includes: state ::
		ifTrue:[ 
			self processLeapRight: aKeyboardEvent ].


	
! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2025 15:54:36'!
keyUp: aMorphicEvent

	keyboardMapper isLeapLeftKeyUp: aMorphicEvent ::
		ifTrue:[
			self doTransitionFor: #leapLeftUp ].

	keyboardMapper isLeapRightKeyUp: aMorphicEvent ::
		ifTrue:[ 
			self doTransitionFor: #leapRightUp ].

	keyboardMapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			useFront := #up ].
	
! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/24/2025 12:46:15'!
model
	^model! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 15:08:49'!
model: aKaeruLibrary
	model := aKaeruLibrary ! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2025 16:05:26'!
possiblyLeapAgain

	state = #leapLeftState or:[state = #searchLeftSelectState ] ::
		ifTrue:[ 
			model creepBack; searchBack ].
		
	state = #leapRightState or:[state = #searchRightSelectState ] ::
		ifTrue:[
			model creepForward; searchForward ].
		! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 22:43:13'!
processEditing: aKeyboardEvent

	self assert: state = #editingState. 

	aKeyboardEvent keyCharacter = $n and:[ useFront = #down] :: 
		ifTrue:[
			
			" This will activate a different controller and control will get back to the editor
			controller when the leap again key will be release. Therefore we set leapAgain to
			up even if at this point it is still down. "
			useFront := #up.
			controllerMaster activate: #help. viewMaster activate: #help . ^self ].

	aKeyboardEvent keyCharacter = $` and:[ useFront = #down] :: 
		ifTrue:[
			
			useFront := #up.
			model showLeftMargin: true.
			controllerMaster activate: #leftMargin . ^self ].

	aKeyboardEvent keyCharacter = $= and:[ useFront = #down] :: 
		ifTrue:[
			
			useFront := #up.
			model showRightMargin: true.
			controllerMaster activate: #rightMargin . ^self ].

	aKeyboardEvent keyCharacter = $- and:[ useFront = #down] :: 
		ifTrue:[
			
			useFront := #up.
			model showIndent: true.
			controllerMaster activate: #indent . ^self ].

	aKeyboardEvent keyCharacter = $s and:[ useFront = #down] :: 
		ifTrue:[
			useFront := #up.
			controllerMaster activate: #sleep. viewMaster activate: #sleep. ^self ].

	aKeyboardEvent keyCharacter = $w and:[ useFront = #down] :: 
		ifTrue:[
			model toggleSelectionEmphasisFor: #bold. ^self ].

	( keyboardMapper isPageKey: aKeyboardEvent ) and:[ useFront = #down] :: 
		ifTrue:[
			useFront := #up.
			controllerMaster activate: #titles. viewMaster activate: #titles. ^self ].

	keyboardMapper isPageKey: aKeyboardEvent :: 
		ifTrue:[
			model insert: (Character newPage) . ^self ].

	keyboardMapper isDocumentKey: aKeyboardEvent :: 
		ifTrue:[
			model insert: (Character newDocument) . ^self ].
	
	keyboardMapper isEraseKey: aKeyboardEvent ::
		ifTrue:[
			^model erase].
	
	model insert: aKeyboardEvent keyCharacter.
! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/25/2025 13:29:05'!
processLeapLeft: aKeyboardEvent

	self assert: (state = #leapLeftState or:[state = #searchLeftSelectState ]).
	
	keyboardMapper isEraseKey: aKeyboardEvent ::
		ifTrue:[
			model eraseAndSearchBack] 
		ifFalse:[
			model appendAndSearchBack: ( self translateToCharacter: aKeyboardEvent ) ].

! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/25/2025 13:39:47'!
processLeapRight: aKeyboardEvent

	self assert: (state = #leapRightState or:[state = #searchRightSelectState ]).

	keyboardMapper isEraseKey: aKeyboardEvent ::
		ifTrue:[
			model eraseAndSearchForward ] 
		ifFalse:[	
			model appendAndSearchForward: ( self translateToCharacter: aKeyboardEvent ) ]. 
! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 19:16:44'!
state
	^state! !

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 12:30:10'!
translateToCharacter: aKeyboardEvent

	^keyboardMapper isPageKey: aKeyboardEvent ::
		ifTrue:[
			Character newPage]
		ifFalse:[
			keyboardMapper isDocumentKey: aKeyboardEvent ::
				ifTrue:[
					Character newDocument]
				ifFalse:[
					aKeyboardEvent keyCharacter ] ].
! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2025 20:51:31'!
keyDown: aMorphicEvent

	keyboardMapper isLeapAgainKeyDown: aMorphicEvent ::
		ifTrue:[
			bothLeapAgainKeysPressed := true ].
! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2025 20:52:08'!
keyStroke: aKeyboardEvent

	bothLeapAgainKeysPressed and: [ aKeyboardEvent keyCharacter = $x ] :: ifTrue: [

		bothLeapAgainKeysPressed := false. "clear the state for next time we enter the help controller "

		controllerMaster activate: #edit. viewMaster activate: #edit.
		
		Smalltalk saveAndQuit ].! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'DF 10/27/2025 20:51:18'!
keyUp: aMorphicEvent

	keyboardMapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			
			bothLeapAgainKeysPressed := false. "clear the state for next time we enter the help controller "
	
			controllerMaster activate: #edit. viewMaster activate: #edit ].
! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:29:23'!
state
	^#help! !

!KaeruLeftMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 20:00:50'!
acceptControl

	margin := model leftMargin! !

!KaeruLeftMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:48:48'!
initialize

	super initialize.
	
	left := #up.
	
	right := #up.
	
	margin := 6.! !

!KaeruLeftMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:53:21'!
keyDown: aMorphicEvent

	keyboardMapper isLeapLeftKeyDown: aMorphicEvent ::
		ifTrue:[
			left := #down ].
		
	keyboardMapper isLeapRightKeyDown: aMorphicEvent ::
		ifTrue:[
			right := #down ].
! !

!KaeruLeftMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:53:27'!
keyStroke: aMorphicEvent

	! !

!KaeruLeftMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 19:09:20'!
keyUp: aMorphicEvent

	left = #down and: [keyboardMapper isLeapLeftKeyUp: aMorphicEvent ] ::
		ifTrue:[
			margin := margin - 1 max: 0.
			
			model setLeftMargin: margin].
		
	keyboardMapper isLeapLeftKeyUp: aMorphicEvent ::
		ifTrue:[
			left := #up ].

	right = #down and: [keyboardMapper isLeapRightKeyUp: aMorphicEvent ] ::
		ifTrue:[
			margin := margin + 1 min: 79.
			
			model setLeftMargin: margin].
		
	keyboardMapper isLeapRightKeyUp: aMorphicEvent ::
		ifTrue:[
			right := #up ].

	keyboardMapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			model showLeftMargin: false.
			controllerMaster activate: #edit.  ].
! !

!KaeruLeftMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:27:51'!
model: aKaeruEditor
	model := aKaeruEditor ! !

!KaeruLeftMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:48:57'!
state
	^#leftMargin! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 19:53:52'!
activate: aSymbol

	Transcript show: ('activating {1}' format:{aSymbol}); cr.
	
	active := controllers at: aSymbol .
	
	active acceptControl! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 13:02:59'!
at: aSymbol putController: aKaeruController

	self assert: (aKaeruController isKindOf: KaeruController ).
	
	controllers at: aSymbol put: aKaeruController.
	
	aKaeruController controllerMaster: self! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 21:58:48'!
initialize

	controllers := Dictionary new.
	
	
	! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/25/2025 11:46:19'!
keyDown: aMorphicEvent
	
	active keyDown: aMorphicEvent.
	
	Transcript show: 'master controller keyDown '; show: active state; cr.! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/25/2025 11:46:12'!
keyStroke: aKeyboardEvent

	self assert: active notNil.

	active keyStroke: aKeyboardEvent.
	
	Transcript show: 'master controller keyStroke '; show: active state; cr.
! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/25/2025 11:46:26'!
keyUp: aMorphicEvent

	self assert: active notNil.

	active keyUp: aMorphicEvent.
	
	Transcript show: 'master controller keyUp '; show: active state; cr.! !

!KaeruMasterController methodsFor: 'as yet unclassified' stamp: 'Df 9/24/2025 12:46:03'!
model
	^active model! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:51:52'!
acceptControl

	margin := model perform: marginGetter! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:51:04'!
initialize

	super initialize.
	
	left := #up.
	
	right := #up.
	
	margin := 6.! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:51:04'!
keyDown: aMorphicEvent

	keyboardMapper isLeapLeftKeyDown: aMorphicEvent ::
		ifTrue:[
			left := #down ].
		
	keyboardMapper isLeapRightKeyDown: aMorphicEvent ::
		ifTrue:[
			right := #down ].
! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:51:04'!
keyStroke: aMorphicEvent

	! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/18/2025 18:52:44'!
keyUp: aMorphicEvent

	left = #down and: [keyboardMapper isLeapLeftKeyUp: aMorphicEvent ] ::
		ifTrue:[
			margin := margin - 1.
			
			margin := model perform: marginSetter with: margin].
		
	keyboardMapper isLeapLeftKeyUp: aMorphicEvent ::
		ifTrue:[
			left := #up ].

	right = #down and: [keyboardMapper isLeapRightKeyUp: aMorphicEvent ] ::
		ifTrue:[
			margin := margin + 1.
			
			margin := model perform: marginSetter with: margin ].
		
	keyboardMapper isLeapRightKeyUp: aMorphicEvent ::
		ifTrue:[
			right := #up ].

	keyboardMapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			model perform: showMarginMessage with: false.
			controllerMaster activate: #edit.  ].
! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:51:34'!
marginGetter: aSymbol
	marginGetter := aSymbol.! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:51:42'!
marginSetter: aSymbol
	marginSetter := aSymbol.! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:51:04'!
model: aKaeruEditor
	model := aKaeruEditor ! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 21:59:43'!
showMarginMessage: aSymbol
	showMarginMessage := aSymbol.! !

!KaeruPluggableMarginController methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 22:00:15'!
state
	^marginGetter! !

!KaeruRightMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 20:01:02'!
acceptControl

	margin := model rightMargin! !

!KaeruRightMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:54:31'!
initialize

	super initialize.
	
	left := #up.
	
	right := #up.
	
	margin := 6.! !

!KaeruRightMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:54:31'!
keyDown: aMorphicEvent

	keyboardMapper isLeapLeftKeyDown: aMorphicEvent ::
		ifTrue:[
			left := #down ].
		
	keyboardMapper isLeapRightKeyDown: aMorphicEvent ::
		ifTrue:[
			right := #down ].
! !

!KaeruRightMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:54:31'!
keyStroke: aMorphicEvent

	! !

!KaeruRightMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 20:23:53'!
keyUp: aMorphicEvent

	self assert: model showRightMargin.
		
	left = #down and: [keyboardMapper isLeapLeftKeyUp: aMorphicEvent ] ::
		ifTrue:[
			margin := margin - 1 max: 0.
			
			model setRightMargin: margin].
		
	keyboardMapper isLeapLeftKeyUp: aMorphicEvent ::
		ifTrue:[
			left := #up ].

	right = #down and: [keyboardMapper isLeapRightKeyUp: aMorphicEvent ] ::
		ifTrue:[
			margin := margin + 1 min: 79.
			
			model setRightMargin: margin].
		
	keyboardMapper isLeapRightKeyUp: aMorphicEvent ::
		ifTrue:[
			right := #up ].

	keyboardMapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[ 
			model showRightMargin: false.
			controllerMaster activate: #edit.  ].
! !

!KaeruRightMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:54:31'!
model: aKaeruEditor
	model := aKaeruEditor ! !

!KaeruRightMarginController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:54:37'!
state
	^#rightMargin! !

!KaeruScreenSaverController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 14:55:32'!
keyDown: aMorphicEvent
! !

!KaeruScreenSaverController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 14:56:59'!
keyStroke: aKeyboardEvent

	controllerMaster activate: #edit. viewMaster activate: #edit! !

!KaeruScreenSaverController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 14:55:45'!
keyUp: aMorphicEvent

! !

!KaeruScreenSaverController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 14:56:03'!
state
	^#sleep! !

!KaeruTitlesController methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 17:19:36'!
keyDown: aMorphicEvent
! !

!KaeruTitlesController methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 17:30:27'!
keyStroke: aKeyboardEvent

	! !

!KaeruTitlesController methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 17:30:21'!
keyUp: aMorphicEvent

	keyboardMapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
			controllerMaster activate: #edit. viewMaster activate: #edit ].
! !

!KaeruTitlesController methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 17:19:59'!
state
	^#titles! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/24/2025 21:43:36'!
isCopyKey: aMorphicEvent
	^self subclassResponsibility ! !

!KaeruKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 11:47:08'!
isDocumentKey: aMorphicEvent
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

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 11:48:41'!
isDocumentKey: aMorphicEvent
	
	^aMorphicEvent isPageDown and:[ aMorphicEvent  shiftPressed ]! !

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

!LinuxKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 11:52:00'!
isPageKey: aMorphicEvent

	^aMorphicEvent isPageDown and:[ aMorphicEvent shiftPressed not ]! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 10/19/2025 20:50:12'!
isDocumentKey: aMorphicEvent
	
	^aMorphicEvent keyValue = 0xFF67 and:[ aMorphicEvent  shiftPressed ]! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 5/30/2025 22:42:24'!
isLeapAgainKeyDown: aMorphicEvent
	^aMorphicEvent controlKeyPressed ! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 09:52:09'!
isLeapAgainKeyUp: aMorphicEvent
	^ (aMorphicEvent keyValue = 0xFFE3 or:[aMorphicEvent keyValue = 0xFFE4]) and: [aMorphicEvent controlKeyPressed not]! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 10:28:15'!
isLeapLeftKeyDown: aMorphicEvent
	^ aMorphicEvent keyValue = 0xFFE9 and: [(aMorphicEvent buttons bitAnd: 32) = 32]! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 09:46:54'!
isLeapLeftKeyUp: aMorphicEvent
	^ aMorphicEvent keyValue = 0xFFE9 and: [(aMorphicEvent buttons bitAnd: 32) = 0]! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 10:28:49'!
isLeapRightKeyDown: aMorphicEvent
	^ aMorphicEvent keyValue = 0xFFEA and: [(aMorphicEvent buttons bitAnd: 128) = 128]! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 09:47:37'!
isLeapRightKeyUp: aMorphicEvent
	^ aMorphicEvent keyValue = 0xFFEA and: [(aMorphicEvent buttons bitAnd: 128) = 0]! !

!LinuxRaspiKeyboardMapper methodsFor: 'as yet unclassified' stamp: 'DF 10/19/2025 20:49:56'!
isPageKey: aMorphicEvent

	^aMorphicEvent keyValue = 0xFF67 and:[ aMorphicEvent shiftPressed not ]! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'DF 10/4/2025 08:55:02'!
calculateCursorRectangles	 
	
	cursorRect := (xx+cursorOffset)@yy extent: (dx @ dy).

	rulerCursorRect := (xx + cursorOffset + (dx / 2)) @ (displayHeight + 1) extent: 4@12.

	cursorRect := cursorRect encompassingIntegerRectangle.
	
	rulerCursorRect := rulerCursorRect encompassingIntegerRectangle! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'Df 9/21/2025 10:37:58'!
computeDisplayArea

	displayRect := (0@(displayHeight - (dy * numLines)) corner: 1024 @ (displayHeight-1)) insetBy: ((1024 - displayWidth) / 2)@0.	
		
	
	! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'DF 10/9/2025 11:27:59'!
reset

	| leftMargin |
	
	leftMargin := attributes leftMargin.

	xx := displayRect origin x + (leftMargin * dx).
	
	yy := displayRect origin y.	

	lineNumber := 0. 
	
	pageNumber := 1.
! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'DF 10/9/2025 11:34:13'!
skipToNewLine
	
	| hh lineSpace |

	lineSpace := attributes lineHeight.
	
	hh := lineSpace * dy / 2.
	
	lineNumber + lineSpace  < pageSize
		ifTrue:[
			lineNumber := lineNumber + lineSpace.
			]
		ifFalse:[
			self skipToNewPage.
			hh := hh + (0.5*dy). ].
		
	^ hh! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'Df 9/17/2025 19:16:57'!
skipToNewPage
		
	pageNumber := pageNumber + 1.
	
	lineNumber := 0.! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'DF 10/9/2025 11:34:18'!
skipToSoftPage

	| lineSpace |
	
	lineSpace := attributes lineHeight.

	^(lineSpace * dy / 2) + (0.5*dy).
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/9/2025 11:26:11'!
advanceToNewLine

	| rect hh lineSpace leftMargin |

	lineSpace := attributes lineHeight.

	leftMargin := attributes leftMargin.
	
	hh := yy + (dy * lineSpace / 2) min: displayRect corner y.
		
	rect := (xx @yy) corner: displayRect corner x @ hh.
	
	canvas fillRectangle: rect color: background.
		
	xx := displayRect origin x + (leftMargin * dx).
	
	yy := yy + (lineSpace * dy / 2).

! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/25/2025 16:30:01'!
clearCanvas

	canvas fillRectangle: displayRect color: Color white.

	self background: Color white ; foreground: Color black.
	
	self reset.
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/9/2025 11:33:44'!
displayStatus

	| rulerY xl lineSpace | 

	lineSpace := attributes lineHeight.

	rulerY := displayRect corner y + 1.

	canvas frameRectangle: (self leftMarginX @ rulerY corner: (self rightMarginX @ (rulerY + 30)) ) borderWidth: 1 color: Color white.

	
	" Draw the line number "
	
	canvas drawString: (lineNumber / 2 + 1 printStringBase: 10 length: 2 padded: false) at: dx * 3.25 @ (displayHeight + 34) font: font color: Color white. 

	" Draw the justification selection icons "

	xl := dx * 50.

	{ #left . #centre . #right. #justify } do:[:eachIndex |
		canvas image: (self class selectJustifyIcon: #left for: eachIndex) at: xl @ (rulerY + 33).
		xl := xl + 28
	].

	" Draw the line space selection icons "
		
	xl := dx * 62.

	2 to:4 do:[:eachIndex | 					
		canvas image: (self class selectLineIcon: lineSpace for: eachIndex) at: xl @ (rulerY + 33).
		xl := xl + 28
	].


	
	! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/3/2025 23:56:20'!
drawCursor

	| cursorColor | 
	
	cursorColor := Color fromHexString: '#AAAAAA'.

	cursorRect ifNotNil:[
		canvas fillRectangle: cursorRect  color: cursorColor].

	rulerCursorRect ifNotNil:[
		canvas fillRectangle: rulerCursorRect  color: Color white]. 

! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/2/2025 17:38:01'!
drawDocumentBreak

	yy + (dy/2) >= displayHeight
		ifTrue:[^self].
				
	canvas fillRectangle: (displayRect origin x @ yy extent: displayWidth @ separatorH) color: (Color fromHexString:'#BBBBBB').
	
	
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 9/29/2025 21:10:18'!
drawMargin
	
	| mx |
	
	mx := marginRegister * dx + displayRect origin x.
	
	canvas line: mx @ displayRect origin y to: mx @ displayRect corner y width:2 color: Color red.
	
	
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/8/2025 11:10:04'!
drawSoftPage

	yy + (dy/2) >= displayHeight
		ifTrue:[^self].
				
	canvas fillRectangle: (displayRect origin x @ yy extent: displayWidth @ separatorH) color: (Color fromHexString:'#BBBBBB').
	
	canvas drawString: ('{1}' format:{pageNumber}) atCenterX: (displayWidth / 2.0 @ (yy - (0.25*dy))) font: pageNumberFont color: Color black.
	
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/12/2025 18:43:47'!
drawTabStops
	
	| tstops ii mx |
	
	tstops := attributes tabStops.
	
	mx := 0.
	
	ii := 1.
	
	[ii <= tstops size]
		whileTrue:[
			
			mx := 1+ displayRect origin x + (dx * (tstops at:ii)).
			
			canvas image: self class tabStopIcon at: mx @ (displayRect corner y + 2).
			"
			mx := dx / 2 +  displayRect origin x + (dx * (tstops at:ii)).
			canvas line: mx @ (displayRect corner y + 6) to: mx + 3 @ (displayRect corner y + 10) width:1 color: Color white.
			canvas line: mx @ (displayRect corner y + 6) to: mx - 3 @ (displayRect corner y + 10) width:1 color: Color white."
			ii := ii + 1.
		]! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/1/2025 21:29:52'!
indentBy: anInteger

	xx := xx + (dx* anInteger) 
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/17/2025 19:56:03'!
moveRight

	xx := xx + dx.! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/9/2025 11:35:59'!
moveToNextTab

	| markers mx ii |
	
	markers := attributes tabStops.
	
	mx := displayRect origin x + (dx * markers first).
	
	ii := 1.
	
	[ii <= markers size and:[mx <= xx]] 
		whileTrue:[
			mx := displayRect origin x + (dx * (markers at:ii)).
			ii := ii + 1].
		
	xx := mx.! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/2/2025 17:40:00'!
newDocument
	
	separatorH := dy / 2.
	
	self advanceToNewLine; drawDocumentBreak.	
	
	yy := yy + (0.5*dy).
	
	pageNumber := 1.

	lineNumber := 0.	

! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/9/2025 11:34:02'!
newLine

	| lineSpace |
	
	lineSpace := attributes lineHeight.

	self advanceToNewLine.
	
	lineNumber + lineSpace  < pageSize
		ifTrue:[
			lineNumber := lineNumber + lineSpace.
			]
		ifFalse:[
			separatorH := dy / 4. self newPage ].! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/2/2025 17:36:46'!
newPage

	| dashLen color |
	
	color := Color white.
	
	dashLen := 16.
	
	displayRect origin x to: displayRect corner x - dashLen by: dashLen do:[:px | 
		
		color := color = Color black ifTrue:[Color white] ifFalse:[Color black].
		
		canvas line: px@(yy-2) to: px + dashLen @ (yy - 2) width:2 color: color ].
	
	pageNumber := pageNumber + 1.
	
	lineNumber := 0.	
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/2/2025 17:39:55'!
newSoftPage

	separatorH := dy / 4.

	self advanceToNewLine; drawSoftPage.
	
	yy := yy + (0.5*dy).
	
	pageNumber := pageNumber + 1.
	
	lineNumber := 0.	
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/23/2025 13:36:00'!
offsetCursorBy: anInteger
	cursorOffset := anInteger * dx.! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/6/2025 18:21:04'!
putBoldChar: aCharacter 
	
	self putChar: aCharacter font: boldFont
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/6/2025 18:20:57'!
putChar: aCharacter 
	
	self putChar: aCharacter font: font
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 10/18/2025 22:36:52'!
putChar: aCharacter font: aFont
	
	| cc hh lineSpace |
	
	lineSpace := attributes lineHeight.

	hh := (dy * lineSpace / 2).
		
	self assert: yy + hh < ( displayRect corner y + 1.01).
	
	"
	hh <= displayRect corner y - yy 
	
	yy + hh <= displayRect corner y 
	"
	
	cc := aCharacter = Character newDocument
		ifTrue:[
			Character codePoint: 167]
		ifFalse:[
			aCharacter = Character newPage
				ifTrue:[
					Character codePoint:182]
				ifFalse:[
					aCharacter] ].
			
	canvas fillRectangle: (xx@yy extent: dx@hh) color: background.
	
	cc = Character cr ifTrue:[
		foreground = Color white
			ifTrue:[	
				canvas image: self class newlineWhiteIcon at: xx@yy]
			ifFalse:[
				canvas image: self class newLineBlackIcon at: xx @yy]
	]
	ifFalse:[	
		canvas drawString: cc asString at: xx@yy font: aFont color: foreground].
	
! !

!KaeruPrinter methodsFor: 'testing' stamp: 'DF 10/18/2025 22:36:50'!
isNotAtEnd

	|  hh |

	hh := dy * attributes lineHeight / 2.

	^ yy + hh < (displayRect corner y + 1.01)! !

!KaeruPrinter methodsFor: 'initialization' stamp: 'DF 10/9/2025 11:42:34'!
initialize

	pageNumberFont := FontFamily familyName: 'Courier Prime' pointSize: 9.	

	statusFont := FontFamily familyName: 'Courier Prime' pointSize: 10.

	font := FontFamily familyName: 'Courier Prime' pointSize: 12.

	boldFont := font emphasized: 1.
	
	dx :=  font widthOf:$M.
	
	dy := font lineSpacing.

	numLines := 23. "how many line units fit on the physical display"

	displayWidth := 80 * dx.

	displayHeight := 538.

	displayRect := (0@(displayHeight - (dy * numLines)) corner: 1024 @ (displayHeight-1)) insetBy: ((1024 - displayWidth) / 2)@0.	
	
	attributes := KParagraphAttributes new.
	
	attributes lineHeight: 2 " in half line units "
			; leftMargin: 6
			; rightMargin: 71
			; indent:0.
	
	xx := displayRect origin x + ((attributes leftMargin) * dx).
	
	yy := displayRect origin y.	
	
	background := Color white.
	
	foreground := Color black.
	
	pageSize := 110. "in half line units, 53*2 for a standard (LibreOffice compliant) number of lines in an A4 page"
	
	lineNumber := 0. 
	
	pageNumber := 1.
		
	cursorOffset := 0.
	
	separatorH := dy / 4.

	marginRegister := 0.
	! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:20:10'!
attributes: aDictionary
	attributes := aDictionary! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/16/2025 21:32:43'!
background: aColor
	background := aColor! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/3/2025 23:55:42'!
canvas: aCanvas

	canvas := aCanvas.
	
! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/21/2025 10:39:28'!
displayHeight: anInteger

	displayHeight := anInteger.
	
	self computeDisplayArea 
! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/18/2025 21:28:30'!
displayRect
	^ displayRect! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/17/2025 22:43:05'!
dx
	^dx! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/17/2025 22:39:20'!
dy
	^dy! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/16/2025 20:58:21'!
font: aFont
	font := aFont! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/16/2025 21:32:51'!
foreground: aColor
	foreground := aColor! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:27:43'!
leftMargin: aNumber

	attributes leftMargin: aNumber! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:27:49'!
leftMarginOriginX

	| leftMargin |
	
	leftMargin := attributes leftMargin.

	^ displayRect origin x + (leftMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:27:55'!
leftMarginX

	| leftMargin |
	
	leftMargin := attributes leftMargin.

	^ displayRect origin x + (leftMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/3/2025 13:31:02'!
lineNumber: anInteger
	lineNumber := anInteger! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:33:57'!
lineSpace: anInteger
	attributes lineHeight: anInteger.! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/5/2025 15:26:44'!
numHalfLines
	^numLines * 2! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/18/2025 22:14:02'!
numLines
	^numLines ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/21/2025 10:38:32'!
numLines: anInteger

	numLines := anInteger.
	
	self computeDisplayArea ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/3/2025 13:31:40'!
pageAndLineNumber: aTuple

	pageNumber := aTuple first.
	
	lineNumber := aTuple second.! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/3/2025 13:30:52'!
pageNumber: anInteger
	pageNumber := anInteger ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/19/2025 14:20:26'!
pageSize: anInteger

	self assert: anInteger > 0.
	
	pageSize := anInteger! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:31:36'!
rightMargin: anInteger

	attributes rightMargin: anInteger.
! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:31:42'!
rightMarginOriginX

	| rightMargin |
	
	rightMargin := attributes rightMargin.

	^ displayRect origin x + (rightMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:31:51'!
rightMarginX

	| rightMargin |
	
	rightMargin := attributes rightMargin.

	^ displayRect origin x + (rightMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/21/2025 20:03:50'!
rulerCursorRectangle
	^ rulerCursorRect ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/17/2025 22:50:03'!
setIndentRegister

	marginRegister := attributes indent + attributes leftMargin! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:28:06'!
setLeftMarginRegister

	marginRegister := attributes leftMargin! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:31:59'!
setRightMarginRegister

	marginRegister := attributes rightMargin! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/21/2025 20:03:42'!
textCursorRectangle
	^ cursorRect ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/16/2025 21:28:37'!
yy
	^yy! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:19:27'!
initialize

	" self initialize "
	
	IconForLineSpace := Dictionary new.
	
	IconForLineSpace at: 2 put: self oneLineSpaceIcon.
	IconForLineSpace at: 3 put: self oneAndHalfLineSpaceIcon.
	IconForLineSpace at: 4 put: self twoLineSpaceIcon.
	
	IconForLineSpaceSelected := Dictionary new.
	
	IconForLineSpaceSelected at: 2 put: self oneLineSpaceIconSelected.
	IconForLineSpaceSelected at: 3 put: self oneAndHalfLineSpaceIconSelected.
	IconForLineSpaceSelected at: 4 put: self twoLineSpaceIconSelected.	
	
	IconForJustify := Dictionary new.
	
	IconForJustify at: #left put: self justifyLeftIcon.
	IconForJustify at: #centre put: self justifyCentreIcon.
	IconForJustify at: #right put: self justifyRightIcon.
	IconForJustify at: #justify put: self justifyIcon.
	
	IconForJustifySelected := Dictionary new.
	
	IconForJustifySelected at: #left put: self justifyLeftIconSelected.
	IconForJustifySelected at: #centre put: self justifyCentreIconSelected.
	IconForJustifySelected at: #right put: self justifyRightIconSelected.
	IconForJustifySelected at: #justify put: self justifyIconSelected.
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:19'!
justifyCentreIcon
 
 ^`(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 536870912 524288 536870912 524288 536870912 524288 548055722 2852651008 536870912 524288 536870912 524288 536870912 524288 537569962 2148007936 536870912 524288 536870912 524288 536870912 524288 539667114 2684878848 536870912 524288 536870912 524288 536870912 524288 536914600 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:26'!
justifyCentreIconSelected
 
 ^`(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235477 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 715478357 1789394944 715827882 2863136768 715827882 2863136768 715827882 2863136768 714429781 1520959488 715827882 2863136768 715827882 2863136768 715827882 2863136768 715806038 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:31'!
justifyIcon
 
 ^`(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 536870912 524288 536870912 524288 536870912 524288 548055722 2852651008 536870912 524288 536870912 524288 536870912 524288 548055722 2852651008 536870912 524288 536870912 524288 536870912 524288 548055722 2852651008 536870912 524288 536870912 524288 536870912 524288 548055040 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:13'!
justifyIconSelected
 
 ^`(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235477 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235477 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235477 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235818 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:43'!
justifyLeftIcon
 
 ^`(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 536870912 524288 536870912 524288 536870912 524288 548055722 2852651008 536870912 524288 536870912 524288 536870912 524288 548055720 524288 536870912 524288 536870912 524288 536870912 524288 548055722 2148007936 536870912 524288 536870912 524288 536870912 524288 548055040 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:47'!
justifyLeftIconSelected
 
 ^`(Form
 	extent: 24@28
 	depth: 2
  	fromArray: #( 178956970 2862612480 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235477 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235478 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235477 1789394944 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235818 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:51'!
justifyRightIcon
 
 ^`(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 536870912 524288 536870912 524288 536870912 524288 548055722 2852651008 536870912 524288 536870912 524288 536870912 524288 536881834 2852651008 536870912 524288 536870912 524288 536870912 524288 537045674 2852651008 536870912 524288 536870912 524288 536870912 524288 536870954 2852651008 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:16:57'!
justifyRightIconSelected
 
 ^`(Form
 	extent: 24@28
 	depth: 2
  	fromArray: #( 178956970 2862612480 715827882 2863136768 715827882 2863136768 715827882 2863136768 710235477 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 715822421 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 715740501 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827861 1437073408 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 178956970 2862612480 0 0)
 	offset: 0@0)`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'DF 10/12/2025 18:03:18'!
newLineBlackIcon

 ^(Form
 	extent: 12@15
 	depth: 2
 	fromArray: #( 0 0 1024 5120 5120 1315840 5510144 22025216 88085504 357913600 357912576 88080384 22020096 5505024 1310720)
 	offset: 0@0)
  ! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'DF 10/12/2025 18:03:28'!
newlineWhiteIcon

 ^(Form
 	extent: 12@15
 	depth: 2
 	fromArray: #( 0 0 2048 10240 10240 2631680 11020288 44050432 176171008 715827200 715825152 176160768 44040192 11010048 2621440)
 	offset: 0@0)
 
 ! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:17:03'!
oneAndHalfLineSpaceIcon
 
^  `(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 536870912 524288 536870912 524288 536870912 524288 536870912 524288 537526400 524288 537526912 524288 548012160 524288 537526400 134742016 537526400 537395200 537526400 2148007936 537526946 524288 537526280 524288 537526306 2684878848 537526408 134742016 537526792 134742016 537528320 134742016 537526272 537395200 537526274 2148007936 537526280 524288 537526280 524288 548053002 2819096576 536870912 524288 536870912 524288 536870912 524288 536870912 524288 178956970 2862612480 0 0)
 	offset: 0@0) `.
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:13:26'!
oneAndHalfLineSpaceIconSelected
 
^  `Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715500138 2863136768 715499882 2863136768 710257258 2863136768 715500138 2796027904 715500138 2594701312 715500138 1789394944 715499865 2863136768 715500198 2863136768 715500185 1520959488 715500134 2796027904 715499942 2796027904 715499178 2796027904 715500202 2594701312 715500201 1789394944 715500198 2863136768 715500198 2863136768 710236837 1453850624 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 178956970 2862612480 0 0)
 	offset: 0@0`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:12:13'!
oneLineSpaceIcon
 
^  `Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536871552 524288 536873600 524288 536881792 524288 536912512 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536871552 524288 536914602 524288 536914602 524288 536870912 524288 536870912 524288 536870912 524288 536870912 524288 178956970 2862612480 0 0)
 	offset: 0@0`
	
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:12:26'!
oneLineSpaceIconSelected
 
^  `Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827562 2863136768 715826538 2863136768 715822442 2863136768 715807082 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715827562 2863136768 715806037 2863136768 715806037 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 178956970 2862612480 0 0)
 	offset: 0@0`	
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:24:35'!
selectJustifyIcon: anIntegerSelected for: anIntegerIndex

	^anIntegerIndex = anIntegerSelected 
		ifTrue:[
			IconForJustifySelected  at: anIntegerIndex ]
		ifFalse:[
			IconForJustify at: anIntegerIndex ]! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/19/2025 19:19:17'!
selectLineIcon: anIntegerSelected for: anIntegerIndex

	^anIntegerIndex = anIntegerSelected 
		ifTrue:[
			IconForLineSpaceSelected  at: anIntegerIndex ]
		ifFalse:[
			IconForLineSpace  at: anIntegerIndex ]! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'DF 10/12/2025 18:47:02'!
tabStopIcon
 
  ^(Form
 	extent: 12@15
 	depth: 2
 	fromArray: #( 0 0 0 0 2621440 11141120 44728320 178954240 0 0 0 0 0 0 0)
 	offset: 0@0)

 ! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:12:42'!
twoLineSpaceIcon
 
^  `Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 536870912 524288 536870912 524288 536870912 524288 536870912 524288 536873642 524288 536879114 2148007936 536903682 2148007936 536911872 2148007936 536911872 2148007936 536870912 2148007936 536870914 2148007936 536870922 524288 536870952 524288 536871072 524288 536871552 524288 536873472 524288 536881152 524288 536911872 524288 536911872 524288 536911874 2148007936 536914602 2148007936 536870912 524288 536870912 524288 536870912 524288 536870912 524288 178956970 2862612480 0 0)
 	offset: 0@0`
! !

!KaeruPrinter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:12:57'!
twoLineSpaceIconSelected
 
^  `Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 178956970 2862612480 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 715829247 2863136768 715831983 3936878592 715844267 3936878592 715848362 3936878592 715848362 3936878592 715827882 3936878592 715827883 3936878592 715827887 2863136768 715827902 2863136768 715827962 2863136768 715828202 2863136768 715829162 2863136768 715833002 2863136768 715848362 2863136768 715848362 2863136768 715848363 3936878592 715849727 3936878592 715827882 2863136768 715827882 2863136768 715827882 2863136768 715827882 2863136768 178956970 2862612480 0 0)
 	offset: 0@0`
	
! !

!DisjointIntervalSequence methodsFor: 'testing' stamp: 'DF 10/6/2025 13:28:16'!
includes: anInteger

	^intervals anySatisfy:[:any |
		any first <= anInteger and:[anInteger < any last] ]! !

!DisjointIntervalSequence methodsFor: 'testing' stamp: 'DF 10/6/2025 13:47:29'!
invariant

	| ii |
	
	ii := 1.
	
	[ii <= (intervals size - 1) ]
		whileTrue:[
			self assert: (intervals at: ii) last < (intervals at:ii +1) first. 
			ii := ii + 1].
		
	^true! !

!DisjointIntervalSequence methodsFor: 'initialization' stamp: 'DF 10/6/2025 13:06:16'!
initialize

	intervals := OrderedCollection new! !

!DisjointIntervalSequence methodsFor: 'editing' stamp: 'DF 10/6/2025 17:04:40'!
erase: anInterval 

	intervals := self erase: anInterval from: intervals ! !

!DisjointIntervalSequence methodsFor: 'editing' stamp: 'DF 10/6/2025 17:07:04'!
erase: anInterval from: anOrderedCollection

	| head left right fragments |

	self assert: anInterval first <= anInterval last.

	anOrderedCollection isEmpty
		ifTrue:[
			^anOrderedCollection ].

	head := anOrderedCollection at:1.
	
	head last < anInterval first
		ifTrue:[
			^(OrderedCollection with: head), (self erase: anInterval from: anOrderedCollection allButFirst) ].
		
	anInterval last < head first
		ifTrue:[
			^anOrderedCollection ].

	" anInterval and head overlap. if they are equal we answer the remaining collection.
	
	otherwise we remove the overlap from head. if head becomes empty we recursively erase what remains from the rest of the collection. 
	
	if anInterval becomes empty we answer the remaining head and the rest of the collection "
	 
	anInterval = head
		ifTrue:[
			^ anOrderedCollection allButFirst ].
	
	" they are not equal so we subtract anInterval from head ...
	
	... here's how to implement set substraction in terms of intervals 
	
	[b,e) \ [x,y) = 
		[b,e) ∩ ( [-inf,x) ∪ [y, inf) ) =
		( [b,e) ∩ [-inf,x) ) ∪ ( [b,e) ∩ [y, inf) ) =					
		( [b,e min: x) ) ∪ ( [b max: y,e)  
	
	note that this union must be included entirely in [b,e) --- as is appropriate
	since we only substract from [b,e) --- when will it actually be two intervals?
	
	excactly when 
	
	e min:x < b max: y 
	
	otherwise they overlap and we can merge them to form the interval
	
	[b min: (b max: y) , e max: (e min:x ) ) = [b, e)
			
	surprise :) 
	
	if they overlap they form the original head ...  
	
	but note that each part may be empty. 
	
	 "

	left := head first to: (head last min: anInterval first).
	
	right := (head first max: anInterval last) to: head last.

	fragments := OrderedCollection new.
	
	left first < left last 
		ifTrue:[
			fragments add: left ].
		
	right first < right last
		ifTrue:[
			fragments add: right].
		
	^fragments , (self erase: anInterval from: anOrderedCollection allButFirst).
	! !

!DisjointIntervalSequence methodsFor: 'editing' stamp: 'DF 10/6/2025 15:10:05'!
insert: anInterval

	" 
	insert anInterval into the sequence while maintaining its invariant. 
	
	[1,4) , [6,8) + [4,6) = [1,8)
	
	[1,4) , [9,11) , [12, 15) + [6,13) = [1,4) , [6,15) "
							
	intervals := self insert: anInterval into: intervals
! !

!DisjointIntervalSequence methodsFor: 'editing' stamp: 'DF 10/6/2025 15:10:40'!
insert: anInterval into: anOrderedCollection

	" 
	insert anInterval into anOrderedCollection of disjoint intervales while maintaining its invariant. 
	
	[1,4) , [6,8) + [4,6) = [1,8)
	
	[1,4) , [9,11) , [12, 15) + [6,13) = [1,4) , [6,15) 

	To achieve this we iterate over the existing sequence and decide either to insert 
	an interval into the result sequence or to enlarge the inverval  that we are about
	to insert. For example, to insert [5,7) into the sequence
		
		[1,3) , [6,13)
				
	we add [1,3) to the result, but then enlarge [5,7) to [5,13) before adding it to get 
	the final result [1,3) , [5,13)
			
	The recursion is as follows:

	for an empty collection we answer a collection with the inverval.
	
	otherwise, if the interval at the head of the collection appears before anInterval we 
	recursively insert anInterval into the tail and answer the result prefixed with the head
	interval. 
	
	otherwise, if anInterval appears before the head interval we answer the collection prefixed
	with anInterval
	
	otherwise, we merge anInterval with the head interval and answer the result of recursively
	inserting the merged interval into the tail.
	
	"
	
	| head  |

	self assert: anInterval first <= anInterval last.

	anOrderedCollection isEmpty
		ifTrue:[
			^ OrderedCollection with: anInterval ].
	
	head := anOrderedCollection at:1.
	
	head last < anInterval first
		ifTrue:[
			^(OrderedCollection with: head), (self insert: anInterval into: anOrderedCollection allButFirst) ].
		
	anInterval last < head first
		ifTrue:[
			^(OrderedCollection with: anInterval), anOrderedCollection ].

	^self insert: ((head first min: anInterval first) to: (head last max: anInterval last)) into: anOrderedCollection allButFirst.
				
! !

!DisjointIntervalSequence methodsFor: 'shifting' stamp: 'DF 10/7/2025 14:46:19'!
shiftBack: aNumber from: anIndex

	" Decrease by aNumber all the boundaries of intervals that are bigger than anIndex. Remove 
	any invervals that become empty as a result. 
	
	For example,
	
	[1,3), [4,6) , [10, 12), [15, 20) shiftBack: 3 from: 6 = [1,3), [7, 9), [12,17)

	the [4,6) interval was dropped because it became [4,3) => empty. 
			
	Note that we don't shift the entire interval, only the member that appears after anIndex.
	
	shifting can create overlapping intervals. for example, 
	
	[1,4) [6,9) shiftBack: 3 from: 5 = [1,4) [3, 6)
	
	123456789
	12349
	
	thus after creating the shifted intervals we use insert to rebuild the correct data structure.
	
	"
	
	| result |
	
	result := OrderedCollection new.
	
	intervals do:[:each |
		
		each last < anIndex
			ifTrue:[ " the interval appears before anIndex, don't shift it "
				result add: each ]
			ifFalse:[
				each first >= anIndex
					ifTrue:[ " the entire interval appears after the index. shift the entire interval. if the entire interval is pushed below 1, do not add it. "
						each last - aNumber >= 1
							ifTrue:[
								result add: (each first - aNumber to: each last - aNumber)] ]
					ifFalse:[ " only the interval's end is after the index. shift just the end but don't add to the result if the interval becomes empty "
						each first < (each last - aNumber)
							ifTrue:[
								result add: (each first to: each last - aNumber) ] ] ] ].	
	
	intervals := OrderedCollection new.
	
	result do:[:each |
		self insert: each ].
	! !

!DisjointIntervalSequence methodsFor: 'shifting' stamp: 'DF 10/6/2025 17:36:54'!
shiftForward: aNumber from: anIndex

	" Increase by aNumber all the boundaries of intervals that are bigger than anIndex. Remove 
	any invervals that become empty as a result. 
	
	For example,
	
	[1,3), [4,6) , [10, 12), [15, 20) shiftForward: 3 from: 5 = [1,3), [4,9), [13, 15), [18, 23)

	Note that we don't shift the entire interval, only the member that appears after anIndex.
	
	shifting forward cannot create overlapping intervals because it can only increase the distance
	within and between intervals "
	
	1 to: intervals size do:[:ii | | each |
		
		each := intervals at:ii.
		
		each last >= anIndex
			ifTrue:[ 
				each first >= anIndex
					ifTrue:[ " the entire interval appears after the index. shift the entire interval "
						intervals at: ii put: (each first + aNumber to: each last + aNumber)]
					ifFalse:[ " only the interval's end is after the index. shift just the end  "
						intervals at:ii put: (each first to: each last + aNumber) ] ] ] .	
! !

!DisjointIntervalSequence methodsFor: 'enumerating' stamp: 'DF 10/7/2025 21:01:41'!
at: ii

	^ intervals at:ii! !

!DisjointIntervalSequence methodsFor: 'enumerating' stamp: 'DF 10/7/2025 14:08:46'!
do: aBlock

	intervals do:aBlock! !

!DisjointIntervalSequence methodsFor: 'object serialization' stamp: 'DF 10/7/2025 21:55:32'!
serializeOn: aWriteStream

	aWriteStream nextPut: $[.
		
	intervals do:[:each |
		
		aWriteStream nextPut: $[.
			
		each first serializeOn: aWriteStream.
		
		aWriteStream nextPut: Character space.
		
		each last serializeOn: aWriteStream.
		
		aWriteStream nextPut: $]. ]
	
	separatedBy:[
		aWriteStream nextPut: Character space ].
	
	aWriteStream nextPut: $].! !

!DisjointIntervalTree methodsFor: 'accessing' stamp: 'DF 10/28/2025 19:57:17'!
interval
	^interval! !

!DisjointIntervalTree methodsFor: 'accessing' stamp: 'DF 10/28/2025 19:57:02'!
interval: anInterval 

	interval := anInterval ! !

!DisjointIntervalTree methodsFor: 'accessing' stamp: 'DF 10/28/2025 19:52:03'!
kind: aSymbol
	kind := aSymbol! !

!DisjointIntervalTree methodsFor: 'testing' stamp: 'DF 10/28/2025 21:57:01'!
invariant

	" the children trees are ordered such that they do not overlap and in ascending order. "
	
	1 to: children size - 1 do:[:ii |
		self assert: (children at: ii :: interval last <= (children at:ii + 1 :: interval first)) ].
	
	" the children are included in this tree's interval "
	
	children do:[:each | 
		self assert: interval first <= each interval first.
		self assert: each interval last <= interval last ].
	
	" the children are valid interval trees "
	
	children do:[:each | 
		self assert: each invariant].
	
	^true! !

!DisjointIntervalTree methodsFor: 'initialization' stamp: 'DF 10/28/2025 22:08:37'!
initialize

	children := OrderedCollection new.
	
	kind := #p! !

!DisjointIntervalTree methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2025 22:00:46'!
insertInterval: anInterval kind: aSymbol

	| mm uu vv |
	
	anInterval first >= anInterval last ifTrue:[^self]. "don't do anything if the interval is empty"

	self assert: interval first <=  anInterval first.
	self assert: anInterval last <= interval last.
	
	children ifEmpty:[
		children add: (DisjointIntervalTree new interval: anInterval ; kind: aSymbol ; yourself).
		^self ].

	" mm is the part of anInterval that appears inside the first interval in children "
	
	mm := (anInterval first max: children first interval first) to: (anInterval last min: children first interval last).

	children first insertInterval: mm kind: aSymbol.
		
	" vv is the part of anInterval that lies after the first interval in children "
	
	vv := children first interval last to: anInterval last.
	
	self insertInterval: vv kind: aSymbol after: 1.
	
	" uu is the part of anInterval where it appears before the first interval in children "
		
	uu := anInterval first to: children first interval first.

	uu first < uu last ifTrue:[
		children addFirst: (DisjointIntervalTree new interval: uu ; kind: aSymbol ; yourself) ].
		
	! !

!DisjointIntervalTree methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2025 22:03:10'!
insertInterval: anInterval kind: aSymbol after: anIndex

	" insert anInterval assuming that it begins after the interval at anIndex "
	
	| mm uu vv |
	
	anInterval first >= anInterval last ifTrue:[^self]. "don't do anything if the interval is empty"

	self assert: interval first <=  anInterval first.
	self assert: anInterval last <= interval last.

	self assert: (children at: anIndex) interval last <= anInterval first.

	anIndex = children size ifTrue:[ " the interval appears after the last interval in the list "
		children add: (DisjointIntervalTree new interval: anInterval ; kind: aSymbol ; yourself).
		^self ].

	" mm is the part of anInterval that appears inside the next interval in children "
	
	mm := (anInterval first max: (children at: anIndex+1) interval first) to: (anInterval last min: (children at: anIndex+1) interval last).

	(children at: anIndex+1)  insertInterval: mm kind: aSymbol.
		
	" vv is the part of anInterval that lies after the first interval in children "
	
	vv := (children at: anIndex+1) interval last to: anInterval last.
	
	self insertInterval: vv kind: aSymbol after: anIndex + 1.
	
	" uu is the part of anInterval where it appears before the next interval in children "
		
	uu := anInterval first to: (children at: anIndex+1) interval first.

	uu first < uu last ifTrue:[
		children add: (DisjointIntervalTree new interval: uu ; kind: aSymbol ; yourself) after: anIndex ].
		
	! !

!DisjointIntervalTree methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2025 20:06:38'!
tagsOf: anIndex

	| cc |
	
	self assert: interval first <= anIndex.
	self assert: anIndex < interval last.
	
	cc := children detect:[:each | 
			each interval first <= anIndex and:[anIndex < each interval last ]  ] 
		ifNone:[ nil ].
		
	^cc isNil ifTrue:[
		Set with: kind ]
	ifFalse:[
		(Set with: kind) , (cc tagsOf: anIndex) ]
	
	

	! !

!DisjointIntervalTree methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2025 22:33:41'!
transform: aString at: anIndex into: aWriteStream

	| ii jj |
	
	self assert: anIndex <= aString size.
	
	self assert: anIndex <= interval last.
	
	aWriteStream nextPutAll: ('<{1}>' format: { kind }).
	
	jj := 1.
	
	ii := anIndex.
	
	[ jj <= children size ] whileTrue:[
		
		ii = (children at: jj) interval first :: ifTrue:[
			
			ii := (children at:jj) transform: aString at: ii into: aWriteStream.
			jj := jj + 1]
		ifFalse:[
			aWriteStream nextPut: (aString at: ii).
			ii := ii + 1].		
		].

	[ ii < interval last ] whileTrue:[
	
		aWriteStream nextPut: (aString at:ii).
		ii := ii + 1].
	
	aWriteStream nextPutAll: ('</{1}>' format: { kind }).
	
	^ii! !

!DocBookWriter methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 16:52:18'!
library: aKLibrary
	klib := aKLibrary ! !

!DocBookWriter methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 17:52:47'!
renderDocumentAt: anIterator on: anXMLWriter

	| bb title |
	
	anXMLWriter  startTag: 'book' ; endTag.
	
	bb := anIterator.
	
	title := bb line.
	
	anXMLWriter startTag: 'title'; endTag.
	
	anXMLWriter pcData: title ; endTag: 'title'.
	
	[ bb paragraph isDocBreaking ]
		whileFalse:[
			self renderParagraphAt: bb on: anXMLWriter.
			bb nextParagraph ].

	self renderParagraphAt: bb on: anXMLWriter.
	bb nextParagraph.
	
	anXMLWriter endTag: 'book'.
	
	^bb ! !

!DocBookWriter methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 17:48:59'!
renderLibraryOn: anXMLWriter

	| bb ee attrs |

	anXMLWriter xmlDeclaration: '1.0' encoding: 'UTF-8'.

	attrs := self asXML: klib attributes.
	
	attrs at: 'xmlns' put: 'http://docbook.org/ns/docbook' .
	
	anXMLWriter  startElement: 'set' attributeList: attrs ; endTag.
	
	ee := klib end.
	bb := klib begin.
	
	[ bb ~= ee ]
	
		whileTrue:[			
			bb next.
			bb := self renderDocumentAt: bb on: anXMLWriter ] .
	
	anXMLWriter endTag: 'set'.! !

!DocBookWriter methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 17:56:09'!
renderParagraphAt: anIterator on: anXMLWriter

	| text pp defaults |
	
	defaults := klib attributes.
	
	pp := anIterator paragraph.
	
	pp attributes == defaults ifTrue:[
		anXMLWriter startTag: 'par'  ; endTag.
	]
	ifFalse:[
		
		anXMLWriter startElement: 'par' attributeList: (self asXML: pp attributes ) ; endTag.
	].

	text := anIterator paragraph text.
	
	anXMLWriter pcData: text.
	
	pp emphasis ifNotNil:[
		anXMLWriter startTag: 'emphasis' ; endTag.
			
			pp emphasis keys do:[:each |
			
				pp emphasis at: each :: do:[:ival |
					anXMLWriter startElement: 'interval' attributeList: { 'first' -> ival first asString . 'last' -> ival last asString } asDictionary ; endEmptyTag: 'interval' ] ].
		
		anXMLWriter endTag: 'emphasis' ].
		
	anXMLWriter endTag: 'par'.	
	! !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 18:28:08'!
atEnd

	^ kiterator isBeforeStart! !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'Df 9/24/2025 13:18:04'!
next

	| cc |
	
	cc := kiterator char.
	
	kiterator prev.
	
	^ cc
! !

!KBackwardStream methodsFor: 'as yet unclassified' stamp: 'Df 9/24/2025 13:36:37'!
peek

	^kiterator isBeforeStart
		ifTrue:[ nil ] ifFalse:[ kiterator char ]! !

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

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/12/2025 16:36:46'!
< aKIterator

	^ self <= aKIterator and:[self ~= aKIterator ]! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/16/2025 19:50:14'!
<= aKIterator

	self assert: (aKIterator isKindOf: KForwardIterator ).
	
	self assert: pars == aKIterator privPars.

	parIndex < aKIterator privParIndex ifTrue:[^true].
	
	parIndex > aKIterator privParIndex ifTrue:[^false].
	
	" parIndex = aKIterator parIndex "
	
	lineIndex < aKIterator privLineIndex ifTrue:[^true].

	lineIndex > aKIterator privLineIndex ifTrue:[^false].

	" lineIndex = aKIterator lineIndex "
	
	^ charIndex <= aKIterator privCharIndex 	! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/12/2025 16:36:58'!
= aKIterator

	aKIterator isKindOf: self class :: ifFalse:[^false].
	
	pars == aKIterator privPars ifFalse:[^false].
	
	parIndex = aKIterator privParIndex ifFalse:[^false].
	
	lineIndex = aKIterator privLineIndex ifFalse:[^false].
	
	^ charIndex = aKIterator privCharIndex ! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/16/2025 19:51:40'!
> aKIterator

	^ (self <= aKIterator) not! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/12/2025 16:37:02'!
~= aKIterator

	^( self = aKIterator ) not
! !

!KForwardIterator methodsFor: 'testing' stamp: 'DF 10/7/2025 13:27:00'!
hasEmphasis: aSymbol

	| par ii |
	
	par := self paragraph.

	par emphasis ifNil:[ " the paragraph has no emphasis at all "	

		^false].
	
	par emphasis at: aSymbol ifAbsent:[ " the paragraph has no aSymbol emphasis "
		
		^false].
	
	" calculate the relative character position in the paragraph "
	
	ii := (par lineIndexToCharIndex: lineIndex) + charIndex.
	
	^par emphasis at:aSymbol :: includes: ii
	! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/12/2025 16:37:21'!
hash

	^pars hash bitXor: ( parIndex hash bitXor: ( lineIndex hash bitXor: charIndex hash ) )! !

!KForwardIterator methodsFor: 'testing' stamp: 'DF 9/28/2025 15:06:25'!
isAtEnd

	parIndex = pars size
		ifFalse:[^false].
	
	lineIndex = (pars at: parIndex :: numLines) ::
		ifFalse:[^false].
	
	^charIndex = (pars at: parIndex :: lineAt: lineIndex :: length).
! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/16/2025 22:01:36'!
isAtEndOfLine
	^charIndex =  (pars at: parIndex :: lineAt: lineIndex :: length )! !

!KForwardIterator methodsFor: 'testing' stamp: 'DF 10/1/2025 21:28:19'!
isAtFirstLineInParagraph
	
	^ lineIndex = 1 and:[charIndex = 1]! !

!KForwardIterator methodsFor: 'testing' stamp: 'DF 10/3/2025 16:51:19'!
isAtLastLineInParagraph
	
	^ lineIndex = (pars at:parIndex) numLines and:[charIndex = 1]! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/12/2025 16:37:29'!
isAtStart
	
	^ parIndex = 1 and:[ lineIndex = 1] and:[ charIndex = 1]! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/24/2025 13:33:12'!
isBeforeStart
	
	^ parIndex = 1 and:[ lineIndex = 1] and:[ charIndex = 0]! !

!KForwardIterator methodsFor: 'testing' stamp: 'DF 10/7/2025 13:27:45'!
isBold

	^self hasEmphasis: #bold! !

!KForwardIterator methodsFor: 'testing' stamp: 'DF 9/28/2025 18:19:42'!
isPastEnd
	
	^ parIndex = (pars size + 1)! !

!KForwardIterator methodsFor: 'accessing' stamp: 'Df 9/12/2025 16:37:11'!
attributes

	^ pars at: parIndex :: attributes! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/6/2025 17:58:08'!
char

	" answer the character pointed to by self "
	
	^ pars at: parIndex :: lineAt: lineIndex :: charAt: charIndex! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/8/2025 15:40:37'!
charIndex
	^charIndex! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/11/2025 14:47:33'!
fastGlobalIndex: lastValidParagraphIndex

	" Quickly answers the global character index represented by this iterator, given the index of 
	the last paragraph that has a valid startingCharacterIndex. "
	
	|  index |
	
	self assert: parIndex <= pars size.
	
	parIndex <= lastValidParagraphIndex ifTrue:[

		| pp |
		
		pp := pars at: parIndex.
	
		 ^pp startingCharacterIndex - 1 + (pp lineIndexToCharIndex: lineIndex) + charIndex].

	index := (pars at: lastValidParagraphIndex) startingCharacterIndex - 1.
	
	lastValidParagraphIndex to: parIndex - 1 do:[:ii | | par |
		par := pars at: ii.
		index := index + par length ].
	
	^index + (pars at: parIndex :: lineIndexToCharIndex: lineIndex) + charIndex .
! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:34:22'!
height 

	" Answer the number of half lines up to the line referenced by self "
	
	| hh |
	
	hh := 0.
	
	1 to: parIndex - 1 do:[: ii | 
		hh := hh + (pars at: ii) height ].
	
	^hh + ((lineIndex -1) * (pars at: parIndex :: attributes lineHeight) )! !

!KForwardIterator methodsFor: 'accessing' stamp: 'Df 9/23/2025 17:35:13'!
line

	^ pars at: parIndex :: lineAt: lineIndex :: chars! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:34:27'!
lineHeight 

	" Answer the number of half line units for the current paragraph "
	
	^ pars at: parIndex :: attributes lineHeight! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/8/2025 15:40:33'!
lineIndex
	^lineIndex ! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/8/2025 15:40:44'!
parIndex
	^parIndex! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:30:18'!
paragraph

	^ pars at: parIndex ! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/3/2025 00:11:55'!
physicalPageIndexForPageSize: anIntegerPageSize

	" Answer the physical page and line number of the character referenced by self.
	
	A physical page has a fixed number of half lines (given by anIntegerPageSize). A paragarph has a lineHeight
	that determines how many half lines a single logical (KLine) occupies on the physical page. For example a
	paragraph with 5 lines and a lineHeight of 3 will occupy 15 half lines. Assume the page size is 8 (4 full lines) then the first 2 logical lines (occupying 6 half lines will go on the first page, the other 2 will go on the second page, and the last line will start a third page.
	
	2
	1
	2
	1
	
	2
	1
	2
	1
	
	2
	1	
	
	In general if a paragraph has a line height of k and a page has m half lines left, then we can take at most m div:k lines from the paragraph before we have to start a new page.
	
	"
	
	| nn kk pn pi par |

	pn := 0. "the number of pages so far".
	
	nn := anIntegerPageSize. "the amount of free lines in the current (pn) page (in half line units) "

	pi := 1.
	
	[ pi < parIndex ]
		whileTrue:[

			par := pars at: pi.
	
			kk := par numLines. " the amount of lines not yet taken from the current paragraph (pars at:pi) "

			[ (nn div: par lineHeight) <= kk ]
				whileTrue:[
					" the paragarph has more lines then the page can take. take as much as possible and
					move to a new page "
					kk := kk - (nn div: par lineHeight).
					pn := pn + 1.
					nn := anIntegerPageSize ].
				
			"it must be that (nn div: par lineHeight) > kk"
			
			" we take everything from the paragraph and move to the next paragraph "
			
			nn := nn - (kk * par lineHeight).
			
			"if the paragraph ends with a page break we move to a new page and reset the counters"
			
			par isPageBreaking 
				ifTrue:[
					pn := pn + 1.
					nn := anIntegerPageSize].
			
			pi := pi + 1].

	" now for the paragraph that the iterator references "
	
	par := pars at: pi.
	
	kk := lineIndex. " the amount of lines not yet taken from the current paragraph (pars at:pi) "

	[ (nn div: par lineHeight) <= kk ]
		whileTrue:[
			" the paragarph has more lines then the page can take. take as much as possible and
			move to a new page "
			kk := kk - (nn div: par lineHeight).
			pn := pn + 1.
			nn := anIntegerPageSize ].
				
	"it must be that (nn div: par lineHeight) > kk"
			
	" we take everything from the paragraph and finish "
			
	nn := nn - (kk * par lineHeight).
			
	^ { pn . anIntegerPageSize - nn }
					
			
					! !

!KForwardIterator methodsFor: 'accessing' stamp: 'DF 10/11/2025 13:58:32'!
slowGlobalIndex

	"Answers the global character index represented by this iterator "
	
	| index |
	
	index := 0.
	
	1 to: parIndex - 1 do:[:ii | | par |
		par := pars at: ii.
		index := index + par length ].
	
	^ parIndex = (pars size + 1)
		ifTrue:[ " the iterator points one place past the end of text "
			 index +1 ]
		ifFalse:[
			^index + (pars at: parIndex :: lineIndexToCharIndex: lineIndex) + charIndex ].
! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:07'!
advance: anInteger

	anInteger timesRepeat: [self next].
	
	^self! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:53'!
next

	charIndex <  (pars at: parIndex :: lineAt: lineIndex :: length )
		ifTrue:[
			^self privNextChar ].
		
	lineIndex <  (pars at: parIndex :: numLines )
		ifTrue:[
			^self privNextLine ].
	
	self privNextPar! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'DF 10/19/2025 12:22:50'!
nextLine

	charIndex := pars at: parIndex :: lineAt: lineIndex :: length.

	lineIndex <  (pars at: parIndex :: numLines )
		ifTrue:[
			^self privNextLine ].
		
	parIndex < pars size 
		ifTrue:[
			^self privNextPar].
		
	" we set charIndex to the end of the last line in the paragraph, this is effective only when we 
	are located on the last line in the last paragraph "
	
	charIndex := pars at: parIndex :: lineAt: lineIndex :: length.
	
! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 17:48:04'!
nextParagraph

	charIndex := pars at: parIndex :: lineAt: lineIndex :: length.

	parIndex < pars size 
		ifTrue:[
			self privNextPar. 
			charIndex := 1]
	
! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:58'!
pars: anOrderedCollection

	pars := anOrderedCollection.
! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 20:38:25'!
setAtBeginningOfLine

	charIndex := 1.! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 14:39:55'!
setAtEnd
	
	" Set the iterator to the last character in the text, this character must be a Character newDocument. "
	
	parIndex := pars size.
	
	lineIndex := pars at: parIndex :: numLines .
	
	charIndex := pars at: parIndex :: lineAt: lineIndex :: length.! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 11:54:55'!
setAtStart

	" Set self to point to the first character. If the text is empty this address will mark one place
	after the end of text and thus be equal to self setAtEnd "
	
	parIndex := 1.
	lineIndex := 1.
	charIndex := 1.! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:20'!
privCharIndex
	^charIndex! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:24'!
privCharIndex: anIndex

	charIndex := anIndex ! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:27'!
privLineIndex
	^lineIndex! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:32'!
privLineIndex: anIndex

	lineIndex := anIndex! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:09'!
privNextChar

	self assert: charIndex <  (pars at: parIndex :: lineAt: lineIndex :: length ).
	
	charIndex := charIndex + 1! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:12'!
privNextLine

	self assert: lineIndex <  (pars at: parIndex :: numLines ).

	self assert: charIndex =  (pars at: parIndex :: lineAt: lineIndex :: length ).
	
	lineIndex := lineIndex + 1.
	
	charIndex := 1.! !

!KForwardIterator methodsFor: 'private' stamp: 'DF 9/28/2025 18:06:13'!
privNextPar

	self assert: parIndex <= pars size. "= is here to support marking past the end of text "
	
	self assert: lineIndex =  (pars at: parIndex :: numLines ).

	self assert: charIndex =  (pars at: parIndex :: lineAt: lineIndex :: length ).

	parIndex := parIndex + 1.

	lineIndex := 1.

	charIndex := 1
! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:38'!
privParIndex
	^parIndex! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:42'!
privParIndex: anIndex

	parIndex := anIndex! !

!KForwardIterator methodsFor: 'private' stamp: 'Df 9/12/2025 16:38:46'!
privPars
	^pars! !

!KBidiIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:22:56'!
privPrevChar

	self assert: charIndex > 1.
	
	charIndex := charIndex - 1! !

!KBidiIterator methodsFor: 'private' stamp: 'DF 8/18/2025 16:23:50'!
privPrevLine

	self assert: lineIndex >  1.

	self assert: charIndex =  1.
	
	lineIndex := lineIndex - 1.
	
	charIndex := (pars at: parIndex :: lineAt: lineIndex :: length ).
! !

!KBidiIterator methodsFor: 'private' stamp: 'Df 9/24/2025 13:36:18'!
privPrevPar

	self assert: parIndex >= 1.
	
	self assert: lineIndex =  1.

	self assert: charIndex =  1.

	parIndex > 1
		ifTrue:[	
			parIndex := parIndex - 1.
	
			lineIndex := 	pars at: parIndex :: numLines.
	
			charIndex := pars at: parIndex :: lineAt: lineIndex :: length]
		ifFalse:[
			" this makes it possible to move the iterator one place before the begining of text "
			charIndex := 0].
! !

!KBidiIterator methodsFor: 'as yet unclassified' stamp: 'DF 8/18/2025 16:29:17'!
prev

	charIndex >  1
		ifTrue:[
			^self privPrevChar ].
		
	lineIndex >  1
		ifTrue:[
			^self privPrevLine ].
	
	self privPrevPar! !

!KBidiIterator methodsFor: 'as yet unclassified' stamp: 'DF 10/3/2025 13:49:34'!
prevLine

	" We cannot move to the previous line if we are on the first line "
	
	self assert: (lineIndex > 1 or:[parIndex > 1]).

	charIndex := 1.
	
	lineIndex > 1
		ifTrue:[
			self privPrevLine. charIndex := 1. ^self ].
		
	parIndex > 1 
		ifTrue:[
			self privPrevPar].
		
	charIndex := 1.
	
	
	
! !

!KBidiIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 12:07:43'!
retreat: anInteger

	anInteger timesRepeat: [self prev].
	
	^self! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 18:19:27'!
atEnd

	^ kiterator isPastEnd! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 8/30/2025 17:24:36'!
next

	| cc |
	
	cc := kiterator char.
	kiterator next.
	
	^cc! !

!KForwardStream methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 16:45:04'!
peek

	^kiterator isPastEnd
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

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/12/2025 16:35:55'!
begin

	| anIterator |
	
	anIterator := KBidiIterator new.
	
	anIterator pars: paragraphs ; setAtStart.
	
	^anIterator ! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/8/2025 23:01:52'!
charIndexToIterator: anIndex

	| pi li iterator |
	
	self assert: paragraphs notEmpty.	
	
	pi := self charIndexToParIndex: anIndex.

	self assert: paragraphs size + 1 >= pi first.
	
	li := paragraphs size + 1 = pi first
			ifTrue:[ #(1 1) ]
			ifFalse:[						
				paragraphs at: pi first :: charIndexToLineIndex: pi second].
	
	iterator := KBidiIterator new.
	
	iterator pars: paragraphs ; privParIndex: pi first ; privLineIndex: li first ; privCharIndex: li second. 
	
	^iterator! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/9/2025 10:24:13'!
charIndexToParIndex: anIndex

	" answer a pair whose first member is the paragraph index and whose second member is the character index in the paragraph text that corresponds to anIndex.
	
	If anIndex exceeds the number of characters in the library, answer the remainder. For example,
	
	if there are 3 paragraphs each with 10 characters then
	
	self charIndexToParIndex: 31 = { 4 . 1 }.
	
	This behavior gives the correct result when we pass anIndex that is one position past the end of the text in the library. 
	
	"
	|result oracle cb |
	
	cb := paragraphs at: paragraphBoundary :: startingCharacterIndex.
	
	result := anIndex <= cb 
		ifTrue:[
			self fastCharIndexToParIndex: anIndex]
		ifFalse:[
			self slowCharIndexToParIndex: anIndex].
		
	"oracle := self oracleCharIndexToParIndex: anIndex.
	
	self assert: oracle = result."
	
	^result
		! !

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/12/2025 16:35:55'!
end

	| anIterator |
	
	anIterator := KBidiIterator new.
	
	anIterator pars: paragraphs ; setAtEnd.
	
	^anIterator ! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/9/2025 09:59:29'!
fastCharIndexToParIndex: anIndex

	" answer a pair whose first member is the paragraph index and whose second member is the character index in the paragraph text that corresponds to anIndex.

	Use a fast binary search based on the assumption that anIndex <= cacheBoundary	
	"
	
	| ii pp par cb |
	
	cb := paragraphs at: paragraphBoundary :: startingCharacterIndex.
	
	self assert: anIndex <= cb.
	
	pp := self findParagraphHolding: anIndex.
	
	par := paragraphs at:pp.
	
	ii := anIndex - par startingCharacterIndex + 1.
	
	^ { pp . ii }! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/11/2025 13:46:48'!
findParagraphHolding: anIndex

	| cb bp ep |
	
	" quickly find the paragraph that holds (the global) anIndex assuming that anIndex
	
	is a character located before the cache boundary
	
	
	[1 8) [8 11) [11 17) [17 19) [19 23)
	
	b = 1 e = 5 x = 10
	b = 1 e = 3 
	b = 1 e = 2
	b = 2 e = 2
	 "

	cb := paragraphs at: paragraphBoundary :: startingCharacterIndex.
	
	self assert: anIndex <= cb .
	
	bp := 1.
	
	ep := paragraphBoundary.
	
	[bp < ep ] 
		whileTrue:[
			| mm |

			" bp <= (ep + bp) // 2 < ep "
			
			mm := (ep + bp) // 2.
	
			" bp <= mm < ep "
			
			anIndex < ((paragraphs at:mm) startingCharacterIndex + (paragraphs at:mm) length) ifTrue:[
				
				ep := mm 
				
				" anIndex < (paragraphs at:ep) startingCharacterIndex + (paragraphs at:ep) length "
			]
			ifFalse: [
				
				" anIndex >= (paragraphs at:mm) startingCharacterIndex + (paragraphs at:mm) length 
				
				==> because 
				
				(paragraphs at: mm+1) startingCharacterIndex = (paragraphs at:mm) startingCharacterIndex + (paragraphs at:mm) length
				
				anIndex >= (paragraphs at:mm + 1) startingCharacterIndex 
				
				"
				
				bp := mm + 1 
				
				" anIndex >= (paragraphs at:bp) startingCharacterIndex "
			]
		].	

	"
	self assert:  (paragraphs at:bp) startingCharacterIndex <= anIndex.
	
	self assert:  anIndex < (paragraphs at:ep) startingCharacterIndex + (paragraphs at:ep) length.	
	
	self assert: bp = ep 
	
	==> 
	"
	
	self assert:  (paragraphs at:bp) startingCharacterIndex <= anIndex.
	
	self assert:  anIndex < (((paragraphs at:bp) startingCharacterIndex) + (paragraphs at:bp) length).
	
	^ bp
	! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/11/2025 14:50:13'!
iteratorToCharIndex: anIterator

	^ anIterator fastGlobalIndex: paragraphBoundary.
! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/9/2025 10:14:42'!
oracleCharIndexToIterator: anIndex

	| pi li iterator |
	
	self assert: paragraphs notEmpty.	
	
	pi := self oracleCharIndexToParIndex: anIndex.

	self assert: paragraphs size + 1 >= pi first.
	
	li := paragraphs size + 1 = pi first
			ifTrue:[ #(1 1) ]
			ifFalse:[						
				paragraphs at: pi first :: charIndexToLineIndex: pi second].
	
	iterator := KBidiIterator new.
	
	iterator pars: paragraphs ; privParIndex: pi first ; privLineIndex: li first ; privCharIndex: li second. 
	
	^iterator! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/9/2025 09:07:36'!
oracleCharIndexToParIndex: anIndex

	" answer a pair whose first member is the paragraph index and whose second member is the character index in the paragraph text that corresponds to anIndex.
	If anIndex exceeds the number of characters in the library, answer the remainder. For example,
	
	if there are 3 paragraphs each with 10 characters then
	
	self charIndexToParIndex: 31 = { 4 . 1 }.
	
	This behavior gives the correct result when we pass anIndex that is one position past the end of the text in the library. 
	
	"
	
	| ii pp |
	
	ii := anIndex. pp := 1.
	
	[ pp <= paragraphs size and: [ii > ((paragraphs at:pp) length) ] ]
		whileTrue:[
			ii := ii - ((paragraphs at:pp) length).
			pp := pp + 1].

	^ { pp . ii }! !

!KLibrary methodsFor: 'addressing' stamp: 'DF 10/11/2025 13:48:31'!
slowCharIndexToParIndex: anIndex

	" answer a pair whose first member is the paragraph index and whose second member is the character index in the paragraph text that corresponds to anIndex.
		
	This version assumes that anIndex is further away from cacheBoundary. It starts from the paragraph
	located at the cache boundary and progresses linearly until reaching the paragraph that holds anIndex. Along the way it recalculates the caches of the paragraphs thus moving cacheBounary upto the paragraph that holds anIndex.
	
	  1 2  3  4 5    6 7 8
	
	[1 2 3] [1 2] [1 2 3] 
	
	"
	
	|  ii pp len cb |
	
	cb := paragraphs at: paragraphBoundary :: startingCharacterIndex.

	self assert: anIndex > cb .
	
	pp := paragraphBoundary.
	
	ii := anIndex + 1 - (paragraphs at:pp) startingCharacterIndex.
	
	len := paragraphs at:pp :: length.
	
	[ pp < paragraphs size and: [ii > len ] ]
		whileTrue:[

			paragraphs at:pp +1 :: startingCharacterIndex: (paragraphs at: pp) startingCharacterIndex + len.
			
			ii := ii - len.
			pp := pp + 1.
			len := paragraphs at:pp :: length. ].

	paragraphBoundary := pp.
	
	^ { pp . ii }! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 10/11/2025 11:54:40'!
insert: aCharacter after: anIndex

	| pp |
	
	self assert: anIndex > 0.
	
	self assert: (self isIndexLeqEnd: anIndex).
	
	self assert: paragraphs notEmpty.
	
	"self assert: self invariant."
	
	pp := aCharacter isKLineSeparator 
		ifTrue:[
			self insertBreakCharacter: aCharacter after: anIndex]
		ifFalse:[
			self insertLetter: aCharacter after: anIndex].
				
	" at this point all the paragraphs upto and including at pp have a valid start address, but the next paragraph and beyond must be invalidated "
	
	paragraphBoundary := pp.

	"self assert: self invariant."
! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 10/9/2025 09:41:01'!
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

	ii > 0  and: [text at: ii :: isKLineSeparator ] ::
		ifTrue:[
			right := { aCharacter } , right]
		ifFalse:[
			left := left asOrderedCollection, { aCharacter } ].
		
	(paragraphs at:pp) rebuildFromText: left asOrderedCollection.
	
	right notEmpty
		ifTrue:[
			newPar := self newItem.
	
			newPar attributes: (paragraphs at:pp) attributes.
			
			newPar rebuildFromText: right.
			
			newPar startingCharacterIndex: (paragraphs at:pp) startingCharacterIndex + (paragraphs at:pp) length.
	
			paragraphs add: newPar afterIndex: pp].
	
	^pp
	! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 10/9/2025 10:07:34'!
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
				ifTrue:[ | aNewPar |
					aNewPar := self newItem.
					aNewPar startingCharacterIndex: paragraphs last startingCharacterIndex + paragraphs last length.
					paragraphs add: aNewPar ] ].
		
	(paragraphs at:pp) insert: aCharacter after: ii.
	
	^pi first " this is the last paragraph that we are certain has a valid start address "
	! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 10/11/2025 11:54:40'!
setAttribute: aTextAttribute from: aBeginIndex to: anEndIndex

	| beginPi endPi |
	
	" Add a text attribute to all the text between aBeginIndex and anEndIndex (exclusive) "
	
	self assert: aBeginIndex > 1.
	
	self assert: (self isIndexLeqEnd:anEndIndex).
	
	aBeginIndex = anEndIndex
		ifTrue:[
			^self].
		
	beginPi := self charIndexToParIndex: aBeginIndex .
	
	endPi := self charIndexToParIndex: anEndIndex .

		! !

!KLibrary methodsFor: 'accessing' stamp: 'DF 10/7/2025 17:09:49'!
attributes
	^ defaultParagraphAttributes ! !

!KLibrary methodsFor: 'accessing' stamp: 'Df 9/21/2025 14:31:34'!
pageSize
	^pageSize! !

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

!KLibrary methodsFor: 'initialization' stamp: 'DF 10/9/2025 11:24:44'!
initialize

	paragraphs := OrderedCollection new.
			
	pageSize := 106. " in half line units. 110 half lines, equals 55 lines "
	
	defaultParagraphAttributes := KParagraphAttributes new.
	
	defaultParagraphAttributes 
		leftMargin: 6; 
		rightMargin: 72;
		indent: 0;
		lineHeight: 2; " in half line units "
		tabStops: (11 to: 72 by:5 :: asArray).
	
	paragraphs add: self newInitialItem ; add: self newInitialItem.
	
	paragraphBoundary := 2.  " This is the index of the paragraph that represents the last paragraph with a valid cached starting address "
	
	paragraphs at:1 :: startingCharacterIndex: 1.
	
	paragraphs at:2 :: startingCharacterIndex: 2.
	! !

!KLibrary methodsFor: 'factory' stamp: 'DF 9/28/2025 14:32:11'!
newInitialItem

	| aParagraph |
	
	aParagraph := self newItem.
	
	aParagraph lineAt:1 :: setupForEmptyLibrary.
	
	^aParagraph! !

!KLibrary methodsFor: 'factory' stamp: 'DF 9/29/2025 17:33:10'!
newItem

	| aParagraph |
	
	aParagraph := KParagraph new.
	
	aParagraph attributes: defaultParagraphAttributes.
	
	^aParagraph! !

!KLibrary methodsFor: 'erasing' stamp: 'DF 10/11/2025 11:54:40'!
eraseFrom: aBeginIndex to: anEndIndex

	| beginPi endPi bp ep |
		
	self assert: aBeginIndex > 1.
	
	self assert: (self isIndexLeqEnd: anEndIndex).

	"self assert: self invariant."
	
	aBeginIndex = anEndIndex
		ifTrue:[
			^self].
		
	beginPi := self charIndexToParIndex: aBeginIndex .
	
	endPi := self charIndexToParIndex: anEndIndex .

	bp := paragraphs at: beginPi first.
	
	" first we must reduce the cache boundary to the paragraph at beginPi "
	
	paragraphBoundary := beginPi first.
	
	" we erase in a single paragraph so there's no need to rebuild the paragraphs sequence "
	
	beginPi first = endPi first ifTrue:[
				
		^ bp eraseFrom: beginPi second to: endPi second ].
	
	" erase the tail of the first paragraph "
	
	bp eraseFrom: beginPi second to: bp length + 1.

	"Because we use sentinels at the beginning and end of the text we will never erase the last paragraph (it will always has the sentinel at the end). "
	
	"  we erase the head of the paragraph marked by endPi "
	
	self assert: endPi first <= paragraphs size.

	ep := paragraphs at: endPi first.
	
	ep eraseFrom: 1 to: endPi second.

	" append the content of the last paragraph into the first "		
	
	bp merge: ep.

	" discard all the paragraphs in between including ep but keeping bp "
	
	paragraphs := (paragraphs copyFrom:1 to: beginPi first) , (paragraphs copyFrom: endPi first + 1 to: paragraphs size).

	"self assert: self invariant."

	! !

!KLibrary methodsFor: 'testing' stamp: 'DF 10/9/2025 10:14:57'!
invariant

	| cb |
	
	self assert: paragraphs size >= 1.
	
	self assert: (paragraphs first lineAt:1 :: charAt:1 :: = Character newDocument).
	
	self assert: (paragraphs last lastLine lastCharacter = Character newDocument).
	
	paragraphs allButLastDo: [:each |
		self assert: each isLineBreaking ].
	
	cb := paragraphs at: paragraphBoundary :: startingCharacterIndex.

	1 to: paragraphBoundary do:[:ii | | each it |
		each := paragraphs at: ii .
		self assert: each startingCharacterIndex <= cb.
		it := self oracleCharIndexToIterator: each startingCharacterIndex.
		self assert: it parIndex = ii.
		self assert: it lineIndex = 1.
		self assert: it charIndex = 1. ] .
	
	^true! !

!KLibrary methodsFor: 'testing' stamp: 'DF 9/28/2025 18:57:28'!
isEmpty

	paragraphs size > 2 
		ifTrue:[^false].
	
	paragraphs last numLines > 1 
		ifTrue:[^false].
		
	^paragraphs last lastLine length = 1! !

!KLibrary methodsFor: 'testing' stamp: 'DF 10/17/2025 13:41:25'!
isIndexDefinitelyLessThanEnd: anIndex

  " Quickly determine if the character index anIndex is less than the index of the last character in the library.

Use the paragraphBoundary to check, if anIndex is less than the index of the paragraphBoundary then it is
not at the end. 

Note that this does not mean that when the answer is false anIndex is at the end. If this method answers false
we need to perform a slower check to determin if it is actually at the end or not.

 "

	| cs pp |
	
	pp := paragraphs at: paragraphBoundary.
	
	cs := pp startingCharacterIndex.
	
	^ anIndex < cs ifTrue:[
			true]
		ifFalse:[			
			anIndex < (cs + pp length - 1)
				ifTrue:[ "anIndex is inside the paragraph pp so it can't be the end"
					true]
				ifFalse:[
					false ] ]
! !

!KLibrary methodsFor: 'testing' stamp: 'DF 10/11/2025 13:29:17'!
isIndexLeqEnd: anIndex

  " Quickly determine if the character index anIndex is less than or equal to the index of the last character in the library.

 "

	^ self isIndexDefinitelyLessThanEnd: anIndex :: ifTrue:[
			true]
		ifFalse:[
			(self charIndexToIterator: anIndex) <= self end ]
! !

!KLibrary methodsFor: 'testing' stamp: 'DF 10/11/2025 13:28:46'!
isIndexLessThanEnd: anIndex

  " Determine if the character index anIndex is less than the index of the last character in the library.

 "

	^ self isIndexDefinitelyLessThanEnd: anIndex ::  ifTrue:[
			true]
		ifFalse:[			
			(self charIndexToIterator: anIndex) < self end ] 
! !

!KLibrary methodsFor: 'searching' stamp: 'DF 9/26/2025 20:08:46'!
match: aString at: anIterator

	| ee  bb ii |

	bb := anIterator copy.
		
	ee := self end.
	
	ii := 1.
	
	[ bb ~= ee and: [ii <= aString size] and: [bb char = (aString at: ii) ] ] 
		whileTrue:[
			bb next.
			ii := ii + 1].
		
	^ ii > aString size
! !

!KLibrary methodsFor: 'searching' stamp: 'DF 9/28/2025 19:42:50'!
searchFrom: anAddress backwardFor: aString

	" Search backward starting from anAddress iterator for a substring in text that is equal to aString. If not found
	search again from the end. If found, answer an iterator marking the first character of the substring, 	otherwise answer nil. 
	
	For example, if lib text = 'once upon a time in a galaxy far far away' then 
	
	lib searchFrom: 1 backwardFor: 'upon' 
	
	anwsers 6.

	lib searchFrom: 6 backwardFor: 'once' 
	
	anwsers 1.

	lib searchFrom: 1 backwardFor: 'zize' 
	
	anwsers 42.	"
	
	| regex aKStream aMatcher result |
	
	self assert: anAddress ~= self end next.
		
	"We start by matching the string at the position of anAddress. This is essential for correctly searching 
	ever increasing prefixes of a string because otherwise the reverse search will not find the previous prefix."
	
	self match: aString at: anAddress ::
		ifTrue:[^anAddress].
		
	regex := aString reverse asRegexLiteral.
	
	aKStream := KBackwardStream on: anAddress.
	
	aMatcher := RxMatcher forString: regex.
	
	result := aMatcher searchStream: aKStream.
	
	result ifTrue:[
		
		"because we use a backward stream the position answered by aMatcher is one past the beginning of the substring:
		
		for example, looking for 'efg' from 9 in the text
		
		'abc efg hij'
		
		the matcher answers 4.
		
		thus we must add 1 to the result. 4+1 is the index of e, as desired. "
		
		^ aKStream position next ].

	" not found after start so search again from the end "
	
	aKStream := KBackwardStream on: self end.
	
	aMatcher := RxMatcher forString: regex.
	
	result := aMatcher searchStream: aKStream.
	
	^result 
		ifTrue:[aKStream position next ]
		ifFalse:[nil]! !

!KLibrary methodsFor: 'searching' stamp: 'DF 9/28/2025 18:13:14'!
searchFrom: anAddress forwardFor: aString

	" Search forward starting from anAddress iterator for a substring in text that is equal to aString. If not found
	search again from the beginning. If found answer an iterator marking the first character of the substring, 	otherwise answer nil. 
	
	For example, if lib text = 'once upon a time in a galaxy far far away' then 
	
	lib searchFrom: 1 forwardFor: 'upon' 
	
	anwsers 6.

	lib searchFrom: 6 forwardFor: 'far' 
	
	anwsers 30.

	lib searchFrom: 31 forwardFor: 'time' 
	
	anwsers 13.	"
	
	| regex aKStream aMatcher result |

	self assert: anAddress ~= self end next.
	
	regex := aString asRegexLiteral.
	
	aKStream := KForwardStream on: anAddress.
	
	aMatcher := RxMatcher forString: regex.
	
	result := aMatcher searchStream: aKStream.
	
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
	
	result := aMatcher searchStream: aKStream.
	
	^result 
		ifTrue:[aKStream position retreat: aString size]
		ifFalse:[nil]! !

!KLibrary methodsFor: 'emphasizing' stamp: 'DF 10/11/2025 11:54:40'!
emphasize: aSymbol from: aBeginIndex to: anEndIndex

	" Mark all the characters from aBeginIndex to anEndIndex (exclusive) with the emphasis given by aSymbol.
	
	aSymbol can be either bold, underline, or italic.
		
	"
	
	| beginPi endPi pi pp |

	self assert: ({ #bold . #underline . #italic } includes: aSymbol).
		
	self assert: aBeginIndex > 1.
	
	self assert: (self isIndexLeqEnd: anEndIndex).
	
	aBeginIndex = anEndIndex
		ifTrue:[
			^self].
		
	beginPi := self charIndexToParIndex: aBeginIndex .
	
	endPi := self charIndexToParIndex: anEndIndex .
	
	beginPi first = endPi first
		ifTrue:[ "emphasis is limited to a single paragraph"
			
			pp := paragraphs at: beginPi first .
			
			pp emphasize: aSymbol from: beginPi second to: endPi second.
			
			^self ].
		
	" Otherwise, we ephasize from beginPi second up to the end of the paragraph, then
	emphasize the entire paragraphs after beginPi and before endPi, and finally emphasize
	the paragraph endPi first from 1 to endPi second "
	
	pp := paragraphs at: beginPi first .
	
	pp emphasize: aSymbol from: beginPi second to: pp length.
	
	pi := beginPi first + 1.
	
	[pi < endPi first]
		whileTrue:[ 
			pp := paragraphs at: pi.
			pp emphasize: aSymbol from: 1 to: pp length.
			pi := pi + 1 ].
	
	pp := paragraphs at: pi.
	pp emphasize: aSymbol from: 1 to: endPi second.
	
! !

!KLibrary methodsFor: 'emphasizing' stamp: 'DF 10/11/2025 11:54:40'!
unemphasize: aSymbol from: aBeginIndex to: anEndIndex

	" Remove the emphasis aSymbol from all the characters from aBeginIndex to anEndIndex (exclusive).
		
	"
	
	| beginPi endPi pi pp |
	
	self assert: ({ #bold . #underline . #italic } includes: aSymbol).
	
	self assert: aBeginIndex > 1.
	
	self assert: (self isIndexLeqEnd:anEndIndex).
	
	aBeginIndex = anEndIndex
		ifTrue:[
			^self].
		
	beginPi := self charIndexToParIndex: aBeginIndex .
	
	endPi := self charIndexToParIndex: anEndIndex .
	
	beginPi first = endPi first
		ifTrue:[ " remove the emphasis from a single paragraph"
			
			pp := paragraphs at: beginPi first .
			
			pp unemphasize: aSymbol from: beginPi second to: endPi second.
			
			^self ].
		
	" Otherwise, we must remove the ephasis from beginPi second up to the end of the paragraph, then
	from the entire paragraphs after beginPi and before endPi, and finally from the paragraph endPi first 
	from 1 to endPi second "
	
	pi := beginPi first + 1.
	
	[pi < endPi first]
		whileTrue:[ 
			pp := paragraphs at: pi.
			pp unemphasize: aSymbol from: 1 to: pp length.
			pi := pi + 1 ].
	
	pp := paragraphs at: pi.
	pp unemphasize: aSymbol from: 1 to: endPi second.
	
! !

!KLibrary methodsFor: 'object serialization' stamp: 'DF 10/14/2025 16:31:32'!
serializeFrom: aReadStream

	" Here's the format: 
	
	pageSize paragraphBoundary attributes [ESCAPE] 
	
	( text [ESCAPE] attributes? [ESCAPE] emphasis? [ESCAPE] ) *
	
	because [ESCAPE] never appears in the text or the attributes it acts as a simple separator between the
	different bits of information.
	
	note that for most paragraphs there will be no attributes and no emphasis so they will be separated by
	three escape characters. 
	
	"	
	
	|   scanner  |

	scanner := SimpleScanner on: aReadStream.

	scanner skipWhiteSpace.
	
	pageSize := scanner nextInteger.
	
	scanner skipWhiteSpace.
	
	paragraphBoundary := scanner nextInteger.
	
	scanner skipWhiteSpace.
	
	defaultParagraphAttributes := KParagraphAttributes serializeFrom: aReadStream. 
	
	scanner skipWhiteSpace ; eat: Character escape.
	
	paragraphs := OrderedCollection new.
	
	[aReadStream atEnd not]
		whileTrue:[ | aParagraph |
			
			aParagraph := KParagraph new.
			
			aParagraph attributes: defaultParagraphAttributes.
			
			aParagraph serializeFrom: aReadStream. 
			
			scanner eat: Character escape.
			
			paragraphs add: aParagraph ].
		
	
	! !

!KLibrary methodsFor: 'object serialization' stamp: 'DF 10/14/2025 16:13:49'!
serializeOn: aWriteStream

	" Here's the format: 
	
	pageSize paragraphBoundary attributes [ESCAPE] 
	
	( startIndex text [ESCAPE] attributes? [ESCAPE] emphasis? [ESCAPE] ) *
	
	because [ESCAPE] never appears in the text or the attributes it acts as a simple separator between the
	different bits of information.
	
	note that for most paragraphs there will be no attributes and no emphasis so they will be separated by
	three escape characters. 
	
	"
	
	aWriteStream nextPutAll: ('{1} {2} ' format: { pageSize . paragraphBoundary }).
	
	defaultParagraphAttributes serializeOn: aWriteStream.
	
	aWriteStream nextPut: Character escape.
	
	paragraphs do:[:each |

		aWriteStream nextPutAll: ('{1} ' format:{ each startingCharacterIndex })	.	
		
		each textInto: aWriteStream.

		aWriteStream nextPut: Character escape.
		
		each attributes ~= defaultParagraphAttributes 
			ifTrue:[
				
				each attributes serializeOn: aWriteStream].

		aWriteStream nextPut: Character escape.
			
		each emphasis ifNotNil:[
			each emphasis serializeOn: aWriteStream. ].
	
		aWriteStream nextPut: Character escape ]
	
	! !

!KLine methodsFor: 'inserting' stamp: 'DF 10/4/2025 21:10:38'!
buildFrom: aTokenStream limitBy: markers

	"build a line assuming that the token stream has no line separator or a single line separator at the end.
	
	The ordered collection markers is a sequence that begins with the left margin, continues with the tab stops and
	ends with the right margin. "
	
	| width token aWriteStream count ww |

	aWriteStream := WriteStream on: ''.
	
	width := markers last - markers first.
	
	token := aTokenStream first.

	count := markers first.

	ww := self tokenWidth: token at: count  markers: markers.
		
	[token notEmpty and: [ count + ww <= markers last] ]
		whileTrue:[
			aWriteStream nextPutAll: token.
			count := count + ww.
			aTokenStream nextUpTo: width.
			token := aTokenStream first.
			ww := self tokenWidth: token at: count markers: markers  ].
	
	" If the token stream is not empty and the last token is a single space add it to the line (even if this means
	that the line's length exceeds the limit) because we don't want the next line to start with a space character
	and the extra space at the end won't be visible on the display. "
	
	token size = 1 and: [ (token at:1) = Character space] :: 
		ifTrue:[
			aWriteStream nextPutAll: token.
			aTokenStream nextUpTo: width ].
	
	chars := aWriteStream contents.! !

!KLine methodsFor: 'inserting' stamp: 'DF 9/28/2025 20:18:01'!
fastInsert: aCharacter after: anIndex

	chars := chars copyReplaceFrom: anIndex + 1 to: anIndex with: aCharacter asString.
	
	^true! !

!KLine methodsFor: 'inserting' stamp: 'DF 10/4/2025 21:14:39'!
tokenWidth: aToken at:index markers: markers

	"Answer the width of a token. For a regular token it is its size, for a tab character it is the
	distance from the current index to the closest marker.
	
	For example, when markers = #(6 11 16 21) and index = 13, the answer is 16 - 13 = 3.
	
	"
	
	aToken size = 1 and:[aToken first = Character tab] ::
		ifTrue:[ | mm ii |
			
			"set mm to the first marker that is greater than position. If all markers are not greater
			than position set mm to 1 + the last marker "
			
			mm := markers first.
			ii := 1.
			
			[ii <= markers size and: [mm <= index] ]
				whileTrue:[
					ii := ii + 1.
					mm := markers at: ii ].
				
			ii > markers size 
				ifTrue:[
					mm := markers last + 1].
			
			^ mm - index ].
	
	^aToken size
			
			! !

!KLine methodsFor: 'testing' stamp: 'DF 10/7/2025 17:45:22'!
isDocSeparating

	^chars size > 0 and: [chars last isKDocSeparator ]
	! !

!KLine methodsFor: 'testing' stamp: 'DF 8/18/2025 11:55:19'!
isLineSeparating

	^chars size > 0 and: [chars last isKLineSeparator ]
	! !

!KLine methodsFor: 'testing' stamp: 'Df 9/12/2025 16:52:10'!
isPageSeparating

	^chars size > 0 and: [chars last isPageSeparator ]
	! !

!KLine methodsFor: 'testing' stamp: 'DF 8/18/2025 12:13:59'!
notEmpty
	^chars notEmpty ! !

!KLine methodsFor: 'accessing' stamp: 'DF 8/18/2025 12:03:58'!
charAt: anIndex
	^chars at: anIndex! !

!KLine methodsFor: 'accessing' stamp: 'Df 9/23/2025 17:34:45'!
chars
	^chars! !

!KLine methodsFor: 'accessing' stamp: 'DF 9/28/2025 09:35:17'!
lastCharacter
	^chars last! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:33:49'!
length

	^chars size! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/20/2025 11:37:37'!
textInto: aWriteStream

	aWriteStream nextPutAll: chars.! !

!KLine methodsFor: 'initialization' stamp: 'Df 9/23/2025 10:43:16'!
initialize

	chars := ''! !

!KLine methodsFor: 'initialization' stamp: 'DF 9/28/2025 14:26:49'!
setupForEmptyLibrary

	self assert: chars isEmpty.
	
	chars := Character newDocument asString! !

!KParagraph methodsFor: 'initialization' stamp: 'DF 9/29/2025 17:28:20'!
initialize

	lines := OrderedCollection new.
	
	lines add: self newItem.
	
! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 10/18/2025 09:59:21'!
buildFrom: aTokenStream

	| markers |
	
	" The first line is indented by attributes at:#indent "

	markers := OrderedCollection new.
	markers add: (attributes leftMargin) + (attributes indent).
	markers addAll: (attributes tabStops).
	markers add: (attributes rightMargin).
				
	aTokenStream first notEmpty 
		ifTrue:[ 
			lines add: self newItem.
			lines last buildFrom: aTokenStream limitBy: markers ].
	
	" Now do the rest of the lines "

	markers at: 1 put: (attributes leftMargin).
	
	[aTokenStream first notEmpty ]
		whileTrue:[
			lines add: self newItem.
			lines last buildFrom: aTokenStream limitBy: markers ].
		
	! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 10/7/2025 13:56:15'!
fastInsert: aCharacter after: anIndex

	| lineIndex charIndex |
	
	lineIndex := 1. 
	charIndex := anIndex.
	
	[ (lines at: lineIndex :: length) < charIndex ]
		whileTrue:[
			charIndex := charIndex - (lines at: lineIndex :: length).
			lineIndex := lineIndex + 1 ].

	^(lines at: lineIndex :: length) + 1 <= self width ::
		ifTrue:[
			lines at: lineIndex :: fastInsert: aCharacter after: charIndex]
		ifFalse:[
			false]
		! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 10/7/2025 14:37:09'!
insert: aCharacter after: anIndex

	"insert a character to the paragraph assuming that the character is not a line separator "
	
	| text  result |
	
	self assert: aCharacter isKLineSeparator not.
	
	result := self fastInsert: aCharacter after: anIndex.
	
	result 
		ifFalse:[
	 
			text := self text asOrderedCollection.
	
			text add: aCharacter afterIndex: anIndex.
		
			self rebuildFromText: text].
		
	" update any emphasis intervals "
	
	emphasis ifNotNil:[
		
		emphasis do:[:each |
			each shiftForward: 1 from: anIndex + 1 ] ].
	! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/16/2025 22:03:56'!
rebuildFromText: aString

	| stream |
	
	stream := KTokenStream new.
	
	stream on: aString.

	stream nextUpTo: self width.
	
	lines removeAll.

	self buildFrom: stream.
! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 10/7/2025 15:32:24'!
eraseFrom: aBeginIndex to: anEndIndex

	| text left right |
	
	self assert: aBeginIndex >= 1.
		
	text := self text.

	self assert: anEndIndex <= (text size + 1).
	
	left := text copyFrom: 1 to: aBeginIndex - 1.
	
	right := text copyFrom: anEndIndex to: text size.
	
	self rebuildFromText: left, right.

	" update any emphasis intervals "
	
	emphasis ifNotNil:[
		
		emphasis do:[:each |
			each shiftBack: anEndIndex - aBeginIndex from: aBeginIndex ] .
	
		emphasis isEmpty 
			ifTrue:[
				emphasis := nil] ].! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 10/7/2025 14:10:08'!
merge: aParagraph

	" Append the text in aParagraph at the end of this paragraph while keeping the emphasis in both paragraphs
	in sync in the modified paragraph. "
	
	| stext pem |
	
	stext := self text.
	
	pem := aParagraph emphasis.
	
	self rebuildFromText: stext , aParagraph text.
	
	pem notNil ifTrue:[
		
		" move the intervals in aParagraph by the size of the text in self "
		
		pem do:[:each | each shiftForward: stext size from: 1 ].
		
		" add the intervals in aParagraph to each emphasis in self "
		
		pem keys do:[:eachKey | 
			
			(pem at: eachKey) do:[ :ival |
				self emphasize: eachKey from: ival first to: ival last ] ] ].! !

!KParagraph methodsFor: 'testing' stamp: 'DF 10/7/2025 17:45:36'!
isDocBreaking

	^ lines size > 0 and: [lines last isDocSeparating ]! !

!KParagraph methodsFor: 'testing' stamp: 'DF 8/18/2025 11:55:35'!
isLineBreaking

	^ lines size > 0 and: [lines last isLineSeparating ]! !

!KParagraph methodsFor: 'testing' stamp: 'Df 9/12/2025 16:51:57'!
isPageBreaking

	^ lines size > 0 and: [lines last isPageSeparating ]! !

!KParagraph methodsFor: 'testing' stamp: 'DF 8/18/2025 12:13:05'!
notEmpty
	^lines notEmpty and: [lines first notEmpty]! !

!KParagraph methodsFor: 'factory' stamp: 'DF 7/20/2025 10:24:19'!
newItem
	^KLine new! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/29/2025 17:27:18'!
attributes

	^ attributes! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:35:19'!
attributes: aKParagraphAttributes

	attributes := aKParagraphAttributes 
! !

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

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/17/2025 13:20:29'!
charIndexToLineIndex: anIndex

	| ii pp |
	
	ii := anIndex. pp := 1.
	
	[ pp <= lines size and: [ii > ((lines at:pp) length) ] ]
		whileTrue:[
			ii := ii - ((lines at:pp) length).
			pp := pp + 1].

	^ { pp . ii }! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:34:42'!
height

	| hh |
	
	
	hh := lines size * (attributes lineHeight).
	
	^self isPageBreaking 
		ifTrue:[
			hh +1]
		ifFalse:[
			hh]! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:33:05'!
indent: anInteger

	| text |
	
	attributes := attributes copy.
	
	attributes indent: anInteger.
	
	text := self text.
	
	self rebuildFromText: text.
	
	! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/28/2025 09:34:53'!
lastLine
	^lines last! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:29:37'!
leftMargin: anInteger

	| text |
	
	attributes := attributes copy.
	
	attributes leftMargin: anInteger.
	
	text := self text.
	
	self rebuildFromText: text.
	
	! !

!KParagraph methodsFor: 'accessing' stamp: 'Df 9/22/2025 16:05:32'!
length

	" Answers the number of characters in this paragraph. "
	
	^ lines sum:[:each | each length ] ifEmpty:0! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 16:21:04'!
lineAt: anIndex
	^ lines at: anIndex! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:34:47'!
lineHeight

	^attributes lineHeight ! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:34:56'!
lineHeight: anInteger

	attributes := attributes copy.
	
	attributes lineHeight: anInteger! !

!KParagraph methodsFor: 'accessing' stamp: 'Df 9/22/2025 16:16:24'!
lineIndexToCharIndex: anIntegerLineNumber

	| index |
	
	index := 0.
	
	1 to: anIntegerLineNumber - 1 do:[:ii | | line |
		line := lines at: ii.
		index := index + line length ].
	
	^index! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 16:20:18'!
numLines
	^lines size! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:32:21'!
rightMargin: anInteger

	| text |
	
	attributes := attributes copy.
	
	attributes rightMargin: anInteger.
		
	text := self text.
	
	self rebuildFromText: text.
	! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/8/2025 15:36:48'!
startingCharacterIndex
	^startingCharacterIndex! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/8/2025 15:36:59'!
startingCharacterIndex: anInteger

	startingCharacterIndex := anInteger ! !

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

!KParagraph methodsFor: 'accessing' stamp: 'DF 10/9/2025 11:29:48'!
width
	^ (attributes rightMargin) - (attributes leftMargin)! !

!KParagraph methodsFor: 'emphasis' stamp: 'DF 10/6/2025 18:12:35'!
emphasis
	^emphasis! !

!KParagraph methodsFor: 'emphasis' stamp: 'DF 10/7/2025 13:08:49'!
emphasize: aSymbol from: aBegin to: anEnd 

	"mark the characters in this paragraph from relative (to the current paragraph) location aBegin to anEnd (exclusive) as emphasized according to a Symbol. see also KLibrary >> emphasize: from: to: "
	
	emphasis ifNil:[
		
		emphasis := Dictionary new].
	
	emphasis at:aSymbol ifAbsent:[ 
		
		emphasis at:aSymbol put: DisjointIntervalSequence new].
	
	emphasis at:aSymbol :: insert: (aBegin to: anEnd).	! !

!KParagraph methodsFor: 'emphasis' stamp: 'DF 10/7/2025 13:17:48'!
unemphasize: aSymbol from: aBegin to: anEnd 

	"remove the emphasis from all the characters between the paragraph relative ocation aBegin to anEnd (exclusive) "
	
	emphasis ifNil:[
		^self].
	
	emphasis at:aSymbol ifAbsent:[ 
		
		^self ].
	
	emphasis at:aSymbol :: erase: (aBegin to: anEnd).	! !

!KParagraph methodsFor: 'object serialization' stamp: 'DF 10/14/2025 16:16:35'!
serializeFrom: aReadStream

	| aScanner text |

	aScanner := SimpleScanner on: aReadStream.
	
	startingCharacterIndex := aScanner nextInteger. 
	
	aScanner skipWhiteSpace.
	
	text := WriteStream on: ''.
	
	[ aReadStream atEnd not and: [ aReadStream peek ~= Character escape ] ]
		whileTrue:[
			text nextPut: aReadStream peek. 
			
			aReadStream next ].

	aReadStream next.
	
	aReadStream peek ~= Character escape ifTrue:[
		
		attributes := KParagraphAttributes serializeFrom: aReadStream ].
	
	aReadStream next. 	

	aReadStream peek ~= Character escape ifTrue:[ | arrays |
		
		arrays := Dictionary serializeFrom: aReadStream.
		
		" now convert each array into a disjoint interval sequence "
		
		emphasis := arrays collect:[:eachArray | | aDisjointIntervalSeq |
			
			aDisjointIntervalSeq := DisjointIntervalSequence new.
			
			eachArray do:[:eachPair | aDisjointIntervalSeq insert: (eachPair first to: eachPair last) ].
			
			aDisjointIntervalSeq ]
		 ].
	
	self rebuildFromText: text contents. 
	
	! !

!KParagraphAttributes methodsFor: 'object serialization' stamp: 'DF 10/9/2025 11:23:10'!
serializeOn: aWriteStream

	aWriteStream nextPut: $[.
	
	{ #leftMargin . #rightMargin . #indent . #lineHeight.  #tabStops } do:[ :key | | value |
		
		value := self perform: key.
		
		aWriteStream nextPutAll: key ; nextPut: $:.
		
		value serializeOn: aWriteStream  ]
	
	separatedBy: [
		
		aWriteStream nextPut: Character space ].
	
	aWriteStream nextPut: $].
	
	
	! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:19:43'!
indent
	^indent! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:17:43'!
indent: anInteger
	indent := anInteger! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:19:32'!
leftMargin
	^leftMargin ! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:17:18'!
leftMargin: anInteger
	leftMargin := anInteger! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:19:21'!
lineHeight
	^lineHeight! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:18:26'!
lineHeight: anInteger
	lineHeight := anInteger! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:19:09'!
rightMargin
	^rightMargin! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:17:30'!
rightMargin: anInteger
	rightMargin := anInteger! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:18:58'!
tabStops
	^tabStops! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:18:46'!
tabStops: anArray
	tabStops := anArray! !

!KParagraphAttributes methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 11:19:51'!
width
	^ rightMargin - leftMargin! !

!KParagraphAttributes class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 15:39:29'!
serializeFrom: aReadStream

	| attrs aScanner |
	
	attrs := KParagraphAttributes new.
	
	aScanner := SimpleScanner on: aReadStream.
	
	aScanner skipWhiteSpace; eat: $[ ; skipWhiteSpace.

	[ aScanner notAtEnd and: [ aScanner head ~= $] ] ] whileTrue:[ | key value |
		
		key := aScanner nextWord.
		
		aScanner eat: $:.
		
		value := aScanner head =$[
			ifTrue:[
				Array serializeFrom: aReadStream ]
			ifFalse:[
				aScanner nextInteger ].
		
		aScanner skipWhiteSpace.
			
		attrs perform: (key, ':') asSymbol with: value. ].
	
	aScanner eat: $].

	^attrs! !

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

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 20:45:45'!
eat: aCharacter

	self assert: stream peek = aCharacter.
	
	stream next.
! !

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 20:44:53'!
head
	^stream peek! !

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/18/2025 16:48:00'!
nextChar

	stream next! !

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/18/2025 19:00:20'!
nextInteger

	| value |
	
	value := WriteStream on:''.

	stream atEnd not and: [ stream peek = $- ] ::
		ifTrue:[
			value nextPut: stream peek. 
			stream next. ].
	
	[stream atEnd not and: [ stream peek isDigit ] ]
		whileTrue:[
			value nextPut: stream peek.
			stream next ].
		
	^ Integer readFrom: (ReadStream on: value contents)! !

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 20:43:14'!
nextWord

	| word |
	
	word := WriteStream on:''.
	
	[ stream atEnd not and: [ stream peek isLetter ] ]
		whileTrue:[
			word nextPut: stream peek.
			stream next. ].
		
	^ word contents! !

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 20:46:37'!
notAtEnd

	^ stream atEnd not! !

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 20:43:14'!
skipWhiteSpace

	[ stream atEnd not and:[ stream peek isSeparator ] ]
		whileTrue:[
			stream next ].
! !

!SimpleScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 20:43:23'!
stream: aReadStream

	stream := aReadStream! !

!SimpleScanner class methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 20:43:52'!
on: aReadStream

	| aScanner |
	
	aScanner := self new.
	
	aScanner stream: aReadStream.
	
	^aScanner! !

!KPngConverter methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:24:38'!
convert: anOrderedCollection

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | | aForm |
		
		aForm := ImageReadWriter formFromFileNamed: directory , '/', each , '.png'.
		
		self writeForm: aForm depth:2 name: each onto: aWriteStream ].
		
	^ aWriteStream contents! !

!KPngConverter methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:24:25'!
convert: anOrderedCollection depth: anInteger

	| aWriteStream |
	
	aWriteStream := WriteStream on: ''.
	
	anOrderedCollection do:[:each | | aForm |
		
		aForm := ImageReadWriter formFromFileNamed: directory , '/', each , '.png'.
		
		self writeForm: aForm depth: anInteger name: each onto: aWriteStream ].
		
	^ aWriteStream contents! !

!KPngConverter methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:02:26'!
directory: aString

	directory := aString.! !

!KPngConverter methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:24:10'!
writeForm: aForm depth: anInteger name: aString onto: aWriteStream

	aWriteStream nextPutAll: aString ; nextPutAll: 'Icon

^'.
	
	aForm asFormOfDepth: anInteger :: storeOn: aWriteStream.
	
	aWriteStream nextPutAll: '

'.! !

!KPngConverter class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 17:10:41'!
example

	| aConverter |
	
	aConverter := KPngConverter new.

	aConverter directory: '/home/davidf/Projects/Frog/parts/Software/parts/icons'.

	aConverter convert: { 'number1' . 'number1sel' . 'number2' . 'number2sel' . 'oneAndHalf' . 'oneAndHalfSel' . 'justleft' . 'justleftsel' . 'justright' . 'justrightsel' . 'justcentre' . 'justcentresel' . 'just' . 'justsel' }! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 10/18/2025 13:57:19'!
creepBack

	cursor > 1
		ifTrue:[
			cursor := cursor - 1 ]
		ifFalse:[
			cursor := text iteratorToCharIndex: text end ].
				
	self changed: #cursor		
! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 10/18/2025 13:57:04'!
creepForward

	cursor := text isIndexLessThanEnd: cursor ::
		ifTrue:[
			cursor + 1]
		ifFalse:[
			1 ].

	self changed: #cursor		
! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 10/18/2025 11:20:09'!
erase

	dirty := true.
	
	cursorState = #narrow
		ifTrue:[ 
			^self eraseNarrow].

	cursorState = #wide
		ifTrue:[ 
			^self eraseWide].
	
	cursorState = #extended
		ifTrue:[
			^self eraseSelection].! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 10/18/2025 11:18:16'!
eraseNarrow
	
	self assert: cursor >= 1.
	
	text isEmpty
		ifTrue:[
			^self].
		
	cursor = 1
		ifTrue:[
			
			text eraseFrom: 2 to: 3] 
		ifFalse:[
			
			" Because the text is not empty then if the cursor is at the end 
			it is at least 3, decreasing it by 1 makes it at least 2, safe for passing to erase "
			
			text isIndexLessThanEnd: cursor ::
				ifTrue:[
					text eraseFrom: cursor to: cursor + 1 ]
				ifFalse:[
					cursor := cursor - 1. 
					cursorState := #wide ] ].
			
	" ensure the selection resets and points to a valid index "
	
	selection := cursor to: cursor.
			
	self changed: #erase.! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 10/17/2025 13:54:15'!
eraseSelection

	self assert: selection first > 1.
	
	self assert: selection first <= selection last.
	
	self assert: (text isIndexLeqEnd: selection last).
	
	text eraseFrom: selection first to: selection last.
	
	cursor := selection first - 1.
	
	selection := selection last to: selection last.
	
	cursorState := text isEmpty 
		ifTrue:[#wide].
			
	self changed: #erase.! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 10/12/2025 18:14:07'!
eraseWide

	self assert: cursor > 0.
	self assert: (text isIndexLessThanEnd: cursor).
	
	cursor > 1 
		ifTrue:[
			text eraseFrom: cursor to: cursor + 1.
			cursor := cursor - 1.
			
			cursor = 1 ifTrue:[
				cursorState := #narrow ] ].

	" ensure the selection resets and points to a valid index "
	
	selection := cursor to: cursor.
		
	self changed: #erase.! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/27/2025 16:45:40'!
import: aString

	0 to: aString size - 1 do:[:ii | |cc| 
		cc := aString at:ii + 1.
		cc isLineSeparator
			ifTrue:[
				cc := Character cr]. 
		text insert: cc after: cursor + ii.  ].
	
	cursor := cursor + aString size.
	
	cursorState := #wide.
	
	leapRegister := cursor.
	
	searchString reset.
	
	selection := cursor to: cursor.
	
	self changed: #import
	! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 10/18/2025 11:16:39'!
insert: aCharacter

	self assert: cursor > 0.
	self assert: (text isIndexLeqEnd: cursor).
	
	cursorState = #wide 
		ifTrue:[
			(text isIndexLessThanEnd: cursor)
				ifTrue:[
					text insert: aCharacter after: cursor]
				ifFalse:[
					text insert: aCharacter after: cursor - 1].
			cursor := cursor + 1 ]
		ifFalse:[
			cursor > 1
				ifTrue:[
					text insert: aCharacter after: cursor - 1]
				ifFalse:[
					text insert: aCharacter after: cursor. 
					cursor := cursor + 1 ] ].
	
	cursorState := #wide.
	
	dirty := true.
		
	self changed: #insert.! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/28/2025 19:33:21'!
moveSelectionAfterCursor

	| bb ee stream |
	
	" Move the text marked by the selection after anIntegerIndex, provided that anIntegerIndex is not inside the
	selection (if it is, do nothing and reset the cursor to a wide state) "
	
	self assert: cursor >= 1. 
	
	self assert: selection first >= 2. "we cannot select the very first document break character"
	
	selection first <= cursor and: [cursor < selection last] ::
		ifTrue:[
			cursorState := #wide.
			^self ].
	
	stream := WriteStream on: ''.
	
	bb := text charIndexToIterator: selection first.
	ee := text charIndexToIterator: selection last.
	
	[bb ~= ee] 
		whileTrue:[
			stream nextPut: bb char. bb next].
		
	cursor >= selection last
		ifTrue:[
			| ii |
			
			ii := cursor - 1.
			
			stream contents do:[:each | text insert: each after: ii. ii := ii + 1].
			
			text eraseFrom: selection first to: selection last.

			"self assert:  cursor >= selection last. from guard"
			
			"self assert: selection last > (selection last - selection first) . because selection first > 1".

			"self assert: 1 < cursor - (selection last - selection first). because stream contents size = selection last - selection first  "
			
			"self assert: 1 < cursor - stream contents size. because stream contents size = selection last - selection first + 1 "
			
			"self assert: cursor - stream contents size <= cursor. because size is a non negative number"
			
			"self assert: cursor <= self end globalIndex. true because of system invariant "
			
			selection := cursor - stream contents size to: cursor. 
			
			"
			self assert: 1 < selection first.
			self assert: selection first <= selection last.
			self assert: selection last <= self end globalIndex.  " ]
		ifFalse:[
			" cursor < selection first "
			| ii |
			text eraseFrom: selection first to: selection last.
			
			cursor > 1 
				ifTrue:[
					cursor := cursor - 1].
			
			ii := cursor.
			stream contents do:[:each | text insert: each after: ii. ii := ii + 1].
			selection := cursor + 1 to: ii+1.
			cursor := ii+1].
		
	self changed: #cursor! !

!KaeruEditor methodsFor: 'testing' stamp: 'DF 10/17/2025 20:46:03'!
isDirty
	^dirty! !

!KaeruEditor methodsFor: 'testing' stamp: 'DF 10/24/2025 22:11:47'!
isEmpty

	^ text isEmpty! !

!KaeruEditor methodsFor: 'testing' stamp: 'Df 9/23/2025 20:22:55'!
isExtended
	^cursorState = #extended! !

!KaeruEditor methodsFor: 'testing' stamp: 'Df 9/21/2025 21:13:19'!
isNarrow
	^ cursorState = #narrow! !

!KaeruEditor methodsFor: 'testing' stamp: 'Df 9/24/2025 21:53:10'!
isSearchSuccessfull
	^ positionRegister ~= cursor ! !

!KaeruEditor methodsFor: 'testing' stamp: 'Df 9/21/2025 21:13:12'!
isWide
	^cursorState = #wide! !

!KaeruEditor methodsFor: 'accessing' stamp: 'Df 9/23/2025 17:26:39'!
begin
	^text begin! !

!KaeruEditor methodsFor: 'accessing' stamp: 'DF 10/17/2025 20:46:22'!
clearDirtyFlag
	dirty := false! !

!KaeruEditor methodsFor: 'accessing' stamp: 'Df 9/21/2025 15:12:34'!
cursor
	^cursor
	! !

!KaeruEditor methodsFor: 'accessing' stamp: 'Df 9/21/2025 15:22:44'!
end
	^text end! !

!KaeruEditor methodsFor: 'accessing' stamp: 'Df 9/21/2025 15:18:49'!
pageSize
	^text pageSize! !

!KaeruEditor methodsFor: 'accessing' stamp: 'Df 9/21/2025 15:12:38'!
selection
	^selection! !

!KaeruEditor methodsFor: 'accessing' stamp: 'Df 9/24/2025 12:46:47'!
text
	^text! !

!KaeruEditor methodsFor: 'accessing' stamp: 'Df 9/21/2025 15:11:55'!
text: aKaeruLibrary
	text := aKaeruLibrary ! !

!KaeruEditor methodsFor: 'initialization' stamp: 'DF 10/18/2025 16:54:17'!
initialize

	super initialize.
	
	cursor := 1.
	
	backupRegister := 1.
		
	leapRegister := 1.
	
	selection := 2 to: 2.
	
	cursorState := #wide.

	showIndent := false.
	
	showLeftMargin := false.
	
	showRightMargin := false.
	
	searchString := WriteStream on:''.
	
	dirty := false.
	
! !

!KaeruEditor methodsFor: 'selection' stamp: 'DF 10/18/2025 14:08:42'!
collapseLeft

	leapRegister := selection last - 1.

	cursor := selection first.
		
	cursorState := #narrow.
	
	self changed: #cursor! !

!KaeruEditor methodsFor: 'selection' stamp: 'DF 10/18/2025 14:09:18'!
collapseRight

	leapRegister := selection first.
	
	cursor := selection last - 1.
		
	cursorState := #wide.
	
	self changed: #cursor! !

!KaeruEditor methodsFor: 'selection' stamp: 'DF 10/18/2025 15:09:58'!
resetSelection

	" set the leap register to the cursor, reseting the selection.
	
	This is used when exiting a leap state back to editing state (see KaeruEditController >> initialize). The effect is that any new text inserted after a leap will be included in the selection "
	
	leapRegister := cursor ! !

!KaeruEditor methodsFor: 'selection' stamp: 'DF 10/17/2025 13:13:04'!
select

	text isIndexLessThanEnd: cursor ::
		ifFalse:[
			cursor := cursor - 1].	
		
	selection := ((leapRegister min: cursor) max:2) to: (leapRegister max: cursor) + 1.
	
	self assert: (text isIndexLeqEnd: selection last).
	
	cursor := selection last.
		
	cursorState := #extended.
	
	self changed: #cursor! !

!KaeruEditor methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 15:19:33'!
charIndexToIterator: anInteger
	^text charIndexToIterator: anInteger ! !

!KaeruEditor methodsFor: 'searching' stamp: 'Df 9/23/2025 12:35:52'!
appendAndSearchBack: aCharacter

	searchString nextPut: aCharacter.
	
	self searchBack.		
		! !

!KaeruEditor methodsFor: 'searching' stamp: 'DF 9/26/2025 18:37:33'!
appendAndSearchForward: aCharacter

	searchString nextPut: aCharacter.
	
	self searchForward! !

!KaeruEditor methodsFor: 'searching' stamp: 'Df 9/23/2025 12:36:12'!
eraseAndSearchBack
	
	searchString isEmpty
		ifTrue:[^self].
		
	searchString skipBack.
	
	self searchBack.! !

!KaeruEditor methodsFor: 'searching' stamp: 'Df 9/23/2025 12:36:23'!
eraseAndSearchForward
	
	searchString isEmpty
		ifTrue:[^self].
		
	searchString skipBack.
	
	self searchForward.! !

!KaeruEditor methodsFor: 'searching' stamp: 'DF 10/18/2025 13:29:25'!
restartSearch.

	searchString reset.
	
	backupRegister := cursor.
	
	cursorState = #wide "we want to keep an extended cursor while searching, so only make a wide cursor narrow"
		ifTrue:[
			cursorState := #narrow].! !

!KaeruEditor methodsFor: 'searching' stamp: 'DF 10/18/2025 13:29:25'!
searchBack

	| cit it |

	searchString contents isEmpty
		ifTrue:[^self].

	cit := text charIndexToIterator: cursor.
	
	cit = text end next
		ifTrue:[cit prev].
		
	it := text searchFrom:  cit backwardFor: searchString contents.
	
	it isNil
		ifTrue:[
			cursor := backupRegister] 
		ifFalse:[
			leapRegister := backupRegister.
			cursor := text iteratorToCharIndex: it  ].
					
		self changed: #search
! !

!KaeruEditor methodsFor: 'searching' stamp: 'DF 10/18/2025 13:29:25'!
searchForward

	| bb it cit |

	self assert: cursor > 0.

	searchString contents isEmpty
		ifTrue:[^self].
				
	cit := text charIndexToIterator: cursor.
	
	bb := cit = text end next
		ifTrue:[text begin]
		ifFalse:[cit].
	
	it := text searchFrom: bb forwardFor: searchString contents.
	
	it isNil
		ifTrue:[
			cursor := backupRegister] 
		ifFalse:[
			leapRegister := backupRegister.
			cursor := text iteratorToCharIndex: it  ].
					
		self changed: #search
		! !

!KaeruEditor methodsFor: 'searching' stamp: 'Df 9/23/2025 17:27:59'!
searchFrom: it forwardFor: aString
	^ text searchFrom: it forwardFor: aString
! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/17/2025 22:14:55'!
indent

	"Anser the left margin of the paragraph in which the cursor is located  "
	
	| it par |
	
	it := text charIndexToIterator: cursor.
	
	par := it paragraph.
	
	^ par attributes indent.
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/17/2025 22:15:03'!
leftMargin

	"Anser the left margin of the paragraph in which the cursor is located  "
	
	| it par |
	
	it := text charIndexToIterator: cursor.
	
	par := it paragraph.
	
	^ par attributes leftMargin.
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/9/2025 11:32:32'!
rightMargin

	"Anser the right margin of the paragraph in which the cursor is located  "
	
	| it par |
	
	it := text charIndexToIterator: cursor.
	
	par := it paragraph.
	
	^ par attributes rightMargin.
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/18/2025 18:52:21'!
setLeftMargin: anInteger

	"Set the paragraph in which the cursor is located to anInteger, provided that anInteger is between 1 and
	rightMargin - 6. Answer the actual left margin "
	
	| it par rightm leftm |
	
	it := text charIndexToIterator: cursor.
	
	leftm := it paragraph leftMargin.
	
	it = text begin
		ifTrue:[^leftm].
		
	it = text end
		ifTrue:[^leftm].
	
	anInteger <= 0
		ifTrue:[^leftm].

	par := it paragraph.
	
	rightm := par attributes rightMargin.
	
	anInteger >= (rightm - 6)
		ifTrue:[^leftm].
		
	it paragraph leftMargin: anInteger.
	
	self changed: #margins.
	
	^anInteger
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/18/2025 18:54:12'!
setParagraphIndent: anInteger

	"Set the indent of the first line in the paragraph in which the cursor is located to anInteger, provided that anInteger is between  1 - leftMargin and rightMargin. Answer the actual indent "
	
	| it par indent leftm rightm |
	
	it := text charIndexToIterator: cursor.
	
	indent := it paragraph attributes indent.
	
	it = text begin
		ifTrue:[^indent].
		
	it = text end
		ifTrue:[^indent].
	
	par := it paragraph.

	leftm := par attributes leftMargin.

	anInteger + leftm < 1
		ifTrue:[^indent].
	
	rightm := par attributes rightMargin.
	
	anInteger >= rightm 
		ifTrue:[^indent].
		
	it paragraph indent: anInteger.
	
	self changed: #margins.
	
	^anInteger
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/18/2025 18:52:06'!
setRightMargin: anInteger

	"Set the right margin of the paragraph in which the cursor is located to anInteger, provided that anInteger is between leftMargin + 6 and 79. Answer the actual right margin "
	
	| it par leftm rightm |
	
	it := text charIndexToIterator: cursor.
	
	rightm := it paragraph rightMargin.
	
	it = text begin
		ifTrue:[^rightm].
		
	it = text end
		ifTrue:[^rightm].
	
	anInteger >= 80
		ifTrue:[^rightm].

	par := it paragraph.
	
	leftm := par attributes leftMargin.
	
	anInteger <= (leftm + 6)
		ifTrue:[^rightm].
		
	it paragraph rightMargin: anInteger.
	
	self changed: #margins.
	
	^anInteger
	
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/17/2025 22:15:24'!
showIndent

	^showIndent! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 10/17/2025 22:15:43'!
showIndent: aBoolean

	showIndent := aBoolean.
	
	self changed: #margins! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 21:10:39'!
showLeftMargin

	^showLeftMargin! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 21:11:43'!
showLeftMargin: aBoolean

	showLeftMargin := aBoolean.
	
	self changed: #margins! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 21:03:13'!
showRightMargin

	^showRightMargin ! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 21:11:55'!
showRightMargin: aBoolean
	
	showRightMargin := aBoolean.
	
	self changed: #margins! !

!KaeruEditor methodsFor: 'emphasis' stamp: 'DF 10/18/2025 15:13:03'!
toggleSelectionEmphasisFor: aSymbol

	| it |
	
	self select.
	
	it := self charIndexToIterator: selection first.
	
	it hasEmphasis: aSymbol :: ifTrue:[
		
		text unemphasize: aSymbol from: selection first to: selection last ]
	
	ifFalse:[
		
		text emphasize: aSymbol from: selection first to: selection last ].
	
	cursorState := text isIndexLessThanEnd: selection last :: ifTrue:[
		 #wide.
	] ifFalse:[ "the selection ends at the text end, making the cursor wide will move it past the end"
		#narrow].
	
	cursor := selection last.
	
	self changed: #emphasis
		! !

!KaeruEditor methodsFor: 'object serialization' stamp: 'DF 10/18/2025 16:51:16'!
serializeFrom: aReadStream

" Here's the fomat
	
	cursor cursorState selection-first selection-last [ESCAPE] search-string [ESCAPE] leap-register position-register 
	
	[Document Break] 
	
	<state of KLibrary, see KLibrary >> serializeOn: >
	
"
	| aScanner aWriteStream sfirst slast |
	
	aScanner := SimpleScanner on: aReadStream.
	
	cursor := aScanner nextInteger.
	
	aScanner skipWhiteSpace.
	
	cursorState := aScanner nextWord asSymbol.
	
	aScanner skipWhiteSpace.
	
	sfirst := aScanner nextInteger.

	aScanner skipWhiteSpace.

	slast := aScanner nextInteger.
	
	aScanner skipWhiteSpace.

	selection := sfirst to: slast.
	
	aWriteStream := WriteStream on: ''.
	
	aScanner eat: Character escape.
	
	[aScanner head ~= Character escape]
		whileTrue:[
			aWriteStream nextPut: aScanner head.
			aScanner nextChar ].
	
	aScanner eat: Character escape.
	
	searchString := WriteStream on: aWriteStream contents.		

	aScanner skipWhiteSpace.

	leapRegister := aScanner nextInteger.

	aScanner skipWhiteSpace.
	
	backupRegister := aScanner nextInteger.

	aScanner skipWhiteSpace.

	aScanner eat: Character newDocument.

	text := KLibrary new.
	
	text serializeFrom: aReadStream.
	
	self changed: #cursor.
	! !

!KaeruEditor methodsFor: 'object serialization' stamp: 'DF 10/18/2025 13:29:25'!
serializeOn: aWriteStream

" Here's the fomat
	
	cursor cursorState selection-first selection-last [ESCAPE] search-string [ESCAPE] leap-register position-register search-result
	
	[Document Break] 
	
	<state of KLibrary, see KLibrary >> serializeOn: >
	
"
	aWriteStream nextPutAll: ( '{1} {2} {3} {4} {5}{6}{7} {8} {9} {10} ' format: { cursor . cursorState . selection first . selection last . Character escape . searchString contents . Character escape . leapRegister . backupRegister . Character newDocument } ).
	
	text serializeOn: aWriteStream ! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:13:40'!
handlesKeyboard
	^true! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:13:44'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:13:50'!
handlesMouseOver:aMouseButtonEvent
	^true! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 11:51:06'!
initialize

	super initialize.
	
	mapper := LinuxKeyboardMapper new! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 11:00:15'!
keyDown: aMorphicEvent
	
	Transcript show: 'keyDown: '; show: aMorphicEvent ;cr.
! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 11:50:33'!
keyStroke: aKeyboardEvent

	Transcript show: 'keyStroke: ' ;  show: aKeyboardEvent ;cr.
	
	Transcript show: 'isDocumentKey: '; show: (mapper isDocumentKey: aKeyboardEvent) ; cr.
	
	Transcript show: 'isPageKey: '; show: (mapper isPageKey: aKeyboardEvent) ; cr.
	
	! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 11:00:24'!
keyUp: aMorphicEvent

	Transcript show: 'keyUp: ' ; show: aMorphicEvent ;cr.! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:14:42'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self activeHand newKeyboardFocus: self! !

!KaeruKeyboardTester methodsFor: 'as yet unclassified' stamp: 'Df 9/6/2025 13:14:32'!
mouseEnter: aMouseButtonEvent

	self activeHand newKeyboardFocus: self! !

!KaeruMasterMorph methodsFor: 'event handling testing' stamp: 'Df 9/21/2025 12:55:45'!
handlesKeyboard
	^true! !

!KaeruMasterMorph methodsFor: 'event handling testing' stamp: 'Df 9/21/2025 12:56:30'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!KaeruMasterMorph methodsFor: 'event handling testing' stamp: 'Df 9/21/2025 12:56:34'!
handlesMouseOver:aMouseButtonEvent
	^true! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:56:39'!
keyDown: aMorphicEvent

	controller keyDown: aMorphicEvent.
! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'DF 10/14/2025 21:21:11'!
keyStroke: aKeyboardEvent

	controller keyStroke: aKeyboardEvent .
	
	self removeAlarm: #autoSave.
	
	self addAlarm: #autoSave after: 3*60*1000. "3 min. in millisec"
	! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:56:54'!
keyUp: aMorphicEvent

	controller keyUp: aMorphicEvent ! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:56:58'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self activeHand newKeyboardFocus: self! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:57:02'!
mouseEnter: aMouseButtonEvent

	self activeHand newKeyboardFocus: self! !

!KaeruMasterMorph methodsFor: 'initialization' stamp: 'DF 10/17/2025 22:41:19'!
initialize

	| editor |
	
	super initialize.
	
	self morphExtent: 1024@600.
	
	active := #edit.
	
	view := Dictionary new.
	
	view at: #edit put: KaeruEditorMorph new.
	
	editor := KaeruEditor new.
	
	editor text: KLibrary new.
	
	view at: #edit :: model: editor.
	
	view at: #help put: KaeruHelpMorph new.

	view at: #sleep put: KaeruScreenSaverMorph new.

	view at: #titles put: KaeruTitlesMorph new.

	view at: #titles :: model: editor.
		
	view do:[:each | self addMorph: each.  ].
	
	submorphs do:[:each | each hide ].
		
	controller := KaeruMasterController new.
	
	controller at: #edit putController: (KaeruEditorController new viewMaster: self; model: editor; yourself).

	controller at: #help putController: (KaeruHelpController new viewMaster: self; yourself). 

	controller at: #sleep putController: (KaeruScreenSaverController new viewMaster: self; yourself). 

	controller at: #titles putController: (KaeruTitlesController new viewMaster: self; yourself). 

	controller at: #leftMargin putController: (KaeruPluggableMarginController new marginGetter: #leftMargin; marginSetter: #setLeftMargin: ; showMarginMessage: #showLeftMargin: ; viewMaster: self; model:editor; yourself). 
	controller at: #rightMargin putController: (KaeruPluggableMarginController new marginGetter: #rightMargin; marginSetter: #setRightMargin: ; showMarginMessage: #showRightMargin: ; viewMaster: self; model:editor; yourself). 

	controller at: #indent putController: (KaeruPluggableMarginController new marginGetter: #indent; marginSetter: #setParagraphIndent: ; showMarginMessage: #showIndent: ; viewMaster: self; model:editor; yourself). 

	controller activate: #edit.	
	
	self activate: #edit.
	! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 12:53:32'!
activate: aSymbol

	view at: active :: hide.
	
	active := aSymbol.
	
	view at: active :: show.
! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/24/2025 22:06:37'!
autoSave

	view at:#edit :: model isDirty ifFalse:[^self].
	
	Kaeru mutex critical:[
		Smalltalk saveImage.
	].

	" see Kaeru >> startUp: for what happens after saveImage completes "! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/19/2025 21:05:31'!
clearDirtyFlag

	view at:#edit :: clearDirtyFlag.
	
! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 10:20:33'!
drawOn: aCanvas

	" required because the fbdev version sometimes uses this background when displaying strings "
	
	aCanvas
		fillRectangle: self localBounds
		color: `Color black`.! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/24/2025 22:12:08'!
isTextLibraryEmpty

	^ view at:#edit :: model isEmpty! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/24/2025 12:45:14'!
model
	^ controller model! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/24/2025 22:14:35'!
serializeFrom: aReadStream

	view at:#edit :: model serializeFrom: aReadStream

! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/24/2025 17:33:05'!
serializeOn: aWriteStream

	view at:#edit :: model serializeOn: aWriteStream

! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/5/2025 17:11:53'!
start

	view at: #edit :: renderText; startBlinking.! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/20/2025 10:03:33'!
takeFocus

	view at:#edit :: wakeUp.
	
	self activeHand hideHardwareCursor ; newKeyboardFocus: self! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 10/5/2025 16:31:19'!
captureCursorRectangle

	| rect |
	
	rect := printer textCursorRectangle merge: printer rulerCursorRectangle.
	
	snapshot := self imageForm copy: rect.
	
	
! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 10/4/2025 08:50:24'!
drawCursorOn: aCanvas

	printer canvas: aCanvas.

	printer drawCursor.
	
	! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 10/5/2025 17:24:48'!
drawMarginOn: aCanvas

	printer canvas: aCanvas.
	
	printer drawMargin.
	! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 10/17/2025 22:46:58'!
drawOn: aCanvas
	
	[
		aCanvas image: snapshot at: 0@0.
	
		showCursor 
			ifTrue:[
				self drawCursorOn: aCanvas].
			
		editor showLeftMargin or: [editor showRightMargin] or:[editor showIndent] ::
			ifTrue:[  
				self drawMarginOn: aCanvas].
	
	]
	on: AssertionFailure do:[:ex | self drawingFails. self halt.].
	
	
	! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 10/15/2025 21:13:09'!
drawRulerOn: aCanvas
	
	| xx yy textx dx chargeIndex |
	
	textx := printer displayRect origin x.
	
	dx := printer dx.
			
	yy := printer displayRect corner y + 1.
	
	0 to:79 do:[:ii |
		xx := textx + (dx / 2) + (dx * ii).
		aCanvas line: xx@yy to: xx@ (yy + 5) width:1 color: Color white ].
	
	1 to:8 do:[:ii |
		xx := textx + (dx / 2) + (dx * 10 * ii).
		aCanvas 
			line: xx@yy to: xx@(yy + 10) width:1 color: Color white ;
			drawString: ('{1}' format:{ii}) at: (xx - wc) @ (yy + 12)  font: rulerFont color: Color white ].
			
	aCanvas image: self class pageNumberIcon at: textx @ (yy + 30 ).
	
	ina219 isAvailable ifFalse:[^self].
	
	" only draw the battery and socket icons if the ina219 exists "
	
	chargeIndex := (ina219 percentCharge / 10) floor max:1.
	
	aCanvas image: (BatteryIcons at: chargeIndex) at: textx + (30*dx) @ (yy+32).
	
	aCanvas image: (ina219 state = #discharging 
						ifTrue:[self class socketDischargingIcon]
						ifFalse:[self class socketChargingIcon ]) at: textx + (33*dx) @ (yy+32). 
! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 10/17/2025 22:46:35'!
drawTextOn: aCanvas

	" draw the text on an off display form.
	
	We assume that whenever we call drawTextOn: aCanvas the cursor is visible inside the window. 
	
	This allows us to find the iterator that corresponds to the beginning of the window by using the 
	cursor iterator, which is much faster than scanning through all the text to get to the line that corresponds
	to the window. 
	
	In addition, we assume that the cursor is always within the text. This is an invariant of the editor.
	"
	
	| bb ee selectionB selectionE cit |

	cit := editor charIndexToIterator: editor cursor.

	bb := self locateFirstLineInWindow.
		
	printer canvas: aCanvas ; clearCanvas; pageAndLineNumber: (bb physicalPageIndexForPageSize: editor pageSize).
	
	selectionB := editor charIndexToIterator: editor selection first.

	selectionE := editor charIndexToIterator: editor selection last.

	ee := editor end next. "so that we will draw the last document break that marks the end of text "
	
	[ printer isNotAtEnd and: [bb ~= ee] ] 
		whileTrue:[ | cc  |

			printer attributes: bb attributes.
			
			editor isExtended and: [bb = selectionB] ::
				ifTrue:[
					printer background: Color black ; foreground: Color white].
				
			editor isExtended and: [bb = selectionE] ::
				ifTrue:[
					printer background: Color white ; foreground: Color black].

			bb isAtFirstLineInParagraph 
				ifTrue:[
					printer indentBy: (bb attributes indent) ].
				
			cc := bb char. 

			bb = cit 
				ifTrue:[
					printer background: Color black; foreground: Color white ; putChar: cc; background: Color white; foreground: Color black ] 
				ifFalse:[
					bb isBold
						ifTrue:[ 
							printer putBoldChar: cc]
						ifFalse:[
							printer putChar: cc] ].
								
			bb = cit
				ifTrue:[ 
					editor isWide
						ifTrue:[
							printer offsetCursorBy:1]
						ifFalse:[
							printer offsetCursorBy:0].
					
					printer calculateCursorRectangles ; displayStatus; drawTabStops.
					
					editor showLeftMargin
						ifTrue:[
							printer setLeftMarginRegister].

					editor showIndent
						ifTrue:[
							printer setIndentRegister].

					editor showRightMargin
						ifTrue:[
							printer setRightMarginRegister] ].
			
			cc = Character tab
				ifFalse:[
					printer moveRight]
				ifTrue:[
					printer moveToNextTab].
			
			bb isAtEndOfLine 
				ifTrue:[ "If the iterator is not past the end, set the margins and line height according
					to the next paragraph before starting a new line. This ensures that the new line
					starts at the correct position. "
					bb ~= editor end
						ifTrue:[ 	
							printer attributes: bb copy next attributes ].
					
					cc = Character newPage 
						ifTrue:[
							printer newSoftPage]
						ifFalse:[						
							cc = Character newDocument
								ifTrue:[
									printer newDocument]
								ifFalse:[ 									
									printer newLine.
									 ] ] ].
				
			bb next ].
	
	
! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 10/5/2025 17:11:09'!
renderText

	| aCanvas |
	
	aCanvas := MorphicCanvas onForm: snapshot.
	
	aCanvas
		fillRectangle: self localBounds
		color: Color black.
		
	self drawRulerOn: aCanvas ; drawTextOn: aCanvas.! !

!KaeruEditorMorph methodsFor: 'scrolling' stamp: 'DF 10/19/2025 12:17:06'!
scrollToCursor

	"Ensure that the window includes the cursor and points to a line in the text "
	
	| cit ch bb |
		
	cit := editor charIndexToIterator: editor cursor.
	
	ch := cit height.
	
	ch < window		
		ifTrue:[
			window := ch.
			^self redrawNeeded ].

	ch < (window + printer numHalfLines)
		ifTrue:[
			" cursor is within the window, no need to do anything"
			^self].
	
	" If the window is further than numLines from cline move it such that 
	
	window <= ch < window + printer numHalfLines 
		
	"
	bb := cit copy.
	bb prevLine.
		
	" move the window back as long as you can maintain ch < window + printer numHalfLines "
	
	[ch < (bb height + printer numHalfLines) ]
		whileTrue:[
			bb prevLine ].

	" ch < (bb height + printer numHalfLines) and: ch >= (bb prevLine height + printer numHalfLines) "	
	
	bb nextLine.
	
	window := bb height. " this ensures that window points to a line in the text "
	
	self redrawNeeded 		
		! !

!KaeruEditorMorph methodsFor: 'address calculation' stamp: 'DF 10/19/2025 11:42:06'!
locateFirstLineInWindow

	" Answers an iterator to the first line that should be displayed in the window.
	
	We must maintain the invariant that window always points to a half line height of some line in the text.
	
	 "
	
	| bb cit ch |

	cit := editor charIndexToIterator: editor cursor.

	ch := cit height.
	
	self assert: window <= ch.
	
	self assert: ch <= (window +printer numHalfLines).
	
	bb := cit copy.
	
	" We move bb back until it aligns with window. initially bb is bb height - window half lines after window.
	
	"	
	
	[bb height > window]
		whileTrue:[
			bb prevLine].

	self assert: bb height = window.
	
	^bb! !

!KaeruEditorMorph methodsFor: 'initialization' stamp: 'DF 10/19/2025 21:00:26'!
initialize
	
	super initialize .

	color := Color black.
	
	rulerFont := FontFamily familyName: 'Courier Prime' pointSize: 10.	
	
	self morphExtent: 1024@600.	

	printer := KaeruPrinter new.
	
	wc := (rulerFont widthOf: $8) / 2.	
		
	showCursor := false.
	
	snapshot := Form extent: self morphExtent depth: Display depth.
	
	ina219 := INA219 new.
	
	ina219 open.
	
	blinkingRate := 3. "In Hz. 3 Hz when the text is clean, 1 Hz when it is dirty"
	
	self addAlarm: #refreshBatteryState after: 1*60*1000. "1 min. in millisec"! !

!KaeruEditorMorph methodsFor: 'accessing' stamp: 'DF 10/17/2025 21:01:43'!
model
	^editor! !

!KaeruEditorMorph methodsFor: 'accessing' stamp: 'DF 10/3/2025 11:27:31'!
model: aKaeruEditor

	editor := aKaeruEditor.
	
	editor isNil
		ifTrue:[^self].
	
	editor addDependent: self.
	
	window := 0. "height in half line units. "
	
	printer pageSize: editor pageSize.
	
! !

!KaeruEditorMorph methodsFor: 'updating' stamp: 'DF 10/14/2025 21:30:11'!
refreshBatteryState

	self renderText.
	
	self addAlarm: #refreshBatteryState after: 1*60*1000. "1 min. in millisec"
	
	self redrawNeeded ! !

!KaeruEditorMorph methodsFor: 'updating' stamp: 'DF 10/5/2025 16:43:04'!
update: aSymbol
	
	self scrollToCursor ; renderText ; redrawNeeded ! !

!KaeruEditorMorph methodsFor: 'updating' stamp: 'DF 10/16/2025 21:03:15'!
wakeUp

	" reopen the connection to the INA219 battery chrager after restarting the system "
	
	ina219 open.! !

!KaeruEditorMorph methodsFor: 'cursor blinking' stamp: 'DF 10/19/2025 21:05:27'!
clearDirtyFlag

	" Sent when the image was just saved, mark the text as clean and set the cursor blink rate to 3 Hz "
	
	editor clearDirtyFlag.
	
	self stopBlinking.
	
	blinkingRate := 3.
	
	self startBlinking ! !

!KaeruEditorMorph methodsFor: 'cursor blinking' stamp: 'Df 9/21/2025 20:04:17'!
invalidateCursorRectangles

	printer textCursorRectangle ifNotNil: [ :r | self invalidateLocalRect: r ].
	
	printer rulerCursorRectangle ifNotNil:[ :r | self invalidateLocalRect: r ].
	! !

!KaeruEditorMorph methodsFor: 'cursor blinking' stamp: 'DF 10/3/2025 23:52:10'!
onBlinkCursor
	
	"Blink the cursor"

	showCursor := showCursor not.
	
	self invalidateCursorRectangles.
	
! !

!KaeruEditorMorph methodsFor: 'cursor blinking' stamp: 'DF 10/19/2025 21:00:57'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: (1000.0 / blinkingRate).
	! !

!KaeruEditorMorph methodsFor: 'cursor blinking' stamp: 'Df 9/21/2025 20:04:53'!
stopBlinking

	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		self invalidateCursorRectangles ]! !

!KaeruEditorMorph methodsFor: 'object serialization' stamp: 'DF 10/14/2025 17:53:49'!
serializeFrom: aReadStream

	| aScanner version |
	
"
	Here's the format
	
	Format-Version window <state of KaeruEditor see KaeruEditor >> serializeOn: 
"

	aScanner := SimpleScanner on: aReadStream.
	
	version := aScanner nextInteger.
	
	aScanner skipWhiteSpace.
	
	window := aScanner nextInteger.
	
	aScanner skipWhiteSpace.
	
	editor serializeFrom: aReadStream.! !

!KaeruEditorMorph methodsFor: 'object serialization' stamp: 'DF 10/8/2025 11:48:05'!
serializeOn: aWriteStream

"
	Here's the format
	
	Format-Version window <state of KaeruEditor see KaeruEditor >> serializeOn: 
"

	aWriteStream nextPutAll: '1'. "increment each time the format changes"
	
	aWriteStream nextPut: Character space.
	
	aWriteStream nextPutAll: window asString.
	
	aWriteStream nextPut: Character space.
	
	editor serializeOn: aWriteStream.! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 10/15/2025 20:38:16'!
initialize

	"self initialize"
	
	BatteryIcons := Array new:10.
	
	BatteryIcons 
at:1 put:
 
 (Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134217728 131072 2818572288 131072 2818572288 131072 2818572288 131072 2818572288 131072 2818572288 131072 2818572288 131072 2818572288 131072 134217728 131072 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:2 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134217728 10616832 2818572288 10616832 2818572288 10616832 2818572288 10616832 2818572288 10616832 2818572288 10616832 2818572288 10616832 2818572288 10616832 134217728 10616832 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:3 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134217728 178388992 2818572288 178388992 2818572288 178388992 2818572288 178388992 2818572288 178388992 2818572288 178388992 2818572288 178388992 2818572288 178388992 134217728 178388992 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:4 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134217728 2862743552 2818572288 2862743552 2818572288 2862743552 2818572288 2862743552 2818572288 2862743552 2818572288 2862743552 2818572288 2862743552 2818572288 2862743552 134217728 2862743552 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:5 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134217738 2862743552 2818572298 2862743552 2818572298 2862743552 2818572298 2862743552 2818572298 2862743552 2818572298 2862743552 2818572298 2862743552 2818572298 2862743552 134217738 2862743552 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:6 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134217898 2862743552 2818572458 2862743552 2818572458 2862743552 2818572458 2862743552 2818572458 2862743552 2818572458 2862743552 2818572458 2862743552 2818572458 2862743552 134217898 2862743552 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:7 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134220458 2862743552 2818575018 2862743552 2818575018 2862743552 2818575018 2862743552 2818575018 2862743552 2818575018 2862743552 2818575018 2862743552 2818575018 2862743552 134220458 2862743552 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:8 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134261418 2862743552 2818615978 2862743552 2818615978 2862743552 2818615978 2862743552 2818615978 2862743552 2818615978 2862743552 2818615978 2862743552 2818615978 2862743552 134261418 2862743552 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:9 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 134916778 2862743552 2819271338 2862743552 2819271338 2862743552 2819271338 2862743552 2819271338 2862743552 2819271338 2862743552 2819271338 2862743552 2819271338 2862743552 134916778 2862743552 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
; at:10 put:

(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 178956970 2863267840 134217728 131072 145402538 2862743552 2829757098 2862743552 2829757098 2862743552 2829757098 2862743552 2829757098 2862743552 2829757098 2862743552 2829757098 2862743552 2829757098 2862743552 145402538 2862743552 134217728 131072 178956970 2863267840 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'Df 9/19/2025 14:03:24'!
pageNumberIcon

 ^ `Form
 	extent: 24@28
 	depth: 2
 	fromArray: #(
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r00000000000000000000000000000000
 		2r10101010101010101010101000000000
 		2r00000000000000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000000000000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000000000000000000000000000000
 		2r10000010101010101000001000000000
 		2r00000000100000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000010100000000000000000000000
 		2r10000000000000000000001000000000
 		2r00001010100000000000000000000000
 		2r10000010101010101000001000000000
 		2r00101010100000000000000000000000
 		2r10000000000000000000001000000000
 		2r10101010100000000000000000000000
 		2r10000000000000000000001000000010
 		2r10101010100000000000000000000000
 		2r10000010101010101000001000000000
 		2r10101010100000000000000000000000
 		2r10000000000000000000001000000000
 		2r00101010100000000000000000000000
 		2r10000000000000000000001000000000
 		2r00001010100000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000010100000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000000100000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000000000000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000000000000000000000000000000
 		2r10000000000000000000001000000000
 		2r00000000000000000000000000000000
 		2r10000000000010101010101000000000
 		2r00000000000000000000000000000000
 		2r10000000000010000000100000000000
 		2r00000000000000000000000000000000
 		2r10000000000010000010000000000000
 		2r00000000000000000000000000000000
 		2r10000000000010001000000000000000
 		2r00000000000000000000000000000000
 		2r10000000000010001000000000000000
 		2r00000000000000000000000000000000
 		2r10101010101010100000000000000000
 		2r00000000000000000000000000000000)
 	offset: 0@0`
	! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 10/15/2025 20:40:25'!
socketChargingIcon

 ^(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 43648 0 43680 0 178956970 2147483648 178956970 2818572288 43690 2818572288 43690 2818572288 43690 2818572288 43690 2818572288 43690 2818572288 178956970 2818572288 178956970 2147483648 43680 0 43648 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
! !

!KaeruEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 10/15/2025 20:40:38'!
socketDischargingIcon

 ^(Form
 	extent: 24@28
 	depth: 2
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 43648 0 32800 0 178946058 2147483648 178946048 671088640 32768 134217728 32768 134217728 32768 134217728 32768 134217728 32768 134217728 178946048 671088640 178946058 2147483648 32800 0 43648 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0)
 
! !

!KaeruHelpMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 20:04:01'!
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self drawTextOn: aCanvas.
	
	"printer canvas: aCanvas.
	
	printer clearCanvas.
	
	text do:[:each |
		
		each isLineSeparator 
			ifTrue:[
				printer newLine]
			ifFalse:[
				printer putChar: each;  moveRight ] ].
	"! !

!KaeruHelpMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 20:16:42'!
drawTextOn: aCanvas

	" draw the help text on aCanvas
	"
	
	| bb ee |

	bb := text begin next. "skip the start-of-text sentinel "
		
	printer canvas: aCanvas ; clearCanvas.
	
	ee := text end.
	
	[ printer isNotAtEnd and: [bb ~= ee] ] 
		whileTrue:[ | cc  |

			printer attributes: bb attributes.
			
			bb isAtFirstLineInParagraph 
				ifTrue:[
					printer indentBy: (bb attributes indent) ].
				
			cc := bb char. 

			bb isBold
				ifTrue:[ 
					printer putBoldChar: cc]
				ifFalse:[
					printer putChar: cc].
			
			cc = Character tab
				ifFalse:[
					printer moveRight]
				ifTrue:[
					printer moveToNextTab].
			
			bb isAtEndOfLine 
				ifTrue:[ "If the iterator is not past the end, set the margins and line height according
					to the next paragraph before starting a new line. This ensures that the new line
					starts at the correct position. "
					bb ~= ee
						ifTrue:[ 	| bn |
							bn := bb copy next.
							bn isPastEnd
								ifFalse:[
									printer attributes: bn attributes ] ].
					
					cc = Character newPage 
						ifTrue:[
							printer newSoftPage]
						ifFalse:[						
							cc = Character newDocument
								ifTrue:[
									printer newDocument]
								ifFalse:[ 									
									printer newLine.
									 ] ] ].
				
			bb next ].
	
	
! !

!KaeruHelpMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/25/2025 13:42:46'!
initialize 

	super initialize.

	self morphExtent: 1024@600.	
	
	color := Color black.
	
	printer := KaeruPrinter new.
	
	printer displayHeight:590; pageSize: 80 "half lines" ; numLines: 25.
	
	text := KLibrary new.
	
	Smalltalk imagePath asDirectoryEntry / 'help' // 'help.ktf' readStreamDo: [:stream |
		
		" skip the header until you get to the part that starts the library text "
		[stream peek ~= Character newDocument] 
			whileTrue:[stream next].
		
		stream next.
				
		text serializeFrom: stream ].
! !

!KaeruScreenSaverMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 14:52:28'!
initialize

	| imageMorph |
	
	super initialize.

	self morphExtent: 1024@600.	
	
	color := Color black.
	
	imageMorph := FrogAnimation new.
	
	imageMorph morphPosition: 0@300.
	
	self addMorph: imageMorph 
! !

!KaeruTitlesMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 22:35:30'!
drawOn: aCanvas

	| bb ee docSep |

	super drawOn: aCanvas.
	
	printer canvas: aCanvas.

	printer clearCanvas.
		
	docSep := Character newDocument asString.
	
	bb := editor begin.
	
	ee := editor end.
	
	[ printer isNotAtEnd and: [bb ~= ee] ]
		whileTrue:[
			bb next.
			bb line do:[:each | printer putChar: each; moveRight ].
			printer newLine.
			bb := editor searchFrom: bb forwardFor: docSep ].
		! !

!KaeruTitlesMorph methodsFor: 'as yet unclassified' stamp: 'DF 10/5/2025 17:37:34'!
initialize

	super initialize.

	self morphExtent: 1024@600.	
	
	color := Color black.
	
	printer := KaeruPrinter new.

	printer leftMargin: 1; lineSpace: 2; pageSize: 40 ; displayHeight: 538 + (2 * printer dy ) ; numLines: 25.
	
! !

!KaeruTitlesMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 18:02:30'!
model: aKaeruEditor

	editor := aKaeruEditor.
	
	printer pageSize: editor pageSize.
	
	editor addDependent: self.
	
! !

!FrogAnimation methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:47:37'!
initialize

	super initialize.
	
	index := 1.
	
	originx := 0.! !

!FrogAnimation methodsFor: 'as yet unclassified' stamp: 'Df 9/25/2025 17:49:29'!
step
	
	index := index + 1. 
	
	index = (Frames size + 1)
		ifTrue:[
			index := 1].
		
	image := Frames at: index.
	
	originx := originx + (12 to: 64) atRandom mod: 1024.
	
	self morphPosition: originx @ self morphPosition y.
	
	self redrawNeeded ! !

!FrogAnimation methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2025 16:31:14'!
stepTime

	^ index = 1
		ifTrue:[
			1000 to:2000 :: atRandom ]
		ifFalse:[
			200].! !

!FrogAnimation methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:43:39'!
wantsSteps
	^true! !

!FrogAnimation class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:32:52'!
frog1

 ^`Form
 	extent: 96@96
 	depth: 4
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1118464 0 0 0 0 0 0 0 0 0 0 0 19014160 0 0 0 0 0 0 0 0 0 0 0 304157217 285212672 0 0 0 0 0 0 0 0 0 1 303108385 1427177472 0 0 0 0 0 0 0 0 0 277 303108385 1431638272 0 0 0 0 0 0 0 0 0 5461 304157217 1431655696 0 0 0 0 0 0 0 0 0 87381 1361191445 1431655761 0 0 0 0 0 0 0 0 0 1398101 1427181909 1431655761 0 0 0 0 0 0 0 0 0 22369621 1431655765 1431655761 0 0 0 0 0 0 0 0 0 357913941 1431655765 1431638289 0 0 0 0 0 0 0 0 17895697 1431655765 1431655765 1360090384 0 0 0 0 0 0 0 17 357913941 1431655765 1431638289 357912832 0 0 0 0 0 0 0 69973 1431655765 1431655765 1360090453 1431375872 0 0 0 0 0 0 0 1398101 1431655765 1431655765 1431655765 1427111936 0 0 0 0 0 0 0 290805077 1431655765 1431655765 1431655765 1358954496 0 0 0 0 0 0 17 1431655765 1431655765 1431655765 286348629 1358954496 0 0 0 0 0 0 341 1431655765 1431655765 1431655761 1431639381 268435456 0 0 0 0 0 0 5461 1431655765 1431655765 1431655701 1431639377 0 0 0 0 0 0 0 87381 1431655765 1431655765 1431654741 1431639377 0 0 0 0 0 0 0 87381 1431655765 1431655765 1431654741 1431639312 0 0 0 0 0 0 0 286593301 1431655765 1431655765 1431654741 1431638272 0 0 0 0 0 0 17 1431655761 290805077 1431655765 1431639381 1431638016 0 0 0 0 0 0 341 1431655765 1427199317 1431655765 1431639381 1431371776 0 0 0 0 0 0 341 1431655765 1431639381 1431655765 1431639381 1431371776 0 0 0 0 0 0 5461 1431655765 1431654677 1431655765 1431639381 1431371776 0 0 0 0 0 0 5461 1431655765 1431655761 1431655765 1431639381 1427111936 0 0 0 0 0 0 5461 1431655765 1431655765 357913941 1431639381 1358954496 0 0 0 0 0 0 5461 1431655765 1431655765 357913941 1431654741 1358954496 0 0 0 0 0 0 5461 1431655765 1431655765 1364546901 1431654741 1427111936 0 0 0 0 0 0 341 1431393621 1431655765 1364546901 1431654741 1431371776 0 0 0 0 0 0 21 1431638357 1431655765 1364546901 1431638293 1431638016 0 0 0 0 0 0 1 1431655697 1431655765 1364546901 1431371777 1431638016 0 0 0 0 0 0 0 290805077 290805077 357913941 286261248 357896192 0 0 0 0 0 0 0 1398101 1427181841 290805073 0 18174225 286261248 0 0 0 0 0 0 70997 1431655765 1427181841 268435456 87381 1431371776 0 0 0 0 0 0 273 286331153 286331153 286261248 4369 286330880 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0`! !

!FrogAnimation class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:32:22'!
frog2

 ^`Form
 	extent: 96@96
 	depth: 4
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1118464 0 0 0 0 0 0 0 0 0 0 0 19014160 0 0 0 0 0 0 0 0 0 0 0 304157217 285212672 0 0 0 0 0 0 0 0 0 1 303108385 1427177472 0 0 0 0 0 0 0 0 0 277 303108385 1431638272 0 0 0 0 0 0 0 0 0 5461 304157217 1431655696 0 0 0 0 0 0 0 0 0 87381 1361191445 1431655761 0 0 0 0 0 0 0 0 0 1398101 1427181909 1431655761 0 0 0 0 0 0 0 0 0 22369621 1431655765 1431655761 0 0 0 0 0 0 0 0 0 357913941 1431655765 1431638289 0 0 0 0 0 0 0 0 17895697 1431655765 1431655765 1360090384 0 0 0 0 0 0 0 17 357913941 1431655765 1431638289 357912832 0 0 0 0 0 0 0 69973 1431655765 1431655765 1360090453 1431375872 0 0 0 0 0 0 0 1398101 1431655765 1431655765 1431655765 1427111936 0 0 0 0 0 0 0 290805077 1431655765 1431655765 1431655765 1358954496 0 0 0 0 0 0 17 1431655765 1431655765 1431655765 1431655765 1358954496 0 0 0 0 0 0 341 1431655765 1431655765 1431655765 1360074069 268435456 0 0 0 0 0 0 5461 1431655765 1431655765 1431655761 357912913 0 0 0 0 0 0 0 87381 1431655765 1431655765 1431655701 1431654737 0 0 0 0 0 0 0 1398101 1431655765 1431655765 1431655701 1431655696 0 0 0 0 0 0 0 1397009 290805077 1431655765 1431654741 1431654656 0 0 0 0 0 0 0 22091093 1427199317 1431655765 1431639381 1431638016 0 0 0 0 0 0 0 22369621 1431639381 1431655765 1431639381 1431638016 0 0 0 0 0 0 0 357913941 1431639381 1431655765 1431639381 1431371776 0 0 0 0 0 0 1 1431655765 1431654741 1431655765 1431655765 1427111936 0 0 0 0 0 0 21 1431655765 1431654741 1431655765 1431639381 1427111936 0 0 0 0 0 0 341 1431655765 1431654741 1431655765 1431639381 1342177280 0 0 0 0 0 0 5461 1431655765 1431654741 1431655765 1431639381 268435456 0 0 0 0 0 0 5461 1431655765 1431639381 1431655765 1431639381 268435456 0 0 0 0 0 0 87381 1431655765 1431639381 1431655765 1431393621 0 0 0 0 0 0 0 87381 1431655765 1431393621 1431655765 1431393617 0 0 0 0 0 17 286331153 87381 1431655765 1431655765 1431655765 1431393617 0 0 0 0 0 4437 1431655765 286610773 1431655765 1427461461 1431655765 286348560 0 0 0 0 0 87381 1431655765 1431655765 1431655765 1364546901 1431655761 87312 0 0 0 0 0 1398101 1431655765 1431655765 1431655761 357913941 1360072976 87377 0 0 0 0 0 22369621 1431655765 1431655765 1431654672 17895697 268435456 4177 0 0 0 0 0 357912849 357913941 1431655765 1427181568 0 0 5461 268435456 0 0 0 1 1431638016 17895701 1431655761 285212672 0 0 87317 1358954496 0 0 0 21 1431371776 17 286331152 0 0 0 1396993 1358954496 0 0 0 286331221 1427111936 0 0 0 0 0 1118209 1427111936 0 0 1 1431655765 1358954496 0 0 0 0 0 0 353370112 0 0 1 286348629 268435456 0 0 0 0 0 0 17825792 0 0 0 5457 0 0 0 0 0 0 0 0 0 0 17 286348560 0 0 0 0 0 0 0 0 0 0 21 1431638272 0 0 0 0 0 0 0 0 0 0 17 286326784 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0`! !

!FrogAnimation class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:31:48'!
frog3

^ Form
 	extent: 96@96
 	depth: 4
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 286326784 0 0 0 0 0 0 0 0 0 0 1 572657664 0 0 0 0 0 0 0 0 0 0 69906 554836224 0 0 0 0 0 0 0 1 286331153 0 290805010 286335248 0 0 0 0 0 0 0 1118485 1431655765 285212689 1431655698 286335313 0 0 0 0 0 0 0 290805077 1431655765 1427181909 1431655698 554836309 268435456 0 0 0 0 0 17 1431655765 1431655765 1431655765 1431655761 572659029 1358954496 0 0 0 0 0 341 1431655765 1431655765 1431655765 1431655765 286348629 1427111936 0 0 0 0 0 5461 1431655765 1431655765 1431655765 1431655765 1431655765 1431371776 0 0 0 0 0 87313 286610773 1431655765 1431655765 1431655765 1431655765 1431371776 0 0 0 0 0 286610773 1431393621 1431655765 1431655765 1431655765 1431655765 1431371776 0 0 4369 268435456 1 1431655765 1431639381 1431655765 1431655765 1431654673 290805077 1431371776 0 0 1135957 1360068608 277 1431655765 1431654741 1431655765 1431655765 1431655765 1427181841 286326784 0 0 290805077 1431638272 5461 1431655765 1431654741 1431655765 1431655765 1431655765 1431655765 1427111936 17 285212945 1431655765 1431655697 87381 1431655765 1431654741 1431655765 1431655765 1427182933 1431654673 285212672 277 1427182933 1431639381 1431655765 269833557 1431655765 1431654741 1431655765 1431655765 290804053 1431638016 0 1 357913941 1427177749 1431655765 1364546901 1431655765 1431654741 1431655765 1431655697 1431655701 1427177472 0 69904 22369617 285212673 1431655765 1431655765 1431655765 1431654741 1431655765 1431654741 1431655701 1358954496 0 87313 357912848 0 290805077 1431655765 1431655765 1431639381 1431655765 1431639381 1431655701 268435456 0 69973 1431375872 0 1135957 1431655765 1431655765 1431393621 1431655765 1431639381 1431655697 0 0 17 286261248 0 5461 1431655765 1431655765 1427461461 1431655765 1431393621 1431654656 0 0 0 0 0 273 1431655765 1431655765 290805077 1431655765 1431393621 1431375872 0 0 0 0 0 0 286331221 1431638289 1431655765 1431655765 1427461461 1427111936 0 0 0 0 0 0 17 286326805 1431655765 1431655765 1427461461 285212672 0 0 0 0 0 0 0 1 357913941 1431655765 1364546897 0 0 0 0 0 0 0 0 0 18175317 1431655765 1364546832 0 0 0 0 0 0 0 0 0 69905 290805077 357912832 0 0 0 0 0 0 0 0 0 0 1118481 357896192 0 0 0 0 0 0 0 0 0 0 0 357629952 0 0 0 0 0 0 0 0 0 0 0 357629952 0 0 0 0 0 0 0 0 0 0 0 357629952 0 0 0 0 0 0 0 0 0 0 1 1431371776 0 0 0 0 0 0 0 0 0 0 21 1431371776 0 0 0 0 0 0 0 0 0 0 341 290787328 0 0 0 0 0 0 0 0 0 0 17 1380352 0 0 0 0 0 0 0 0 0 0 0 1380352 0 0 0 0 0 0 0 0 0 0 0 1380352 0 0 0 0 0 0 0 0 0 0 0 1380352 0 0 0 0 0 0 0 0 0 0 0 65536 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0! !

!FrogAnimation class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:31:06'!
frog4

^ `Form
 	extent: 96@96
 	depth: 4
 	fromArray: #( 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 17891328 0 0 0 0 0 0 0 0 0 0 272 5574656 0 0 0 0 0 0 0 0 0 0 337 1396992 0 0 0 0 0 0 0 0 0 0 341 268522769 286331153 0 0 0 0 0 0 0 0 0 21 1360352597 1431655765 285212672 0 0 0 0 0 0 0 0 1 357913941 1431655765 1427111936 0 0 0 0 0 0 0 0 0 17895697 357913941 1431371776 0 0 0 0 0 0 0 0 0 0 17895765 1431638016 0 0 0 0 0 0 0 0 0 0 21 1431654656 0 0 0 0 0 0 0 0 0 0 1 1431655696 0 0 0 0 0 0 0 0 0 0 1 1431655761 0 0 0 0 0 0 0 0 0 0 0 357913937 0 17 286331152 0 0 0 0 0 0 0 0 357913941 268435729 286331221 1431655761 286261248 0 0 0 0 0 0 0 22369621 269555029 1431655761 1431655765 1431375872 0 0 0 0 0 0 0 1398101 1364546901 1431655765 290805077 1431654672 0 0 0 0 0 0 0 1398101 1431655765 1431655765 1427461461 1431655761 268435456 0 0 0 0 0 0 87381 1431655765 1431655765 1431393621 1431655765 1358954496 0 0 0 0 0 0 5461 1431655765 1431655765 1431393621 1431655765 1358954496 0 0 0 0 0 0 341 1431655765 1431655765 1431639381 1431655765 1427111936 0 0 0 0 0 0 21 1431655765 1431655765 1431639381 1431655765 1431371776 0 0 0 0 0 0 1 357913941 1431655765 1431393621 1431655765 1431638289 286261248 0 0 0 0 0 0 22369621 1431655765 1431393621 1431655765 1431655765 1431376129 286261248 0 0 0 0 0 1398101 1431655765 1427461461 1431655765 1431655765 1431655698 572588032 0 0 0 0 0 70997 1431655765 1427461461 1431655765 1431655765 1431655698 287444992 0 0 0 0 0 273 1431655761 290805077 1431655765 1431655765 1431654689 286396416 0 0 0 0 0 0 286331157 1431655765 1431655765 1431655765 1431654689 286396416 0 0 0 0 0 0 22369621 1431655765 1431655765 1431655765 1431655714 287445248 0 0 0 0 0 0 1398101 1431655765 1431655765 1431655765 1431655698 572608768 0 0 0 0 0 0 1398101 1431655765 1431655765 1431655765 1431655761 286610704 0 0 0 0 0 0 87381 1431655765 1431655765 1431655765 1360352597 1431655696 0 0 0 0 0 0 5461 1431655765 1431655765 286610773 1427199317 1431655696 0 0 0 0 0 0 341 1431655765 1431655761 1431393621 1431638357 1431655696 0 0 0 0 0 0 21 1431655765 1431655761 1431639381 1431654741 1431655761 0 0 0 0 0 0 1 1431655765 1431655761 1431639381 1431655697 1431655761 0 0 0 0 0 0 0 357913941 1431655761 1431639381 1431655765 290805073 0 0 0 0 0 0 0 18175317 1431655761 1431639381 1431655765 1427199248 0 0 0 0 0 0 0 70997 1431655761 1431654741 1360072977 290787584 0 0 0 0 0 0 0 277 1431655697 1431655697 268435456 1118208 0 0 0 0 0 0 0 1 286331137 1431655696 0 0 0 0 0 0 0 0 0 0 1 1431655696 0 0 0 0 0 0 0 0 0 0 1 1431655696 0 0 0 0 0 0 0 0 0 0 0 357913872 0 0 0 0 0 0 0 0 0 0 0 22369552 0 0 0 0 0 0 0 0 0 0 0 1398097 0 0 0 0 0 0 0 0 0 0 0 1398097 0 0 0 0 0 0 0 0 0 0 0 87381 285212672 0 0 0 0 0 0 0 0 0 0 5461 1427181824 0 0 0 0 0 0 0 0 0 0 341 1431655696 0 0 0 0 0 0 0 0 0 0 337 357896529 0 0 0 0 0 0 0 0 0 0 5392 357629968 0 0 0 0 0 0 0 0 0 0 86272 22085632 0 0 0 0 0 0 0 0 0 0 69632 22085632 0 0 0 0 0 0 0 0 0 0 0 1048576 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)
 	offset: 0@0`
! !

!FrogAnimation class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:33:29'!
initialize

	" self initialize "
	
	Frames := { self frog1 . self frog2 . self frog3 . self frog4 }.! !

!FrogAnimation class methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 21:42:45'!
new
	^super new
		image: (Frames at:1).! !

!Kaeru class methodsFor: 'headless' stamp: 'DF 10/25/2025 12:55:06'!
exportTextLibrary

	UISupervisor ui ifNotNil:[ :world | | app |
	
		app := world submorphs detect:[:each | each isKindOf: KaeruMasterMorph ] ifNone:[nil].

		self assert: app notNil.
		
		Smalltalk imagePath asDirectoryEntry // 'text.ktf' writeStreamDo: [ :aWriteStream |
				app serializeOn: aWriteStream ] ] .

			
! !

!Kaeru class methodsFor: 'headless' stamp: 'DF 10/25/2025 12:54:47'!
importTextLibrary

	UISupervisor ui ifNotNil:[ :world | | app |
	
		app := world submorphs detect:[:each | each isKindOf: KaeruMasterMorph ] ifNone:[nil].
	
		self assert: app notNil.

		self assert: app isTextLibraryEmpty.
				
		Smalltalk imagePath asDirectoryEntry // 'text.ktf' readStreamDo: [ :aReadStream |
				app serializeFrom: aReadStream ] ] .

			
! !

!Kaeru class methodsFor: 'headless' stamp: 'DF 10/25/2025 13:13:52'!
performHeadlessRequest: request
	
	request = 'export' ifTrue:[
		
		^ self exportTextLibrary].
	
	request = 'import' ifTrue:[
		
		self assert: true.
		
		^self importTextLibrary ].
	
	request = 'status' ifTrue:[
		
		^self reportTextEmptyStatus ].
	
	self assert: false! !

!Kaeru class methodsFor: 'headless' stamp: 'DF 10/25/2025 13:15:54'!
reportTextEmptyStatus

	UISupervisor ui ifNotNil:[ :world | | app |
	
		app := world submorphs detect:[:each | each isKindOf: KaeruMasterMorph ] ifNone:[nil].
	
		self assert: app notNil.

		Smalltalk imagePath asDirectoryEntry // 'status' forceWriteStreamDo: [ :aWriteStream |
			aWriteStream nextPutAll: ('empty={1}' format: { app isTextLibraryEmpty }) ] ].

			
! !

!Kaeru class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 21:38:52'!
initialize

	"self initialize"
	
	mutex := Semaphore forMutualExclusion.
	
	AppLauncher appGlobalName: #Kaeru appSelector: #startUp:.! !

!Kaeru class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 21:13:57'!
installSigTermHandler

	[
		 | sema |
	
		sema := OSProcess accessor forwardSigTerm. 

		sema wait.
 
		mutex critical:[
			Smalltalk saveAndQuit
		].

	] forkNamed: 'SIGTERM handler'

! !

!Kaeru class methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 21:13:53'!
mutex
	^mutex! !

!Kaeru class methodsFor: 'as yet unclassified' stamp: 'DF 10/25/2025 13:14:06'!
startUp: args

	Transcript logToStdout: false.
	
	Smalltalk isHeadless ifTrue:[

		Transcript logToStdout: true.
			
		self assert: Smalltalk startUpArguments size = 2.
		
		self performHeadlessRequest: Smalltalk startUpArguments second.	
	
		Smalltalk quit.
	].
	
	args isKindOf: Boolean :: ifTrue:[ | aBoolean |
		aBoolean := args.
		
		aBoolean ifFalse:[ 
					
			" This is not a real startup, we have just saved the image"
		
			UISupervisor ui ifNotNil:[ :world | | app |
			
				app := world submorphs detect:[:each | each isKindOf: KaeruMasterMorph ] ifNone:[nil].
			
				app ifNotNil:[ app clearDirtyFlag ] ].
			
			^self ] ].

	self installSigTermHandler.

	UISupervisor ui ifNotNil:[ :world | | app |
		
		app := world submorphs detect:[:each | each isKindOf: KaeruMasterMorph ] ifNone:[nil].
		
		app ifNotNil:[ app takeFocus  ] ].	
! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 17:10:14'!
doErase: aGenerator

	|  len ab ae pp ptext |
	
	len := (1/ ( (1/text size) + aGenerator next)) ceiling.
	
	ab := (2 to: text size + 2) atRandom.
	
	ae := ab + len min: text size + 2.
			
	"erase the parts at both the abstract and concrete sytems. "
	
	pp := lib eraseFrom: ab to: ae.

	self assert: lib invariant.
	
	ptext := text.
		
	text := text eraseFrom:ab -1  to:ae - 1.
	
	"check that the abstract and concrete systems correspond"
	
	self assert: (self wrap:text)  = lib text.
	
	^ae - ab
! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 17:12:10'!
doInsert: aGenerator

	| cc  ii |
		
	"We draw at random two numbers. one is the character to insert, the other the position after
	which we insert the character."
	
	cc := self drawCharacterFrom: aGenerator.
	
	" Select an abstract index and a concrete address that corresponds to this index "
	
	ii := 1 + (aGenerator next * text size) floor. "we use floor to have a chance to insert a character at the very start of the text (after index 1)"
	
	lib insert: cc after: ii.
	
	text := text copyReplaceFrom:ii to:ii - 1 with: cc asString. 
		
	self assert: lib text = (self wrap:text).

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

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/8/2025 15:32:50'!
testEverything

	| aGenerator iteration count maxErase countErase maxCount |

	self assert: lib text = (self wrap: text).

	self assert: lib invariant.
	
	iteration := 0. "keeps track of how many iterations the test did"
	
	count := 2. "the number of characters in the repository"
	
	maxErase := 1. "the largest subsequence that was erased so far"
	
	countErase := 1. "the number of characters that were erased and not inserted yet. This is used to ensure that after we erase k characters we insert k - 1 characters "
	
	maxCount := 4000. "the maximal number of characters in the repository during the test."
	
	self assert: count = (1 + text size + 1).
	
	aGenerator := Random new.

	16000 timesRepeat:[ | pp |  

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

		self assert: count = (1 + text size + 1).
		
		iteration := iteration + 1.

		"(Delay forMilliseconds: 50) wait" ] "fork".
	! !

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 17:05:50'!
wrap: aString
	^ (Character newDocument asString), aString, (Character newDocument asString)! !

!TestDisjointIntervalSeq methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2025 17:05:34'!
testErase

	| dis |
	
	dis := DisjointIntervalSequence new.
	
	self assert: dis invariant.
	
	dis insert: (1 to: 3) ; insert: (14 to: 15); insert: (8 to: 9).
	
	self assert: dis invariant.

	dis erase: (2 to:11).

	self assert: dis invariant.	
	
	self assert: (dis includes:1).

	self assert: (dis includes:14).
	
	self assert: (dis includes:8) not.! !

!TestDisjointIntervalSeq methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2025 17:03:51'!
testInsert

	| dis |
	
	dis := DisjointIntervalSequence new.
	
	self assert: dis invariant.
	
	dis insert: (1 to: 3) ; insert: (14 to: 15); insert: (8 to: 9).
	
	self assert: dis invariant.
	
	self assert: (dis includes: 0) not.
	
	self assert: (dis includes: 1).
	
	self assert: (dis includes: 2).
	
	self assert: (dis includes: 3) not.
	
	self assert: (dis includes: 13) not.
	
	self assert: (dis includes: 14).
	
	self assert: (dis includes: 7) not.
	
	self assert: (dis includes: 8).
	
	self assert: (dis includes: 9) not.
	
	dis insert: (3 to: 4).
	
	self assert: dis invariant.
	
	dis insert: (9 to:11).
	
	self assert: dis invariant.
	
	dis insert: (11 to:14).
	
	self assert: dis invariant.	! !

!TestDisjointIntervalSeq methodsFor: 'as yet unclassified' stamp: 'DF 10/6/2025 17:43:12'!
testShiftBack

	| dis |
	
	dis := DisjointIntervalSequence new.
	
	self assert: dis invariant.
	
	dis insert: (1 to: 3) ; insert: (5 to: 7); insert: (8 to: 12); insert: (18 to: 19).
	
	self assert: dis invariant.
	
	dis shiftBack: 5 from: 6.

	self assert: dis invariant.	! !

!TestDisjointIntervalTree methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2025 22:08:24'!
testInsert

	| aTree |
	
	aTree := DisjointIntervalTree new.
	
	aTree interval: (1 to: 10).
	
	self assert: aTree invariant.
	
	self assert: (aTree tagsOf: 1) = { #p } asSet.
	
	aTree insertInterval: (3 to: 6) kind: #bold.

	self assert: aTree invariant.

	self assert: (aTree tagsOf: 1) = { #p } asSet.

	self assert: (aTree tagsOf: 3) = { #p . #bold } asSet.

	self assert: (aTree tagsOf: 6) = { #p } asSet.

	aTree insertInterval: (5 to: 8) kind: #italics.

	self assert: aTree invariant.

	self assert: (aTree tagsOf: 1) = { #p } asSet.

	self assert: (aTree tagsOf: 3) = { #p . #bold } asSet.

	self assert: (aTree tagsOf: 5) = { #p . #bold . #italics } asSet.
	! !

!TestDisjointIntervalTree methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2025 22:37:39'!
testTransform

	| aTree aWriteStream |
	
	aTree := DisjointIntervalTree new.
	
	aTree interval: (1 to: 10).
		
	aTree insertInterval: (3 to: 6) kind: #bold.

	aTree insertInterval: (5 to: 8) kind: #italics.

	self assert: aTree invariant.

	aWriteStream := WriteStream on: ''.
	
	aTree transform: '1234567890' at: 1  into: aWriteStream.
	
	self assert: aWriteStream contents = '<p>12<bold>34<italics>5</italics></bold><italics>67</italics>89</p>'! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/17/2025 13:44:15'!
testBoundaryChecks

	| text lib |
	
	text := 'In olden times'.

	lib := KLibrary new.

	self assert: lib invariant.
	
	1 to: text size do:[:ii | lib insert: (text at:ii) after: ii.  ].
	
	self assert: lib text = (Character newDocument asString, text, Character newDocument asString).
	
	self assert: lib invariant.

	self assert: (lib isIndexLessThanEnd: 15) = true.
	
	self assert: (lib isIndexLessThanEnd: 16) = false.
	
	self assert:(lib charIndexToIterator: 16) = lib end.
	
	
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 14:44:10'!
testEmpty

	| lib bb ee pp |
	
	lib := KLibrary new.

	self assert: lib invariant.
		
	bb := lib begin.
	
	ee := lib end.
	
	self assert: bb ~= ee.
	
	pp := lib charIndexToIterator: 1.
	
	self assert: pp = bb.
	
	lib insert: $a after: 1.
	
	lib eraseFrom: 2 to: 3.
	
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 14:54:58'!
testEraseBetweenParagraphs

	| t1 t2 text index lib |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	index := 1.
	
	t2 do:[:each | lib insert:each after: index. index := index + 1.  ].

	index := 1.
	
	t1 do:[:each | lib insert:each after: index. index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = (Character newDocument asString, text, Character newDocument asString).
	
	self assert: lib invariant.
	
	" erase in the same paragraph "
	
	lib eraseFrom: 13 to: 57.
	
	self assert: lib text = (Character newDocument asString,  (text copyFrom: 1 to:11), (text copyFrom: 56 to: text size), Character newDocument asString).
	
	self assert: lib invariant.
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 14:57:13'!
testEraseInParagraph

	| t1 t2 text index lib |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	index := 1.
	
	t2 do:[:each | lib insert:each after: index. index := index + 1.  ].

	index := 1.
	
	t1 do:[:each | lib insert:each after: index. index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = (Character newDocument asString, text, Character newDocument asString).
	
	" erase in the same paragraph "
	
	lib eraseFrom: 19 to: 82.
	
	self assert: lib text = ( Character newDocument asString,  (text copyFrom: 1 to:17), (text copyFrom: 81 to: text size) , Character newDocument asString ).
	
	self assert: lib invariant.
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 14:22:03'!
testInsert

	| text lib |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.

	self assert: lib invariant.
	
	1 to: text size do:[:ii | lib insert: (text at:ii) after: ii.  ].
	
	self assert: lib text = (Character newDocument asString, text, Character newDocument asString).
	
	self assert: lib invariant.
	
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 14:36:31'!
testInsertBreaks

	| t1 t2 index lib |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 1.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 1.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1. ]. 
	
	self assert: lib text = (Character newDocument asString, t1,t2, Character newDocument asString).
	
	self assert: lib invariant.
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/11/2025 14:21:38'!
testIterators

	| t1 t2 text index lib bb ee |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 1.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 1.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = (Character newDocument asString, text, Character newDocument asString).
	
	self assert: lib invariant.

	bb := lib begin.
	
	ee := lib end.
	
	self assert: (lib iteratorToCharIndex:ee) = (text size + 2). "because we count the first and last document breaks"
	
	index := 1.
	
	bb next.
	
	[bb ~= ee]
		whileTrue:[
			self assert: (bb char = (text at: index)).
			self assert: (lib iteratorToCharIndex:bb) = (index + 1).
			bb next.
			index := index + 1 ].
	
	bb := lib begin.
	
	bb next.
	
	index := text size + 1.
	
	[ee ~= bb] 
		whileTrue:[
			ee prev.
			index := index - 1.
			self assert: (ee char = (text at: index )) ].
	
	1 to: text size do:[:each | 
		bb := lib charIndexToIterator: each + 1.
		self assert: bb char = (text at:each) ].
	
! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 16:52:55'!
testKaeruEditorSerialize

	| dump aKaeruEditor aReadStream |
	
	dump :=  {$3 . $2 . Character space . $w . $i . $d . $e . Character space . $2 . Character space . $2 . Character space . Character escape . Character escape . Character space . $1 . Character space . $1 . Character space . Character smalltalkLeftArrow . Character space . $1 . $0 . $6 . Character space . $6 . Character space . $[ . $l . $e . $f . $t . $M . $a . $r . $g . $i . $n . $: . $6 . Character space . $r . $i . $g . $h . $t . $M . $a . $r . $g . $i . $n . $: . $7 . $2 . Character space . $i . $n . $d . $e . $n . $t . $: . $0 . Character space . $l . $i . $n . $e . $H . $e . $i . $g . $h . $t . $: . $2 . Character space . $t . $a . $b . $S . $t . $o . $p . $s . $: . $[ . $1 . $1 . Character space . $1 . $6 . Character space . $2 . $1 . Character space . $2 . $6 . Character space . $3 . $1 . Character space . $3 . $6 . Character space . $4 . $1 . Character space . $4 . $6 . Character space . $5 . $1 . Character space . $5 . $6 . Character space . $6 . $1 . Character space . $6 . $6 . Character space . $7 . $1 . $] . $] . Character escape . $1 . Character space . Character smalltalkLeftArrow . Character escape . Character escape . Character escape . $2 . Character space . $1 . $2 . $3 . Character cr . Character escape . Character escape . Character escape . $6 . Character space . $4 . $5 . $6 . Character newPage . Character escape . Character escape . Character escape . $1 . $0 . Character space . $a . $b . $c . Character space . $d . $e . $f . Character smalltalkLeftArrow . Character escape . Character escape . Character escape . $1 . $8 . Character space . $q . $w . $e . $r . $t . $y . Character space . $1 . $9 . $4 . $8 . Character cr . Character escape . Character escape . Character escape . $3 . $0 . Character space . $b . $y . $e . Character smalltalkLeftArrow . Character escape . Character escape . Character escape} .
	
	aKaeruEditor := KaeruEditor new.
	
	aReadStream := ReadStream on: dump.
	
	aKaeruEditor serializeFrom: aReadStream.
	
	self assert: true.
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 16:32:30'!
testLibrarySerialize

	| aKLibrary dump text aReadStream |

	dump :=   {$1 . $0 . $6 . Character space . $6 . Character space . $[ . $l . $e . $f . $t . $M . $a . $r . $g . $i . $n . $: . $6 . Character space . $r . $i . $g . $h . $t . $M . $a . $r . $g . $i . $n . $: . $7 . $2 . Character space . $i . $n . $d . $e . $n . $t . $: . $0 . Character space . $l . $i . $n . $e . $H . $e . $i . $g . $h . $t . $: . $2 . Character space . $t . $a . $b . $S . $t . $o . $p . $s . $: . $[ . $1 . $1 . Character space . $1 . $6 . Character space . $2 . $1 . Character space . $2 . $6 . Character space . $3 . $1 . Character space . $3 . $6 . Character space . $4 . $1 . Character space . $4 . $6 . Character space . $5 . $1 . Character space . $5 . $6 . Character space . $6 . $1 . Character space . $6 . $6 . Character space . $7 . $1 . $] . $] . Character escape . $1 . Character space . Character smalltalkLeftArrow . Character escape . Character escape . Character escape . $2 . Character space . $1 . $2 . $3 . Character cr . Character escape . Character escape . Character escape . $6 . Character space . $4 . $5 . $6 . Character newPage . Character escape . Character escape . Character escape . $1 . $0 . Character space . $a . $b . $c . Character space . $d . $e . $f . Character smalltalkLeftArrow . Character escape . Character escape . Character escape . $1 . $8 . Character space . $q . $w . $e . $r . $t . $y . Character space . $1 . $9 . $4 . $8 . Character cr . Character escape . Character escape . Character escape . $3 . $0 . Character space . $b . $y . $e . Character smalltalkLeftArrow . Character escape . Character escape . Character escape} . .

	aReadStream := ReadStream on: dump.
	
	aKLibrary := KLibrary new.
	
	aKLibrary serializeFrom: aReadStream.
	
	text :=  {Character smalltalkLeftArrow . $1 . $2 . $3 . Character cr . $4 . $5 . $6 . Character newPage . $a . $b . $c . Character space . $d . $e . $f . Character smalltalkLeftArrow . $q . $w . $e . $r . $t . $y . Character space . $1 . $9 . $4 . $8 . Character cr . $b . $y . $e . Character smalltalkLeftArrow} .
	
	self assert: aKLibrary text asArray = text
	

! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/14/2025 16:25:46'!
testParagraphSerializeFrom

	| aParagraph aReadStream aString defaultParagraphAttributes |
	
	aString :=  { $1 . Character space . Character smalltalkLeftArrow . Character escape . Character escape . Character escape .  $2 . Character space . $T . $h . $e . Character space . $f . $i . $r . $s . $t . Character space . $b . $o . $o . $k . Character cr . Character escape . Character escape . Character escape . $3 . Character space . $o . $n . $c . $e . Character space . $u . $p . $o . $n . Character space . $a . Character space . $t . $i . $m . $e . Character space . $i . $n . Character space . $a . Character space . $p . $a . $r . $a . $g . $r . $a . $p . $h . Character space . $f . $a . $r . Character space . $f . $a . $r . Character space . $a . $w . $a . $y . Character newPage . Character escape . Character escape . Character escape . $6 . Character space . $a . Character space . $s . $e . $c . $o . $n . $d . Character space . $p . $a . $g . $e . Character space . $h . $a . $p . $p . $e . $n . $e . $d . $. . Character smalltalkLeftArrow . Character escape . Character escape . Character escape . $1 . Character space . $T . $h . $e . Character space . $s . $e . $c . $o . $n . $d . Character space . $b . $o . $o . $k . Character cr . Character escape . Character escape . Character escape . $4 . Character space . $s . $o . $m . $e . Character space . $p . $a . $r . $a . $g . $r . $a . $p . $h . Character cr . Character escape . Character escape . Character escape . $1 . Character space . $t . $h . $e . Character space . $n . $e . $x . $t . Character space . $p . $a . $r . $a . $g . $r . $a . $p . $h . Character cr . Character escape . Character escape . Character escape . $5 . Character space . $t . $h . $e . Character space . $t . $h . $i . $r . $d . Character space . $p . $a . $r . $a . $g . $r . $a . $p . $h . Character space . $w . $i . $t . $h . Character space . $s . $o . $m . $e . Character space . $b . $o . $l . $d . Character space . $t . $e . $x . $t . Character space . $i . $n . Character space . $i . $t . Character smalltalkLeftArrow . Character escape . Character escape . $[ . $b . $o . $l . $d . $: . $[ . $[ . $5 . Character space . $1 . $0 . $] . $] . $] . Character escape . $1 . $2 . Character space . $T . $h . $e . Character space . $t . $h . $i . $r . $d . Character space . $b . $o . $o . $k . Character cr . Character escape . Character escape . Character escape . $2 . $1 . Character space . $w . $i . $t . $h . Character space . $a . Character space . $s . $i . $n . $g . $l . $e . Character space . $p . $a . $r . $a . $g . $r . $a . $p . $h . Character smalltalkLeftArrow . Character escape . Character escape . Character escape}   .

	defaultParagraphAttributes := KParagraphAttributes new.
	
	defaultParagraphAttributes 
		leftMargin: 6; 
		rightMargin: 72;
		indent: 0;
		lineHeight: 2; " in half line units "
		tabStops: (11 to: 72 by:5 :: asArray).

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.
	
	aReadStream := ReadStream on: aString.
	
	aParagraph serializeFrom: aReadStream.
	
	aReadStream next.

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.

	aParagraph serializeFrom: aReadStream.
	
	self assert: aParagraph text = ('The first book', Character cr asString).
	aReadStream next.

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.

	aParagraph serializeFrom: aReadStream.

	self assert: aParagraph text = ('once upon a time in a paragraph far far away', Character newPage asString).

	aReadStream next.

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.

	aParagraph serializeFrom: aReadStream.

	self assert: aParagraph text = ('a second page happened.', Character newDocument asString).

	aReadStream next.

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.

	aParagraph serializeFrom: aReadStream.

	self assert: aParagraph text = ('The second book', Character cr asString).

	aReadStream next.

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.

	aParagraph serializeFrom: aReadStream.

	self assert: aParagraph text = ('some paragraph', Character cr asString).

	aReadStream next.

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.

	aParagraph serializeFrom: aReadStream.

	self assert: aParagraph text = ('the next paragraph', Character cr asString).

	aReadStream next.

	aParagraph := KParagraph new.

	aParagraph attributes: defaultParagraphAttributes.

	aParagraph serializeFrom: aReadStream.

	self assert: aParagraph text = ('the third paragraph with some bold text in it', Character newDocument asString).

	self assert: true
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 15:05:34'!
testRegex

	| t1 t2 text index lib aKStream aMatcher |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 1.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 1.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = (Character newDocument asString, text, Character newDocument asString)..
	
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
	
	aKStream := KBackwardStream on: lib end prev.
	
	aMatcher := RxMatcher forString: '.*', 'himself' reverse.
	
	self assert: (aMatcher matchesStreamPrefix: aKStream).
	
	self assert: aKStream position char = Character space.
	self assert: aKStream position next char = $h.
	self assert: aKStream position next next char = $i.
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/11/2025 14:22:14'!
testSearch

	| t1 t2 text index lib pos |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 1.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 1.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text = (Character newDocument asString, text, Character newDocument asString).
	
	self assert: lib invariant.
	
	pos := lib searchFrom: lib begin forwardFor: 'e'.
	
	self assert: (lib iteratorToCharIndex:pos) = 8.

	pos := lib searchFrom: pos backwardFor: 's'.
	
	self assert: (lib iteratorToCharIndex:pos) = 625.

	pos := lib searchFrom: lib begin forwardFor: 'himself'.
	
	self assert: pos char = $h.
	self assert: pos next char = $i.
	self assert: pos next char = $m.

	pos := lib searchFrom: lib begin forwardFor: 'play.'.

	self assert: pos char = $p.
	self assert: pos next char = $l.
	self assert: pos next char = $a.
		
	pos := lib searchFrom: lib end prev backwardFor: 'himself'.

	self assert: pos char = $h.
	self assert: pos next char = $i.
	self assert: pos next char = $m.

	pos := lib searchFrom: pos backwardFor: 'In olden'.

	self assert: pos char = $I.
	self assert: pos next char = $n.
	self assert: pos next char = Character space.
	! !

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 10/9/2025 09:02:13'!
testStream

	| t1 t2 text index lib aKStream aStream |
	
	t1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	t2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain.', (Character codePoint:12) asString, 'When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	lib := KLibrary new.
	
	self assert: lib invariant.
	
	index := 1.
	
	t2 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1.  ].

	index := 1.
	
	t1 do:[:each | 
		lib insert:each after: index. 
		self assert: lib invariant.
		index := index + 1 ]. 
	
	text := t1,t2.
	
	self assert: lib text =  (Character newDocument asString, text, Character newDocument asString).
	
	self assert: lib invariant.

	aKStream := KForwardStream on: lib begin.
	
	aKStream next.
	
	aStream := ReadStream on: text.
	
	[aStream atEnd]
		whileFalse:[ | cc kc |
			cc := aStream next.
			kc := aKStream next.
			self assert: cc = kc.
			cc := aStream peek.
			kc := aKStream peek.
			self assert: (cc isNil or:[cc = kc]).
			 ].
		
	self assert: aStream atEnd.

	aKStream := KBackwardStream on: lib end prev. "move back one character before the last document break character, this positions the stream on the last character in the text"
	
	index := text size+1.
	
	[index > 1]
		whileTrue:[ | cc |
			cc := aKStream next.
			self assert: cc = (text at:index - 1).
			index := index - 1].
	
	self assert: index = 1.

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

!TestScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 21:51:55'!
testArray

	| anArray aReadStream |
	
	aReadStream := ReadStream on: '  [  1 2 [ 3 4 ] 5 ]'.
	
	anArray := Array serializeFrom: aReadStream.
	
	self assert: (anArray at:1) = 1.	
	
	self assert: (anArray at:2) = 2.	
	
	self assert: (anArray at:3) = { 3 .  4}.	
	
	self assert: (anArray at:4) = 5.	
! !

!TestScanner methodsFor: 'as yet unclassified' stamp: 'DF 10/7/2025 21:44:13'!
testDictionary

	| aDictionary aReadStream |
	
	aReadStream := ReadStream on: '  [  abc : 12    x:15 y: [1 2 16 21 ] z  :17 ]'.
	
	aDictionary := Dictionary serializeFrom: aReadStream.
	
	self assert: (aDictionary at: #abc ) = 12.
	
	self assert: (aDictionary at: #x ) = 15.
	
	self assert: (aDictionary at: #y ) = { 1 . 2 . 16 . 21 } .
	
	self assert: (aDictionary at: #z) = 17.
	
! !

!Array methodsFor: '*Kaeru-printing' stamp: 'DF 10/7/2025 17:20:14'!
printAsNakedList: aStream
	self do: [:each| each printAsLiteralOn: aStream] separatedBy: [aStream space].
! !

!Array methodsFor: '*Kaeru-printing' stamp: 'DF 10/7/2025 19:38:55'!
serializeOn: aStream

	aStream nextPut: $[.
		
	self do: [:each| each serializeOn: aStream] separatedBy: [aStream space].
	
	aStream nextPut: $].
! !

!Array class methodsFor: '*Kaeru-serializing' stamp: 'DF 10/7/2025 21:53:38'!
serializeFrom: aReadStream

	| anOrderedCollection aScanner |
	
	anOrderedCollection := OrderedCollection new.
	
	aScanner := SimpleScanner on: aReadStream.
	
	aScanner skipWhiteSpace; eat: $[ ; skipWhiteSpace.

	[ aScanner notAtEnd and: [ aScanner head ~= $] ] ]
		whileTrue:[ | value |
			
			value := aScanner head =$[
				ifTrue:[
					Array serializeFrom: aReadStream ]
				ifFalse:[
					aScanner nextInteger ].
				
			aScanner skipWhiteSpace.
	
			anOrderedCollection add: value ].
	
	aScanner eat: $] ; skipWhiteSpace.

	^anOrderedCollection asArray! !

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

!Dictionary methodsFor: '*Kaeru-printing' stamp: 'DF 10/7/2025 22:35:38'!
serializeOn: aWriteStream

	aWriteStream nextPut: $[.
		
	self associations do: [:assoc | | key value |
		
		key := assoc key. 
		
		value := assoc value.
		
		aWriteStream nextPutAll: key ; nextPut: $:.
		
		value serializeOn: aWriteStream  ]
	
	separatedBy: [
		
		aWriteStream nextPut: Character space ].
	
	aWriteStream nextPut: $].
	
	
	! !

!Dictionary class methodsFor: '*Kaeru-serializing' stamp: 'DF 10/17/2025 20:09:37'!
serializeFrom: aReadStream

	| aDictionary aScanner |
	
	aDictionary := Dictionary new.
	
	aScanner := SimpleScanner on: aReadStream.
	
	aScanner skipWhiteSpace; eat: $[ ; skipWhiteSpace.
	
	[ aScanner notAtEnd and: [ aScanner head ~= $] ] ]
		whileTrue:[ | key value |
			
			key := aScanner nextWord.
			
			aScanner skipWhiteSpace; eat: $: ; skipWhiteSpace.
			
			value := aScanner head =$[
				ifTrue:[
					Array serializeFrom: aReadStream ]
				ifFalse:[
					aScanner nextInteger ].
			
			aScanner skipWhiteSpace.
			
			aDictionary at: key asSymbol put: value ].
		
	aScanner eat: $].
		
	^ aDictionary
	! !

!Integer methodsFor: '*Kaeru-printing' stamp: 'DF 10/7/2025 19:35:13'!
serializeOn: aWriteStream
	
		self printOn: aWriteStream! !

!Character methodsFor: '*Kaeru-testing' stamp: 'Df 9/23/2025 13:49:58'!
isKDocSeparator
	^self = Character newDocument ! !

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

!Character class methodsFor: '*Kaeru-accessing untypeable characters' stamp: 'Df 9/23/2025 11:46:07'!
newDocument

	^`Character codePoint: 28` "ASCII File separator"! !
KaeruPrinter initialize!
KaeruEditorMorph initialize!
FrogAnimation initialize!
Kaeru initialize!
