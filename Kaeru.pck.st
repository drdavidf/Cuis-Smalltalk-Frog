'From Cuis7.5 [latest update: #7615] on 30 September 2025 at 10:07:36 pm'!
'Description '!
!provides: 'Kaeru' 1 892!
!requires: 'Regex-Core' 1 6 nil!
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
	instanceVariableNames: ''
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

!classDefinition: #KaeruKeyboardStateMachine category: #'Kaeru-Keyboard'!
Object subclass: #KaeruKeyboardStateMachine
	instanceVariableNames: 'leapLeft leapRight leapAgain mapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Keyboard'!
!classDefinition: 'KaeruKeyboardStateMachine class' category: #'Kaeru-Keyboard'!
KaeruKeyboardStateMachine class
	instanceVariableNames: ''!

!classDefinition: #KaeruPrinter category: #'Kaeru-Morphic'!
Object subclass: #KaeruPrinter
	instanceVariableNames: 'lineNumber pageNumber dx dy yy xx foreground background canvas font displayWidth pageNumberFont pageSize displayHeight numLines displayRect statusFont cursorRect rulerCursorRect cursorOffset separatorH attributes marginRegister'
	classVariableNames: 'IconForJustify IconForJustifySelected IconForLineSpace IconForLineSpaceSelected'
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruPrinter class' category: #'Kaeru-Morphic'!
KaeruPrinter class
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
	instanceVariableNames: 'paragraphs border pageSize defaultParagraphAttributes'
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
	instanceVariableNames: 'lines attributes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'KParagraph class' category: #'Kaeru-Text'!
KParagraph class
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
	instanceVariableNames: 'cursorState cursor selection text searchString leapRegister positionRegister searchSuccessfull showLeftMargin showRightMargin'
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
	instanceVariableNames: 'view lib active controller'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Morphic'!
!classDefinition: 'KaeruMasterMorph class' category: #'Kaeru-Morphic'!
KaeruMasterMorph class
	instanceVariableNames: ''!

!classDefinition: #KaeruEditorMorph category: #'Kaeru-Morphic'!
ColoredBoxMorph subclass: #KaeruEditorMorph
	instanceVariableNames: 'rulerFont window printer wc windowEnd editor showCursor'
	classVariableNames: 'IconForLineSpace IconForLineSpaceSelected'
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

!classDefinition: #ExhaustiveTestKLibrary category: #'Kaeru-Text'!
TestCase subclass: #ExhaustiveTestKLibrary
	instanceVariableNames: 'lib text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru-Text'!
!classDefinition: 'ExhaustiveTestKLibrary class' category: #'Kaeru-Text'!
ExhaustiveTestKLibrary class
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


!KLibrary commentStamp: '<historical>' prior: 0!
A KLibrary holds a collection of KDocuments

!

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

!KaeruController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 13:02:38'!
initialize

	keyboardMapper := LinuxKeyboardMapper new.
	
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

