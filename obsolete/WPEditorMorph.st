'From Cuis7.3 [latest update: #7041] on 11 July 2025 at 6:46:34 pm'!
!classDefinition: #WPEditorMorph category: #Frog!
ColoredBoxMorph subclass: #WPEditorMorph
	instanceVariableNames: 'font machine dy wbegin wsize showCursor textCursorRect dx cursorColor leapLeftDown leapRightDown leapAgainDown state match rulerCursorRect mapper pageNumberFont pageWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrogEditor'!

!WPEditorMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 18:51:34'!
onBlinkCursor
	
	"Blink the cursor"
	
	showCursor := showCursor not.
	
	textCursorRect ifNotNil:[:r | self invalidateLocalRect: r].
! !

!WPEditorMorph methodsFor: 'blinking' stamp: 'DF 5/16/2025 17:35:36'!
startBlinking
	
	showCursor := true.
	
	self startStepping: #onBlinkCursor stepTime: 500.
	! !

!WPEditorMorph methodsFor: 'blinking' stamp: 'DF 5/11/2025 17:20:55'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	
	"Hide cursor right now if needed"
	showCursor ifTrue: [
		showCursor := false.
		textCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]]! !


!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/31/2025 15:07:32'!
drawCursorOn: aCanvas

	| xcursor ycursor |
	
	ycursor := dy * (wbegin distanceFrom: machine cursor line).
	
	"A line that begins a page occupies two lines, its text is in the bottom line "
	
	machine cursor line ppage notNil
		ifTrue:[
			ycursor := ycursor + dy].
		
	xcursor := dx * (machine cursor index) - dx + (dx * machine leftMargin).
	
	textCursorRect := xcursor@ycursor extent: dx@dy.

	aCanvas fillRectangle: textCursorRect  color: cursorColor.
	
! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/26/2025 14:14:22'!
drawOn: aCanvas

	[ | selection yy we |
		
	self assert: machine notNil.
	
	super drawOn: aCanvas.

	we := self wend atPastEnd.
	
	selection := ((wbegin at:1) to: we) intersect: machine selection.
	
	selection isEmpty
		ifTrue:[
			^self drawOn:aCanvas textFrom: (wbegin at:1) to: we atHeight:0 highlight: false color: Color black].
	
	yy := self drawOn: aCanvas textFrom: (wbegin at:1) to: selection begin atHeight: 0 highlight: false color: Color black.
	
	selection end = we
		ifTrue:[ 
			self drawOn: aCanvas textFrom: selection begin to: selection end atHeight: yy highlight: true color: Color white ]
		ifFalse:[ 
			yy := self drawOn: aCanvas textFrom: selection begin to: selection end incrementIndex atHeight: yy highlight: true color: Color white.
			self drawOn: aCanvas textFrom: selection end forward to: self wend atPastEnd atHeight: yy highlight: false color: Color black ].

	showCursor 
		ifTrue:[self drawCursorOn: aCanvas ].	
	
	]
	on: AssertionFailure do:[:ex | self drawingFails. self halt.].
	! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 6/2/2025 13:39:38'!
drawOn: aCanvas at: aNumberHeight color: aColor highlight: aBoolean from: anAddressB to: anAddressE 

	| yy |
	
	self assert: anAddressB line == anAddressE line.
	
	yy := anAddressB line ppage notNil
			ifTrue:[aNumberHeight + dy]
			ifFalse:[aNumberHeight].
			
	aBoolean
		ifTrue:[ | xb |
			xb := dx * (anAddressB index - 1) + (dx * machine leftMargin).
			aCanvas fillRectangle: (xb @ yy extent: (dx * (anAddressE index - anAddressB index)) @ dy) color: Color black].
		
	aCanvas drawString: (anAddressB line text copyFrom: anAddressB index to: anAddressE index - 1) at: dx * (anAddressB index - 1) + (dx * machine leftMargin) @ yy font: font color: aColor.

	anAddressB line endsWithPageSeparator 
		ifTrue:[
			aCanvas drawString: (Character codePoint:182) asString at:dx * (anAddressB line text size - 1) + (dx * machine leftMargin) @ yy font: font color: aColor ].

	anAddressB line ppage notNil 
		ifTrue:[ 
			self drawOn: aCanvas page: anAddressB line ppage breakAt: aNumberHeight. ].
	
	^  anAddressE index >= anAddressE line text size
		ifTrue:[yy + dy]
		ifFalse:[aNumberHeight]
		
		
! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/27/2025 14:53:33'!
drawOn: aCanvas page: aPage breakAt: aNumberHeight

	| hh |
	
	hh := aNumberHeight + (0.25*dy).
	aCanvas fillRectangle: (0@hh extent: self morphWidth @ (dy / 2.0)) color: (Color fromHexString:'#BBBBBB').
	
	aCanvas drawString: ('{1}' format:{aPage pageNumber}) atCenterX: (self morphWidth / 2.0 @ hh) font: pageNumberFont color: Color black.
! !

!WPEditorMorph methodsFor: 'drawing' stamp: 'DF 5/26/2025 09:20:59'!
drawOn: aCanvas textFrom: addrB to: addrE atHeight: hh highlight: aBoolean color: aColor

	| yy addr zz |

	addr := addrB.
	yy := hh.
	
	[ addr line ~= addrE line ] whileTrue:[
		
		yy := self drawOn: aCanvas at: yy color: aColor highlight: aBoolean from: addr to: addr pastEndOfLine.		
		addr := addr nextLine ].

	" draw the text for the last line but keep the height at the last line unless the last line is full. "

	zz :=  self drawOn: aCanvas at: yy color: aColor highlight: aBoolean from: addr to: addrE.
	
	^ addrE isIndexPastEndOfLine 
		ifTrue:[
			addrE isPastLast 
				ifTrue:[yy]
				ifFalse:[zz] ]
		ifFalse:[yy]
! !


!WPEditorMorph methodsFor: 'initialization' stamp: 'DF 5/31/2025 15:09:18'!
initialize

	super initialize. 
	
	mapper := FrogKeyboardMapper instance.
	
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


!WPEditorMorph methodsFor: 'events' stamp: 'DF 5/31/2025 12:32:11'!
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
					machine creepRight]
				ifFalse:[
					leapLeftDown
						ifTrue:[
							machine creepLeft] ].
			self leap. 
			self scrollToCursor ].
	
	state = #editing and: [ leapRightDown or: [ leapLeftDown ] ] ::
		ifTrue:[
			state := #init].
	
	"Transcript show: ('key: down. state: {1}. code: {5} . leap again: {2}. leap left:{3} . leap right:{4} ' format:{ state . leapAgainDown . leapLeftDown . leapRightDown . aMorphicEvent keyValue }); cr."

! !

!WPEditorMorph methodsFor: 'events' stamp: 'DF 6/2/2025 17:29:45'!
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
					machine insert: String crString].
			mapper isPageBreakKey: aKeyboardEvent ::
				ifTrue:[
					machine insert: (String with: Character newPage) ].
			mapper isEraseKey: aKeyboardEvent ::
				ifTrue:[
					self erase]
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
			
	state = #building and:[keyv < 128] and:[match] ::
		ifTrue:[
			machine patternPut: keyv.
			match := self leap.
			match 
				ifFalse:[
					machine popCursor ]	].
	
	self scrollToCursor.
	
	self removeAlarm: #autoSave.
	
	self addAlarm: #autoSave after: 3*60*1000. "3 min. in millisec"
! !

!WPEditorMorph methodsFor: 'events' stamp: 'DF 5/31/2025 12:32:56'!
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

!WPEditorMorph methodsFor: 'events' stamp: 'DF 6/5/2025 18:55:06'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	self activeHand newKeyboardFocus: self! !

!WPEditorMorph methodsFor: 'events' stamp: 'DF 6/5/2025 18:55:17'!
mouseEnter: aMouseButtonEvent

	self activeHand newKeyboardFocus: self! !


!WPEditorMorph methodsFor: 'event handling testing' stamp: 'DF 5/11/2025 19:27:43'!
handlesKeyboard
	^true! !

