'From Cuis7.3 [latest update: #6895] on 21 July 2025 at 12:28:44 pm'!
'Description '!
!provides: 'Kaeru' 1 84!
SystemOrganization addCategory: #Kaeru!


!classDefinition: #KNode category: #Kaeru!
Object subclass: #KNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KNode class' category: #Kaeru!
KNode class
	instanceVariableNames: ''!

!classDefinition: #KLine category: #Kaeru!
KNode subclass: #KLine
	instanceVariableNames: 'chars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KLine class' category: #Kaeru!
KLine class
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
KPart subclass: #KParagraph
	instanceVariableNames: 'leftMargin rightMargin'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KParagraph class' category: #Kaeru!
KParagraph class
	instanceVariableNames: ''!

!classDefinition: #TestKNode category: #Kaeru!
TestCase subclass: #TestKNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'TestKNode class' category: #Kaeru!
TestKNode class
	instanceVariableNames: ''!


!KNode commentStamp: '<historical>' prior: 0!
This is the interface for the KNode tree. The tree holds a structured representation of characters. Each level in the tree represents a structural element: documents hold pages; pages hold paragarphs; paragraphs hold lines, and lines holds characters. Each element in the tree is identified using an address. An address is a tuple of integers that mark the position in each level of the tree. The essential quality of this tree is that it manages overflow. When an element overflows (for example a page overflows when the number of lines in the page exceeds its limits) we move the last child in the element to the next element. 

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

!KNode methodsFor: 'interface' stamp: 'DF 7/19/2025 21:55:27'!
insert: aCharacter after: anAddress

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/20/2025 11:34:37'!
insertAtStart: aCharacter 

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/21/2025 08:18:32'!
isOverflow: aParentNode

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/19/2025 16:33:41'!
length

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/20/2025 10:03:47'!
newItem
	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/19/2025 16:22:31'!
overweight
	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/21/2025 08:18:41'!
removeLast: aKNode
	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/21/2025 08:18:46'!
textInto: aWriteStream

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/19/2025 15:57:18'!
weight
	^self subclassResponsibility ! !

!KNode methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 09:36:10'!
captures: anAddress 

	^anAddress first = self length! !

!KNode methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 08:09:37'!
text

	| aWriteStream |
	
	aWriteStream := WriteStream on:''.
	
	self textInto: aWriteStream.
	
	^aWriteStream contents.! !

!KLine methodsFor: 'interface' stamp: 'DF 7/20/2025 11:14:29'!
insert: aCharacter after: anAddress

	| ii |
	
	self assert: anAddress size = 1.
	
	ii := anAddress first.
	
	chars add:aCharacter afterIndex: ii .
	
	^{ii + 1}! !

!KLine methodsFor: 'interface' stamp: 'DF 7/20/2025 11:25:56'!
insertAtStart: aCharacter 

	chars add:aCharacter afterIndex: 0 .
	
	^{1}! !

!KLine methodsFor: 'interface' stamp: 'DF 7/19/2025 16:40:32'!
isOverflow: aParagraph

	^aParagraph width < chars size ! !

!KLine methodsFor: 'interface' stamp: 'DF 7/19/2025 16:33:49'!
length

	^chars size! !

!KLine methodsFor: 'interface' stamp: 'DF 7/20/2025 16:34:30'!
removeLast: aParagraph

	|  cc aWriteStream nn |
		
	nn := 0.
	
	cc := chars last.
	
	cc isSeparator
		ifTrue:[ 
			chars removeLast.
			^cc asString].

	aWriteStream := WriteStream on: ''.
			
	[nn <= aParagraph width and: [chars size >1] and:[cc isSeparator not] ] whileTrue:[
		aWriteStream nextPut: cc.
		chars removeLast.
		cc := chars last.
		nn := nn + 1 ].
	
	^aWriteStream contents reverse
	
	
	! !

!KLine methodsFor: 'interface' stamp: 'DF 7/19/2025 15:57:24'!
weight
	^1! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 10:12:19'!
eraseAfter: anIndex