!KaeruEditorController methodsFor: 'initialization' stamp: 'Df 9/25/2025 17:21:56'!
initialize

	super initialize.
	
	state := #editingState.
	
	transitions := { 
		{ #editingState . #leapLeftDown } -> { #leapLeftState . [:editor | editor restartSearch ] }.
		{ #editingState . #leapRightDown } -> { #leapRightState . [:editor | editor restartSearch ] }.
		{ #editingState . #keyStroke } -> #editingState .
		
		{ #leapLeftState . #leapLeftUp } -> #editingState . 
		{ #leapLeftState . #leapRightDown } -> { #selectingStartState . [:editor | editor select ] }.
		{ #leapLeftState . #keyStroke } -> #leapLeftState . 

		{ #leapRightState . #leapRightUp } -> #editingState . 
		{ #leapRightState . #leapLeftDown } -> { #selectingStartState . [:editor | editor select] }.
		{ #leapRightState . #keyStroke } -> #leapRightState . 

		{ #selectingStartState . #leapLeftUp } -> #selectingInProgressState . 	
		{ #selectingStartState . #leapRightUp } -> #selectingInProgressState . 
		
		{ #selectingInProgressState . #leapLeftUp } -> #selectingReadyState.
		{ #selectingInProgressState . #leapRightUp } -> #selectingReadyState.
		
		{ #selectingReadyState . #leapLeftDown } -> #leapLeftSelectState.
		{ #selectingReadyState . #leapRightDown } -> #leapRightSelectState.
		{ #selectingReadyState . #keyStroke } -> #editingState.
		
		{ #leapLeftSelectState . #leapLeftUp } -> { #editingState . [:editor | editor collapseLeft ] } .
		{ #leapLeftSelectState . #leapRightDown } -> #selectingStartState.
		{ #leapLeftSelectState . #keyStroke } -> { #searchLeftSelectState . [:editor | editor restartSearch ] }.
		
		{ #leapRightSelectState . #leapRightUp } -> { #editingState . [:editor | editor collapseRight ] } .
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

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'Df 9/25/2025 15:26:25'!
keyStroke: aKeyboardEvent

	self doTransitionFor: #keyStroke.

	state = #editingState
		ifTrue:[
			self processEditing: aKeyboardEvent ].

	state = #leapLeftState or:[state = #searchLeftSelectState ] ::
		ifTrue:[
			self processLeapLeft: aKeyboardEvent ].
		
	state = #leapRightState or:[state = #searchRightSelectState ] ::
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

!KaeruEditorController methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:59:02'!
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

	aKeyboardEvent keyCharacter = $s and:[ useFront = #down] :: 
		ifTrue:[
			useFront := #up.
			controllerMaster activate: #sleep. viewMaster activate: #sleep. ^self ].

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

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 22:02:03'!
keyDown: aMorphicEvent
! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/7/2025 22:02:09'!
keyStroke: aKeyboardEvent

! !

!KaeruHelpController methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 13:04:38'!
keyUp: aMorphicEvent

	keyboardMapper isLeapAgainKeyUp: aMorphicEvent ::
		ifTrue:[
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

!KaeruPrinter methodsFor: 'address calculation' stamp: 'Df 9/23/2025 13:44:47'!
calculateCursorRectangles	 
	
	cursorRect := (xx+cursorOffset)@yy extent: (dx @ dy).

	rulerCursorRect := (xx + cursorOffset + (dx / 2)) @ (displayHeight + 1) extent: 4@12.
! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'Df 9/21/2025 10:37:58'!
computeDisplayArea

	displayRect := (0@(displayHeight - (dy * numLines)) corner: 1024 @ (displayHeight-1)) insetBy: ((1024 - displayWidth) / 2)@0.	
		
	
	! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'DF 9/29/2025 18:16:45'!
reset

	| leftMargin |
	
	leftMargin := attributes at: #leftMargin.

	xx := displayRect origin x + (leftMargin * dx).
	
	yy := displayRect origin y.	

	lineNumber := 0. 
	
	pageNumber := 1.
! !

!KaeruPrinter methodsFor: 'address calculation' stamp: 'DF 9/29/2025 18:11:40'!
skipToNewLine
	
	| hh lineSpace |

	lineSpace := attributes at: #lineHeight.
	
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

!KaeruPrinter methodsFor: 'address calculation' stamp: 'DF 9/29/2025 18:11:50'!
skipToSoftPage

	| lineSpace |
	
	lineSpace := attributes at: #lineHeight.

	^(lineSpace * dy / 2) + (0.5*dy).
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 9/29/2025 18:16:11'!
advanceToNewLine

	| rect hh lineSpace leftMargin |

	lineSpace := attributes at: #lineHeight.

	leftMargin := attributes at: #leftMargin.
	
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

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 9/30/2025 21:43:53'!
displayStatus

	| rulerY xl lineSpace | 

	lineSpace := attributes at: #lineHeight.

	rulerY := displayRect corner y + 1.

	canvas frameRectangle: (self leftMarginX @ rulerY corner: (self rightMarginX @ (rulerY + 30)) ) borderWidth: 1 color: Color white.

	
	" Draw the line number "
	
	canvas drawString: (lineNumber / 2 + 1 printStringBase: 10 length: 2 padded: false) at: dx * 5 @ (displayHeight + 33) font: statusFont color: Color white. 

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

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/21/2025 20:09:54'!
drawCursor

	| cursorColor | 
	
	cursorColor := Color fromHexString: '#AAAAAA'.

	cursorRect ifNotNil:[
		canvas fillRectangle: cursorRect  color: cursorColor].

	rulerCursorRect ifNotNil:[
		canvas fillRectangle: rulerCursorRect  color: Color white]. 

! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 9/29/2025 21:10:18'!
drawMargin
	
	| mx |
	
	mx := marginRegister * dx + displayRect origin x.
	
	canvas line: mx @ displayRect origin y to: mx @ displayRect corner y width:2 color: Color red.
	
	
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/17/2025 19:56:03'!
moveRight

	xx := xx + dx.! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/23/2025 17:00:32'!
newDocument
	
	separatorH := dy / 2.
	
	self advanceToNewLine; newPage.	
	
	pageNumber := 1.

! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 9/29/2025 18:11:22'!
newLine

	| lineSpace |
	
	lineSpace := attributes at: #lineHeight.

	self advanceToNewLine.
	
	lineNumber + lineSpace  < pageSize
		ifTrue:[
			lineNumber := lineNumber + lineSpace.
			]
		ifFalse:[
			separatorH := dy / 4. self newPage ].! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/23/2025 17:02:18'!
newPage

	yy + (dy/2) >= displayHeight
		ifTrue:[^self].
				
	canvas fillRectangle: (displayRect origin x @ yy extent: displayWidth @ separatorH) color: (Color fromHexString:'#BBBBBB').
	
	canvas drawString: ('{1}' format:{pageNumber}) atCenterX: (displayWidth / 2.0 @ (yy - (0.25*dy))) font: pageNumberFont color: Color black.
	
	yy := yy + (0.5*dy).

	pageNumber := pageNumber + 1.
	
	lineNumber := 0.	
! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/23/2025 17:00:00'!
newSoftPage

	separatorH := dy / 4.

	self advanceToNewLine; newPage.! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'Df 9/23/2025 13:36:00'!
offsetCursorBy: anInteger
	cursorOffset := anInteger * dx.! !

!KaeruPrinter methodsFor: 'printing commands' stamp: 'DF 9/29/2025 18:11:35'!
putChar: aCharacter
	
	| hh lineSpace |
	
	lineSpace := attributes at: #lineHeight.

	hh := (dy * lineSpace / 2) min: displayRect corner y - yy.
	
	"
	hh <= displayRect corner y - yy 
	
	yy + hh <= displayRect corner y 
	"
	
	canvas fillRectangle: (xx@yy extent: dx@hh) color: background.
	
	canvas drawString: aCharacter asString  at: xx@yy font: font color: foreground.
	
! !

!KaeruPrinter methodsFor: 'testing' stamp: 'Df 9/19/2025 10:07:18'!
isNotAtEnd

	^ yy  <= (dy * numLines)! !

!KaeruPrinter methodsFor: 'initialization' stamp: 'DF 9/29/2025 20:53:21'!
initialize

	pageNumberFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 10.	

	statusFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 12.

	font := FontFamily familyName: 'CMU Typewriter Text' pointSize: 14.
	
	dx :=  font widthOf:$M.
	
	dy := font lineSpacing.

	numLines := 18. "how many line units fit on the physical display"

	displayWidth := 80 * dx.

	displayHeight := 538.

	displayRect := (0@(displayHeight - (dy * numLines)) corner: 1024 @ (displayHeight-1)) insetBy: ((1024 - displayWidth) / 2)@0.	
	
	attributes := Dictionary new.
	
	attributes at: #lineSpace put: 2 " in half line units "
			; at: #leftMargin put: 6
			; at: #rightMargin put: 76
			; at: #indent put:0.
	
	xx := displayRect origin x + ((attributes at: #leftMargin) * dx).
	
	yy := displayRect origin y.	
	
	background := Color white.
	
	foreground := Color black.
	
	pageSize := 10. "in half line units"
	
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

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/18/2025 21:51:48'!
canvas: aCanvas

	canvas := aCanvas.! !

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

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:16:58'!
leftMargin: aNumber

	attributes at: #leftMargin put: aNumber! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:16:28'!
leftMarginOriginX

	| leftMargin |
	
	leftMargin := attributes at: #leftMargin.

	^ displayRect origin x + (leftMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:16:38'!
leftMarginX

	| leftMargin |
	
	leftMargin := attributes at: #leftMargin.

	^ displayRect origin x + (leftMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:14:01'!
lineSpace: anInteger
	attributes at: #lineHeight put: anInteger.! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/18/2025 22:14:02'!
numLines
	^numLines ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/21/2025 10:38:32'!
numLines: anInteger

	numLines := anInteger.
	
	self computeDisplayArea ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/19/2025 14:20:26'!
pageSize: anInteger

	self assert: anInteger > 0.
	
	pageSize := anInteger! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:14:57'!
rightMargin: anInteger

	attributes at: #rightMargin put: anInteger.
! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:17:46'!
rightMarginOriginX

	| rightMargin |
	
	rightMargin := attributes at: #rightMargin.

	^ displayRect origin x + (rightMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:17:54'!
rightMarginX

	| rightMargin |
	
	rightMargin := attributes at: #rightMargin.

	^ displayRect origin x + (rightMargin * dx)! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'Df 9/21/2025 20:03:50'!
rulerCursorRectangle
	^ rulerCursorRect ! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 20:56:29'!
setLeftMarginRegister

	marginRegister := attributes at:#leftMargin! !

!KaeruPrinter methodsFor: 'accessing' stamp: 'DF 9/29/2025 20:56:37'!
setRightMarginRegister

	marginRegister := attributes at:#rightMargin! !

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

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/12/2025 16:37:29'!
isAtStart
	
	^ parIndex = 1 and:[ lineIndex = 1] and:[ charIndex = 1]! !

!KForwardIterator methodsFor: 'testing' stamp: 'Df 9/24/2025 13:33:12'!
isBeforeStart
	
	^ parIndex = 1 and:[ lineIndex = 1] and:[ charIndex = 0]! !

!KForwardIterator methodsFor: 'testing' stamp: 'DF 9/28/2025 18:19:42'!
isPastEnd
	
	^ parIndex = (pars size + 1)! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:07'!
advance: anInteger

	anInteger timesRepeat: [self next].
	
	^self! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:11'!
attributes

	^ pars at: parIndex :: attributes! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:16'!
char

	^ pars at: parIndex :: lineAt: lineIndex :: charAt: charIndex! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/22/2025 16:15:54'!
globalIndex

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

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 17:35:13'!
line

	^ pars at: parIndex :: lineAt: lineIndex :: chars! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:53'!
next

	charIndex <  (pars at: parIndex :: lineAt: lineIndex :: length )
		ifTrue:[
			^self privNextChar ].
		
	lineIndex <  (pars at: parIndex :: numLines )
		ifTrue:[
			^self privNextLine ].
	
	self privNextPar! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 18:01:46'!
nextLine

	lineIndex <  (pars at: parIndex :: numLines )
		ifTrue:[
			charIndex := pars at: parIndex :: lineAt: lineIndex :: length.
			^self privNextLine ].
	
	charIndex :=  pars at: parIndex :: lineAt: lineIndex :: length.
	
	parIndex < pars size 
		ifTrue:[
			self privNextPar]! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'DF 9/29/2025 18:30:18'!
paragraph

	^ pars at: parIndex ! !

!KForwardIterator methodsFor: 'as yet unclassified' stamp: 'Df 9/12/2025 16:37:58'!
pars: anOrderedCollection

	pars := anOrderedCollection.
! !

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

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/23/2025 13:02:30'!
charIndexToIterator: anIndex

	| pi li iterator |
	
	pi := self charIndexToParIndex: anIndex.
	
	li := paragraphs isEmpty
			ifTrue:[ #(1 1) ]
			ifFalse:[				
				self assert: paragraphs size + 1 >= pi first.
				
				paragraphs size + 1 = pi first
					ifTrue:[ #(1 1) ]
					ifFalse:[						
						paragraphs at: pi first :: charIndexToLineIndex: pi second] ].
	
	iterator := KBidiIterator new.
	
	iterator pars: paragraphs ; privParIndex: pi first ; privLineIndex: li first ; privCharIndex: li second. 
	
	^iterator! !

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/24/2025 20:33:37'!
charIndexToLineIndex: aCharIndex

	" Answer the line index and line offset of the line that holds the character at aCharIndex.
	
	If aCharIndex is past the end of the text we answer a line index one past the last line in the text. 
	
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
		
	^parIndex > paragraphs size 
		ifTrue:[ { lineIndex . 1 } ]
		ifFalse:[
			" As we assume that aCharIndex refers to a character in the text, we may assume that
			parIndex <= paragraphs size and therefore paragraphs at: parIndex :: length > charIndex.
			Therefore we only need to find the line index that corresponds to charIndex in this paragraph"
	
			pp := paragraphs at: parIndex :: charIndexToLineIndex: charIndex.
	
			{ lineIndex + pp first . pp second } ]
	! !

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/21/2025 12:03:40'!
charIndexToParIndex: anIndex

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

!KLibrary methodsFor: 'addressing' stamp: 'Df 9/12/2025 16:35:55'!
end

	| anIterator |
	
	anIterator := KBidiIterator new.
	
	anIterator pars: paragraphs ; setAtEnd.
	
	^anIterator ! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 9/28/2025 14:34:06'!
insert: aCharacter after: anIndex

	self assert: anIndex > 0.
	
	self assert: anIndex < self end globalIndex.
	
	paragraphs isEmpty
		ifTrue:[
			paragraphs add: self newItem ].
		
	aCharacter isKLineSeparator 
		ifTrue:[
			self insertBreakCharacter: aCharacter after: anIndex]
		ifFalse:[
			self insertLetter: aCharacter after: anIndex]
		
	! !

!KLibrary methodsFor: 'inserting' stamp: 'DF 9/30/2025 21:25:11'!
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

!KLibrary methodsFor: 'initialization' stamp: 'DF 9/29/2025 18:08:23'!
initialize

	paragraphs := OrderedCollection new.
			
	pageSize := 110. " in half line units. 110 half lines, equals 55 lines "
	
	defaultParagraphAttributes := Dictionary new.
	
	defaultParagraphAttributes 
		at: #leftMargin put: 6; 
		at: #rightMargin put: 76;
		at: #indent put: 0;
		at: #lineHeight put: 2. " in half line units "
	
	paragraphs add: self newInitialItem ; add: self newInitialItem.
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

!KLibrary methodsFor: 'erasing' stamp: 'DF 9/30/2025 21:38:54'!
eraseFrom: aBeginIndex to: anEndIndex

	| beginPi endPi headText tailText par |
		
	self assert: aBeginIndex > 1.
	
	self assert: anEndIndex <= self end globalIndex.
	
	aBeginIndex = anEndIndex
		ifTrue:[
			^self].
		
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

		ifFalse:[ | origin | 
					
			origin := paragraphs at: beginPi first.
			
			paragraphs := paragraphs copyFrom:1 to: beginPi first - 1.
			
			headText isEmpty
				ifFalse:[ 
					
					par := KParagraph new.
					
					par attributes: origin attributes.
					
					par rebuildFromText: headText.
					paragraphs add: par ] ].
	
	
! !

!KLibrary methodsFor: 'testing' stamp: 'DF 9/28/2025 09:35:25'!
invariant

	self assert: paragraphs size >= 1.
	
	self assert: (paragraphs first lineAt:1 :: charAt:1 :: = Character newDocument).
	
	self assert: (paragraphs last lastLine lastCharacter = Character newDocument).
	
	paragraphs allButLastDo: [:each |
		self assert: each isLineBreaking ].
	
	^true! !

!KLibrary methodsFor: 'testing' stamp: 'DF 9/28/2025 18:57:28'!
isEmpty

	paragraphs size > 2 
		ifTrue:[^false].
	
	paragraphs last numLines > 1 
		ifTrue:[^false].
		
	^paragraphs last lastLine length = 1! !

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

!KLine methodsFor: 'inserting' stamp: 'Df 9/25/2025 15:18:34'!
buildFrom: aTokenStream limitBy: anIntegerWidth

	"build a line assuming that the token stream has no line separator or a single line separator at the end "
	
	| token aWriteStream count |

	aWriteStream := WriteStream on: ''.
	
	token := aTokenStream first.

	count := 0.
			
	[token notEmpty and: [ count + token size <= anIntegerWidth] ]
		whileTrue:[
			aWriteStream nextPutAll: token.
			count := count + token size.
			aTokenStream nextUpTo: anIntegerWidth.
			token := aTokenStream first ].
	
	" If the token stream is not empty and the last token is a single space add it to the line (even if this means
	that the line's length exceeds the limit) because we don't want the next line to start with a space character
	and the extra space at the end won't be visible on the display. "
	
	token size = 1 and: [ (token at:1) = Character space] :: 
		ifTrue:[
			aWriteStream nextPutAll: token.
			aTokenStream nextUpTo: anIntegerWidth ].
	
	chars := aWriteStream contents.! !

!KLine methodsFor: 'inserting' stamp: 'DF 9/28/2025 20:18:01'!
fastInsert: aCharacter after: anIndex

	chars := chars copyReplaceFrom: anIndex + 1 to: anIndex with: aCharacter asString.
	
	^true! !

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

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/16/2025 21:30:48'!
buildFrom: aTokenStream
	
	[aTokenStream first notEmpty ]
		whileTrue:[
			lines add: self newItem.
			lines last buildFrom: aTokenStream limitBy: self width ].
		
	! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 9/28/2025 20:19:27'!
fastInsert: aCharacter after: anIndex

	| lineIndex charIndex |
	
	lineIndex := 1. 
	charIndex := anIndex.
	
	[ (lines at: lineIndex :: length + 1) < charIndex ]
		whileTrue:[
			charIndex := charIndex - (lines at: lineIndex :: length).
			lineIndex := lineIndex + 1 ].

	^(lines at: lineIndex :: length) + 1 <= self width ::
		ifTrue:[
			lines at: lineIndex :: fastInsert: aCharacter after: charIndex]
		ifFalse:[
			false]
		! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 9/28/2025 20:15:36'!
insert: aCharacter after: anIndex

	"insert a character to the paragraph assuming that the character is not a line separator "
	
	| text  result |
	
	self assert: aCharacter isKLineSeparator not.
	
	result := self fastInsert: aCharacter after: anIndex.
	
	result 
		ifFalse:[
	 
			text := self text asOrderedCollection.
	
			text add: aCharacter afterIndex: anIndex.
		
			self rebuildFromText: text].! !

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

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/29/2025 17:27:36'!
attributes: aDictionary

	attributes := aDictionary 
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

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 16:57:45'!
charIndexToLineIndex: anIndex

	| ii pp |
	
	ii := anIndex. pp := 1.
	
	[ii > ((lines at:pp) length) ]
		whileTrue:[
			ii := ii - ((lines at:pp) length).
			pp := pp + 1].

	^ { pp . ii }! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/29/2025 18:08:54'!
indent: anInteger

	| text |
	
	attributes := attributes copy.
	
	attributes at: #indent put: anInteger.
	
	text := self text.
	
	self rebuildFromText: text.
	
	! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/28/2025 09:34:53'!
lastLine
	^lines last! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/29/2025 17:29:06'!
leftMargin: anInteger

	| text |
	
	attributes := attributes copy.
	
	attributes at: #leftMargin put: anInteger.
	
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

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/29/2025 17:30:03'!
lineHeight: anInteger

	attributes := attributes copy.
	
	attributes at: #lineHeight put: anInteger! !

!KParagraph methodsFor: 'accessing' stamp: 'Df 9/22/2025 16:16:24'!
lineIndexToCharIndex: anIntegerLineNumber

	| index |
	
	index := 0.
	
	1 to: anIntegerLineNumber - 1 do:[:ii | | line |
		line := lines at: ii.
		index := index + line length ].
	
	^index! !

!KParagraph methodsFor: 'accessing' stamp: 'Df 9/10/2025 19:22:34'!
lineNum
	^ lines size! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/18/2025 16:20:18'!
numLines
	^lines size! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/29/2025 17:29:40'!
rightMargin: anInteger

	| text |
	
	attributes := attributes copy.
	
	attributes at: #rightMargin put: anInteger.
		
	text := self text.
	
	self rebuildFromText: text.
	! !

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

!KParagraph methodsFor: 'accessing' stamp: 'DF 9/29/2025 17:28:05'!
width
	^ (attributes at:#rightMargin) - (attributes at:#leftMargin)! !

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

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/28/2025 18:33:18'!
creepBack

	cursor > 1
		ifTrue:[
			cursor := cursor - 1 ]
		ifFalse:[
			cursor := self end globalIndex ]! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/27/2025 16:00:47'!
creepForward

	cursor := cursor + 1.! !

!KaeruEditor methodsFor: 'editing' stamp: 'Df 9/23/2025 20:08:36'!
erase

	cursorState = #narrow
		ifTrue:[ 
			^self eraseNarrow].

	cursorState = #wide
		ifTrue:[ 
			^self eraseWide].
	
	cursorState = #extended
		ifTrue:[
			^self eraseSelection].! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/30/2025 22:01:08'!
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
			
			cursor = text end globalIndex
				ifTrue:[
					cursor := cursor - 1. 
					cursorState := #wide ]
				ifFalse:[
					text eraseFrom: cursor to: cursor + 1 ] ].
	self changed: #erase.! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/28/2025 19:05:03'!
eraseSelection

	self assert: selection first > 1.
	
	self assert: selection first <= selection last.
	
	self assert: selection last <= self end globalIndex.
	
	text eraseFrom: selection first to: selection last.
	
	cursor := selection first - 1.
	
	selection := selection last to: selection last.
	
	cursorState := text isEmpty 
		ifTrue:[#narrow]
		ifFalse:[#wide].
	
	self changed: #erase.! !

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/30/2025 22:05:27'!
eraseWide

	self assert: cursor > 0.
	self assert: cursor < self end globalIndex.
	
	cursor > 1 
		ifTrue:[
			text eraseFrom: cursor to: cursor + 1.
			cursor := cursor - 1].
		
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

!KaeruEditor methodsFor: 'editing' stamp: 'DF 9/30/2025 21:59:42'!
insert: aCharacter

	self assert: cursor > 0.
	self assert: cursor <= text end globalIndex.
	
	cursorState = #wide 
		ifTrue:[
			cursor < text end globalIndex
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
					text insert: aCharacter after: cursor ] ].
	
	cursorState := #wide.
	
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

!KaeruEditor methodsFor: 'testing' stamp: 'Df 9/24/2025 20:14:58'!
isCursorPastEnd

	| it |
	
	it := text charIndexToIterator: cursor.
	
	^ it = self end! !

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

!KaeruEditor methodsFor: 'initialization' stamp: 'DF 9/30/2025 22:03:46'!
initialize

	super initialize.
	
	cursor := 1.
	
	leapRegister := 1.
	
	selection := 2 to: 2.
	
	cursorState := #wide..
	
	showLeftMargin := false.
	
	showRightMargin := false.
	
	searchString := WriteStream on:''.! !

!KaeruEditor methodsFor: 'selection' stamp: 'DF 9/28/2025 19:06:01'!
collapseLeft

	cursor := selection first.

	selection := selection last to: selection last. " ensures that selection first > 1 "
	
	cursorState := #narrow.
	
	self changed: #cursor! !

!KaeruEditor methodsFor: 'selection' stamp: 'DF 9/28/2025 19:06:17'!
collapseRight

	cursor := selection last - 1.
	
	selection := selection last to: selection last.
	
	cursorState := #wide.
	
	self changed: #cursor! !

!KaeruEditor methodsFor: 'selection' stamp: 'DF 9/28/2025 19:40:07'!
select

	cursor = self end globalIndex
		ifTrue:[
			cursor := cursor - 1].	
		
	selection := ((leapRegister min: cursor) max:2) to: (leapRegister max: cursor) + 1.
	
	self assert: selection last <= self end globalIndex.
	
	cursor := selection last.
		
	cursorState := #extended.
	
	self changed: #cursor! !

!KaeruEditor methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 15:19:33'!
charIndexToIterator: anInteger
	^text charIndexToIterator: anInteger ! !

!KaeruEditor methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 15:24:55'!
charIndexToLineIndex: anInteger
	^text charIndexToLineIndex: anInteger ! !

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

!KaeruEditor methodsFor: 'searching' stamp: 'Df 9/25/2025 13:50:25'!
restartSearch.

	searchString reset.
	
	positionRegister := cursor.
	
	cursorState = #wide "we want to keep an extended cursor while searching, so only make a wide cursor narrow"
		ifTrue:[
			cursorState := #narrow].! !

!KaeruEditor methodsFor: 'searching' stamp: 'DF 9/28/2025 18:16:38'!
searchBack

	| cit it |

	cit := text charIndexToIterator: cursor.
	
	cit = text end next
		ifTrue:[cit prev].
		
	it := text searchFrom:  cit backwardFor: searchString contents.
	
	it isNil
		ifTrue:[
			cursor := positionRegister] 
		ifFalse:[
			leapRegister := positionRegister.
			cursor := it globalIndex ].
					
		self changed: #search
! !

!KaeruEditor methodsFor: 'searching' stamp: 'DF 9/28/2025 18:15:27'!
searchForward

	| bb it cit |

	self assert: cursor > 0.
		
	cit := text charIndexToIterator: cursor.
	
	bb := cit = text end next
		ifTrue:[text begin]
		ifFalse:[cit].
	
	it := text searchFrom: bb forwardFor: searchString contents.
	
	it isNil
		ifTrue:[
			cursor := positionRegister] 
		ifFalse:[
			leapRegister := positionRegister.
			cursor := it globalIndex ].
					
		self changed: #search
		! !

!KaeruEditor methodsFor: 'searching' stamp: 'Df 9/23/2025 17:27:59'!
searchFrom: it forwardFor: aString
	^ text searchFrom: it forwardFor: aString
! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 19:56:05'!
leftMargin

	"Anser the left margin of the paragraph in which the cursor is located  "
	
	| it par |
	
	it := text charIndexToIterator: cursor.
	
	par := it paragraph.
	
	^ par attributes at:#leftMargin.
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 19:55:55'!
rightMargin

	"Anser the right margin of the paragraph in which the cursor is located  "
	
	| it par |
	
	it := text charIndexToIterator: cursor.
	
	par := it paragraph.
	
	^ par attributes at:#rightMargin.
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 18:37:44'!
setLeftMargin: anInteger

	"Set the paragraph in which the cursor is located to anInteger, provided that anInteger is between 1 and
	rightMargin - 6 "
	
	| it par rightm |
	
	it := text charIndexToIterator: cursor.
	
	it = text begin
		ifTrue:[^self].
		
	it = text end
		ifTrue:[^self].
	
	anInteger <= 0
		ifTrue:[^self].

	par := it paragraph.
	
	rightm := par attributes at: #rightMargin.
	
	anInteger >= (rightm - 6)
		ifTrue:[^self].
		
	it paragraph leftMargin: anInteger.
	
	self changed: #margins
	! !

!KaeruEditor methodsFor: 'paragraph attributes' stamp: 'DF 9/29/2025 18:38:02'!
setRightMargin: anInteger

	"Set the right margin of the paragraph in which the cursor is located to anInteger, provided that anInteger is between leftMargin + 6 and 79 "
	
	| it par leftm |
	
	it := text charIndexToIterator: cursor.
	
	it = text begin
		ifTrue:[^self].
		
	it = text end
		ifTrue:[^self].
	
	anInteger >= 80
		ifTrue:[^self].

	par := it paragraph.
	
	leftm := par attributes at:#leftMargin.
	
	anInteger <= (leftm + 6)
		ifTrue:[^self].
		
	it paragraph rightMargin: anInteger.
	
	self changed: #margins
	! !

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

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:56:43'!
keyStroke: aKeyboardEvent

	controller keyStroke: aKeyboardEvent ! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:56:54'!
keyUp: aMorphicEvent

	controller keyUp: aMorphicEvent ! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:56:58'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self activeHand newKeyboardFocus: self! !

!KaeruMasterMorph methodsFor: 'event handling' stamp: 'Df 9/21/2025 12:57:02'!
mouseEnter: aMouseButtonEvent

	self activeHand newKeyboardFocus: self! !

!KaeruMasterMorph methodsFor: 'initialization' stamp: 'DF 9/29/2025 18:55:20'!
initialize

	| editor |
	
	super initialize.
	
	self morphExtent: 1024@600.
	
	active := #edit.
	
	view := Dictionary new.
	
	view at: #edit put: KaeruEditorMorph new.
	
	lib := KLibrary new.

	editor := KaeruEditor new.
	
	editor text: lib.
	
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

	controller at: #leftMargin putController: (KaeruLeftMarginController new viewMaster: self; model:editor; yourself). 
	controller at: #rightMargin putController: (KaeruRightMarginController new viewMaster: self; model:editor; yourself). 

	controller activate: #edit.	
	
	self activate: #edit.
	! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 12:53:32'!
activate: aSymbol

	view at: active :: hide.
	
	active := aSymbol.
	
	view at: active :: show.
! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/24/2025 12:45:14'!
model
	^ controller model! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2025 14:08:48'!
nullify

	view := nil.
	
	lib := nil.
	
	active := nil.
	
	controller := nil! !

!KaeruMasterMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/21/2025 20:14:27'!
start

	view at: #edit :: startBlinking.! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 9/29/2025 19:04:51'!
drawCursorOn: aCanvas

	printer canvas: aCanvas.

	printer drawCursor.
	
	! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 9/29/2025 20:53:55'!
drawMarginOn: aCanvas

	printer drawMargin.
	! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 9/29/2025 20:59:54'!
drawOn: aCanvas

	super drawOn: aCanvas.
	
	[
		self drawRulerOn: aCanvas ; drawTextOn: aCanvas.
				
		showCursor 
			ifTrue:[
				self drawCursorOn: aCanvas].
			
		editor showLeftMargin or: [editor showRightMargin] ::
			ifTrue:[  
				self drawMarginOn: aCanvas].
	
	]
	on: AssertionFailure do:[:ex | self drawingFails. self halt.].! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'Df 9/20/2025 17:35:23'!
drawRulerOn: aCanvas
	
	| xx yy textx dx |
	
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
	
! !

!KaeruEditorMorph methodsFor: 'drawing' stamp: 'DF 9/29/2025 20:57:28'!
drawTextOn: aCanvas

	" draw the text, highlight the selection, and show the cursor "
	
	| bb ee selectionB selectionE cit |
		
	printer canvas: aCanvas.	

	printer clearCanvas.
	
	printer offsetCursorBy: -1 ; calculateCursorRectangles. "This will ensure that the cursor is shown even if the text is empty. "
	
	selectionB := editor charIndexToIterator: editor selection first.

	selectionE := editor charIndexToIterator: editor selection last.

	cit := editor charIndexToIterator: editor cursor.

	bb := self advance: printer. "updates the printer's page and line number without changing its x and y registers"
	
	ee := editor end next. "so that we will draw the last document break that marks the end of text "
	
	[ printer isNotAtEnd and: [bb ~= ee] ] 
		whileTrue:[ | cc  |

			editor isExtended and: [bb = selectionB] ::
				ifTrue:[
					printer background: Color cyan ; foreground: Color red].
				
			editor isExtended and: [bb = selectionE] ::
				ifTrue:[
					printer background: Color white ; foreground: Color black].
					
			cc := bb char. 

			bb = cit 
				ifTrue:[
					printer background: Color black; foreground: Color white ; putChar: cc; background: Color white; foreground: Color black ] 
				ifFalse:[
					printer putChar: cc].
								
			bb = cit
				ifTrue:[ 
					editor isWide
						ifTrue:[
							printer offsetCursorBy:1]
						ifFalse:[
							printer offsetCursorBy:0].
					
					printer calculateCursorRectangles ; displayStatus.
					
					editor showLeftMargin
						ifTrue:[
							printer setLeftMarginRegister].

					editor showRightMargin
						ifTrue:[
							printer setRightMarginRegister] ].
			
			printer moveRight.
			
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
									printer newLine ] ] ].
				
			bb next ].
	
	printer isNotAtEnd and:[ee = cit] ::
		ifTrue:[
			"the cursor is past the end of the text but it is still visible on the display"
			printer calculateCursorRectangles].
		
	! !

!KaeruEditorMorph methodsFor: 'scrolling' stamp: 'Df 9/25/2025 16:17:47'!
scrollToCursor

	"Ensure that the window includes the cursor "
	
	| cline |
	
	self updateWindowEnd. 
	
	cline := editor charIndexToLineIndex: editor cursor :: first.
	
	cline < window		
		ifTrue:[
			window := cline.
			self updateWindowEnd. 
			^self redrawNeeded ].

	cline <= windowEnd
		ifTrue:[
			" cursor is within the window, no need to do anything"
			^self].
	
	" If the window is further than numLines from cline move it such that window + numLines = cline.
	
	However, the cursor may still not be visible because page boundaries and changes in line height
	may result in fewer lines fitting into the window. 
	
	Therefore after we set window to be at most numLines behind the cursor we begin incrementing
	the window by 1 and each time checking if the cursor is still after the last visible line. 
	"
		
	cline - window > printer numLines 
		ifTrue:[
			window := cline - printer numLines. self updateWindowEnd. ].
	
	[ cline >= windowEnd ]
		whileTrue:[
			window := window + 1.
			self updateWindowEnd. ].
	
	self redrawNeeded 		
		! !

!KaeruEditorMorph methodsFor: 'address calculation' stamp: 'DF 9/29/2025 18:14:06'!
advance: aKaeruPrinter

	" Move the line and page numbers of aKaeruPrinter to the line that corresponds to window "
	
	| bb ee line |
	
	bb := editor charIndexToIterator: 1.
	
	ee := editor end.
	
	line := 1.
	
	[ line < window and: [bb ~= ee] ] 
		whileTrue:[ | lineHeight |

			lineHeight := bb attributes at: #lineHeight.
			
			aKaeruPrinter lineSpace: lineHeight. 
			bb nextLine.
			
			line := line + 1.
			printer skipToNewLine. ].
		
	^bb
			! !

!KaeruEditorMorph methodsFor: 'address calculation' stamp: 'DF 9/29/2025 17:32:36'!
updateWindowEnd
	
	" Find the last line visible on the display, without actually drawing "
	
	| bb ee yy |
	
	printer reset.
	
	bb := self advance: printer.
	
	ee := editor end.
	
	windowEnd := window.
	
	yy := printer displayRect origin y.	
	
	[ yy < printer displayRect height and: [bb ~= ee] ] 
		whileTrue:[ | lineSpace cc hh |

			lineSpace := bb attributes at: #lineHeight.

			printer lineSpace: lineSpace.
			
			cc := bb line last.

			hh := cc isPageSeparator
				ifTrue:[
					printer skipToSoftPage]
				ifFalse:[						
					printer skipToNewLine ].
			
			bb nextLine.
			
			yy := yy + hh.
			
			yy < printer displayRect height
				ifTrue:[
					windowEnd := windowEnd + 1 ]. ].
			! !

!KaeruEditorMorph methodsFor: 'initialization' stamp: 'Df 9/23/2025 17:39:48'!
initialize
	
	super initialize .

	color := Color black.
	
	rulerFont := FontFamily familyName: 'CMU Typewriter Text' pointSize: 10.	
	
	self morphExtent: 1024@600.	

	printer := KaeruPrinter new.
	
	wc := (rulerFont widthOf: $8) / 2.	
		
	showCursor := false.! !

!KaeruEditorMorph methodsFor: 'accessing' stamp: 'Df 9/26/2025 14:34:57'!
model: aKaeruEditor

	editor := aKaeruEditor.
	
	editor isNil
		ifTrue:[^self].
	
	editor addDependent: self.
	
	window := 1. "line index of first line in the text window"
	
	printer pageSize: editor pageSize.
	
	self updateWindowEnd.! !

!KaeruEditorMorph methodsFor: 'updating' stamp: 'Df 9/25/2025 12:34:23'!
update: aSymbol

	aSymbol = #import
		ifTrue:[
			self updateWindowEnd ].
		
	self scrollToCursor ; redrawNeeded ! !

!KaeruEditorMorph methodsFor: 'cursor' stamp: 'Df 9/21/2025 20:04:17'!
invalidateCursorRectangles

	printer textCursorRectangle ifNotNil: [ :r | self invalidateLocalRect: r ].
	
	printer rulerCursorRectangle ifNotNil:[ :r | self invalidateLocalRect: r ].
	! !

!KaeruEditorMorph methodsFor: 'cursor' stamp: 'Df 9/21/2025 20:05:05'!
onBlinkCursor
	
	"Blink the cursor"
	
	showCursor := showCursor not.
	
	self invalidateCursorRectangles 
! !

!KaeruEditorMorph methodsFor: 'cursor' stamp: 'Df 9/23/2025 10:45:53'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: 1000.
	! !

!KaeruEditorMorph methodsFor: 'cursor' stamp: 'Df 9/21/2025 20:04:53'!
stopBlinking

	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		self invalidateCursorRectangles ]! !

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

!KaeruHelpMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/20/2025 22:43:06'!
drawOn: aCanvas

	super drawOn: aCanvas.
	
	printer canvas: aCanvas.
	
	printer clearCanvas.
	
	text do:[:each |
		
		each isLineSeparator 
			ifTrue:[
				printer newLine]
			ifFalse:[
			printer putChar: each;  moveRight ] ].
	! !

!KaeruHelpMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 18:21:56'!
initialize 

	super initialize.

	self morphExtent: 1024@600.	
	
	color := Color black.
	
	printer := KaeruPrinter new.
	
	printer leftMargin: 1; lineSpace: 2; pageSize: 40 ; displayHeight: 600 ; numLines: 21.
	
	text := 
'Kaeru Version 1.0
To type, just type. All typed text is inserted. Line endings and page endings 
     are automatic. Use [RETURN] to end paragraphs. [PAGE] forces a page to 
     end. [SHIFT]-[DOCUMENT] begins a new document. If you make a mistake, 
     press [ERASE] to backspace over it. The blinking cursor shows where text 
     will be inserted; the solid highlight accompanying the cursor shows what 
     [ERASE] will erase.
To move the cursor, hold down a LEAP key, type whatever you want to find -- 
     a character, a word or phrase -- let go of LEAP after cursor leaps. 
     After cursor movement, [ERASE] erases text to the right of the cursor. 
     [UNDO] can undo leaping, erasing and most commands.
To highlight some text you want to do something with (such as print or erase),
     leap from one end of it to the other, then press both LEAP keys. To
     unhighlight, press and release either LEAP key. To adjust the highlight, 
     tap either LEAP key repeatedly as needed, and press both LEAP keys again.
Commands do things to highlighted text. Labels on key fronts show other 
     commands. To use these, hold down [USE FRONT], and, while you hold it, 
     press command.
For more information: Hold [USE FRONT], press [EXPLAIN], and then the key you
     want to know about.'
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

!KaeruTitlesMorph methodsFor: 'as yet unclassified' stamp: 'Df 9/23/2025 18:21:49'!
initialize

	super initialize.

	self morphExtent: 1024@600.	
	
	color := Color black.
	
	printer := KaeruPrinter new.

	printer leftMargin: 1; lineSpace: 2; pageSize: 40 ; displayHeight: 600 ; numLines: 21.
	
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

!ExhaustiveTestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 17:13:16'!
testEverything

	| aGenerator iteration count maxErase countErase maxCount |

	self assert: lib text = (self wrap: text).

	self assert: lib invariant.
	
	iteration := 0. "keeps track of how many iterations the test did"
	
	count := 2. "the number of characters in the repository"
	
	maxErase := 1. "the largest subsequence that was erased so far"
	
	countErase := 1. "the number of characters that were erased and not inserted yet. This is used to ensure that after we erase k characters we insert k - 1 characters "
	
	maxCount := 2000. "the maximal number of characters in the repository during the test."
	
	self assert: count = (1 + text size + 1).
	
	aGenerator := Random new.

	8000 timesRepeat:[ | pp |  

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

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 15:07:00'!
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
	
	self assert: ee globalIndex = (text size + 2). "because we count the first and last document breaks"
	
	index := 1.
	
	bb next.
	
	[bb ~= ee]
		whileTrue:[
			self assert: (bb char = (text at: index)).
			self assert: bb globalIndex = (index + 1).
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

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 15:08:05'!
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
	
	self assert: pos globalIndex = 8.

	pos := lib searchFrom: pos backwardFor: 's'.
	
	self assert: pos globalIndex = 625.

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

!TestKLibrary methodsFor: 'as yet unclassified' stamp: 'DF 9/28/2025 18:28:52'!
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
			self assert: cc = kc.
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
FrogAnimation initialize!