!WPEditorMorph methodsFor: 'event handling testing' stamp: 'DF 5/12/2025 21:45:09'!
handlesMouseDown: aMouseButtonEvent
	^true! !

!WPEditorMorph methodsFor: 'event handling testing' stamp: 'DF 6/5/2025 18:54:45'!
handlesMouseOver:aMouseButtonEvent
	^true! !


!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 6/2/2025 18:55:03'!
autoSave

	Frog mutex critical:[
		Smalltalk saveImage.
	]! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 5/25/2025 22:57:23'!
erase

	| selection bb ee |
	
	" If the selection we are about to erase includes wbegin we must set wbegin to 
	the line immediately after the erased lines.
	"
	selection := machine selection.
	
	bb := selection begin line.
	ee := selection end line.
	
	[ bb ~= wbegin and: [bb ~= ee ] ] 
		whileTrue:[ bb := bb next ].
	
	machine erase.
	
	bb == wbegin
		ifTrue:[
			wbegin := machine cursor line ].
! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 6/2/2025 13:06:57'!
leap

	^leapLeftDown 
		ifTrue:[
			machine pattern first = Character newPage 
				ifTrue:[
					machine leapBackToPage ]
				ifFalse:[
					machine leapLeft] ]
		ifFalse:[
			leapRightDown
				ifTrue:[
					machine pattern first = Character newPage 
						ifTrue:[
							machine leapForwardToPage ]
						ifFalse:[
							machine leapRight] ]
				ifFalse:[
					self assert: false. "we must not leap when both alts are pressed" ] ].
			
	
! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 6/8/2025 23:47:32'!
machine: aWPMachine

	machine := aWPMachine.

	pageWidth := "80 - (machine leftMargin + machine rightMargin)." 8.
	
	machine width: pageWidth.
		
	wbegin := machine begin line.
	
	self scrollToCursor ! !

!WPEditorMorph methodsFor: 'as yet unclassified' stamp: 'DF 6/8/2025 23:29:15'!
wend

	| pp ii |
	
	pp := wbegin.
	
	ii := 0.
	
	[ii < wsize and:[pp next isSentinel not] ] whileTrue:[
		ii := ii + pp height.
		pp := pp next].
	
	^pp! !


!WPEditorMorph methodsFor: 'scrolling' stamp: 'DF 5/13/2025 15:53:46'!
scrollBackwardToCursor

	[ wbegin = machine cursor line ] whileFalse:[wbegin := wbegin prev ].
	
! !

!WPEditorMorph methodsFor: 'scrolling' stamp: 'DF 6/8/2025 23:30:05'!
scrollForwardToCursor

	| ii pp |
	
	pp := machine cursor line.
	
	ii := pp height - 1.
	

	[ pp prev isSentinel not and:[ii < wsize]  ] whileTrue:[pp := pp prev. ii := ii + pp height. ].
	
	" pp prev isNil and pp notNil and ii = distance[pp,line] and pp prev isNil or ii = wsize "
	
	" pp notNil and ii = distance[pp,line] and ii <= wsize "
	
	"pp notNil and distance[pp,line] <= wsize"
	
	wbegin := pp.! !

!WPEditorMorph methodsFor: 'scrolling' stamp: 'DF 6/9/2025 08:09:23'!
scrollToCursor

	"
	look for the cursor within the window, if found there is no need to scroll.
	
	"
	
	| pp ee |
	
	"if wbegin is a sentinel it means that the text was empty and an insert adds the first real line to the text."
	
	wbegin isSentinel ifTrue:[
		wbegin := machine firstLine ].
	
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

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'WPEditorMorph class' category: #Frog!
WPEditorMorph class
	instanceVariableNames: ''!

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 18:14:14'!
Erase
	^8! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:15'!
LeftAlt
	^152! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:51'!
LeftCtrl
	^222! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 19:10:02'!
NewLine
	^13! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 21:13:12'!
Page
	^12! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:26:31'!
RightAlt
	^136! !

!WPEditorMorph class methodsFor: 'as yet unclassified' stamp: 'DF 5/14/2025 16:27:02'!
RightCtrl
	^221! !