" 1234567 eraseAfter:3  = removeLast:4 = 4567 

 eraseAfter: k = removeLast: size - k
"

	^chars removeLast: chars size - anIndex! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 15:42:54'!
initialize

	chars := OrderedCollection new! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/20/2025 11:37:37'!
textInto: aWriteStream

	aWriteStream nextPutAll: chars.! !

!KPart methodsFor: 'interface' stamp: 'DF 7/21/2025 12:24:30'!
insert: aCharacter after: anAddress

	| ii cc addr |
			
	self assert: (aCharacter isKindOf: Character).
		
	ii := anAddress first.
	
	cc := containers at:ii.
	
	addr := cc insert: aCharacter after: anAddress allButFirst.
	
	cc isOverflow: self :: 
		ifTrue:[ | result captured | 

			"if addr points past the last item in cc then it means that the last item
			was shifted and we must correct its address.  "
						
			captured := cc captures: addr.
					
			result := self shiftRight: ii. 
			
			^captured 
				ifTrue:[
					
					"the last index in result holds the number of items that were removed from the
					part that was just shifted. this is exactly the overweight. "
					
					result , (addr allButFirst:2)]
				ifFalse:[
					^{anAddress first}, addr]
			 ].

	^{anAddress first}, addr! !

!KPart methodsFor: 'interface' stamp: 'DF 7/20/2025 13:27:26'!
insertAtStart: aCharacter 

	| cc addr |
		
	self assert: (aCharacter isKindOf: Character).
	
	containers size = 0 ifTrue:[
		containers add: self newItem ].
	
	cc := containers at:1.
	
	addr := cc insertAtStart: aCharacter.
	
	cc isOverflow: self :: 
		ifTrue:[ 
			^ self shiftRight: 1].

	^{1}, addr! !

!KPart methodsFor: 'interface' stamp: 'DF 7/19/2025 16:33:57'!
length

	^containers size! !

!KPart methodsFor: 'interface' stamp: 'DF 7/20/2025 11:38:06'!
textInto: aWriteStream

	containers do:[:each | each textInto: aWriteStream ].
! !

!KPart methodsFor: 'interface' stamp: 'DF 7/19/2025 15:58:39'!
weight

	^containers sum:[:each | each weight]! !

!KPart methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 14:28:12'!
initialize

	containers := OrderedCollection new! !

!KPart methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 22:17:37'!
push: anItem

	self assert: (anItem isKindOf: KNode).
	
	containers add: anItem afterIndex:0 ! !

!KPart methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 08:26:53'!
shiftRight: anIndex 

	"Moves the last element of container at anIndex to the next container, creating a new container
	if anIndex is the last child. 
	
	Answers the address of the moved container.
	"
	
	| item ii  |
	
	ii := anIndex.
	
	[(containers at:ii) isOverflow: self]
		whileTrue:[
			ii = containers size
				ifTrue:[
					containers add: self newItem ].

			item := containers at: ii :: removeLast: self.
	
			containers at: ii + 1 :: push: item.
			ii := ii + 1 ].
	
	^{anIndex + 1 . 1 . item length }
	! !

!KDoc methodsFor: 'interface' stamp: 'DF 7/19/2025 16:05:31'!
isOverflow: aParentNode
	
	^false! !

!KDoc methodsFor: 'interface' stamp: 'DF 7/20/2025 10:23:52'!
newItem
	^KPage new! !

!KPage methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 09:35:46'!
captures: anAddress 

	"a page captures an address only if the address of its line exceeds the number of lines allowed in the page (that is weight - overweight)."
	
	^anAddress first = self length and:[ anAddress second > (self weight - self overweight)]! !

!KPage methodsFor: 'interface' stamp: 'DF 7/19/2025 16:40:42'!
isOverflow: aParentNode

	^self weight > 5! !

!KPage methodsFor: 'interface' stamp: 'DF 7/20/2025 10:24:04'!
newItem
	^KParagraph new! !

!KPage methodsFor: 'interface' stamp: 'DF 7/19/2025 16:23:00'!
overweight

	^self weight - 5! !

!KPage methodsFor: 'interface' stamp: 'DF 7/21/2025 10:59:24'!
push: aKPar

	self assert: (aKPar isKindOf: KParagraph).
	
	containers isEmpty 
		ifTrue:[containers add: aKPar afterIndex:0]
		ifFalse:[
			containers first addLinesOf: aKPar]! !

!KPage methodsFor: 'interface' stamp: 'DF 7/19/2025 22:18:42'!
removeLast: aDoc

	| aPar |
	
	aPar := containers last.

	self assert: aPar weight >= self overweight.
	
	^aPar weight = self overweight 
		ifTrue:[
			containers removeLast]
		ifFalse:[
			aPar splitAfter: self overweight].  
			! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 10:58:33'!
addLinesOf: aKPar

	aKPar lines reverse do:[:each |
		containers add: each afterIndex: 0 ].
	
	! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 22:36:04'!
initialize

	super initialize.
		
	leftMargin := 6.
	
	rightMargin := 6+8! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 12:27:46'!
insert: aCharacter after: anAddress

	| addr aLine tail |

	aCharacter = Character cr ifTrue:[
				
		aLine := containers at: anAddress first.
	
		tail := aLine eraseAfter: anAddress second.  
	].

	addr := super insert: aCharacter after: anAddress.

	aCharacter = Character cr ifTrue:[ | aNewLine index |
		
		aNewLine := self newItem.
		
		index := {0}.
		
		tail do:[:each | index := aNewLine insert: each after: index].
		
		containers add: aNewLine afterIndex: addr first ].
	
	^addr! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 10:58:41'!
lines
	^containers! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/20/2025 17:58:20'!
shiftRight: anInteger 

	| items ii addr |

	 ii := anInteger.

	ii = containers size
		ifTrue:[
			containers add: self newItem ].
	
	items := containers at: ii :: removeLast: self.
	
	self assert: items size > 0.
	
	addr := { ii + 1 . 0 }.
	
	items do:[:each | addr := self insert: each after: addr ].
		
	^addr! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 20:12:22'!
splitAfter: anInt

	| aPar |
	
	aPar := KParagraph new.
	
	anInt timesRepeat:[
		aPar push: (self removeLast: nil) ] .
	
	^aPar! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 15:54:50'!
width
	^rightMargin - leftMargin! !

!KParagraph methodsFor: 'interface' stamp: 'DF 7/19/2025 15:56:04'!
isOverflow: aParentNode

	^false! !

!KParagraph methodsFor: 'interface' stamp: 'DF 7/20/2025 10:24:19'!
newItem
	^KLine new! !

!KParagraph methodsFor: 'interface' stamp: 'DF 7/19/2025 20:38:29'!
removeLast: aPage

	^containers removeLast.! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 08:09:22'!
testInsert

	| text aKDoc addr |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	
	addr := aKDoc insertAtStart: text first.
	
	text allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = text.! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 10:47:04'!
testInsertInParts

	| p1 p2 aKDoc addr |
	
	p1 := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'. 
	
	p2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	
	addr := aKDoc insertAtStart: p2 first.
	
	p2 allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].

	addr := aKDoc insertAtStart: p1 first.
	
	p1 allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = (p1,p2).! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 12:26:16'!
testInsertNewLines

	| p1 p2 aKDoc addr |
	
	p1 := 'In olden times, when to wish', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	p2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	
	addr := aKDoc insertAtStart: p2 first.
	
	p2 allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].

	addr := aKDoc insertAtStart: p1 first.
	
	p1 allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = (p1,p2).! !

!Integer methodsFor: '*Kaeru-enumerating' stamp: 'DF 7/20/2025 11:09:43'!
copiesOf: anObject

	"answer a sequence of self copies of anObject "
	
	| anOrderedCollection |
	
	anOrderedCollection := OrderedCollection new.
	
	self timesRepeat:[
		anOrderedCollection add: anObject ].
	
	^anOrderedCollection ! !
