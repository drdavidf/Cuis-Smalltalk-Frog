'From Cuis7.3 [latest update: #6895] on 24 July 2025 at 6:37:58 pm'!
'Description '!
!provides: 'Kaeru' 1 133!
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

!KNode methodsFor: 'interface' stamp: 'DF 7/22/2025 13:08:48'!
eraseFrom: aBeginAddress

	"erase all the children from aBeginAddress"

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/22/2025 13:00:55'!
eraseFrom: aBeginAddress to: anEndAddress

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/19/2025 21:55:27'!
insert: aCharacter after: anAddress

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/20/2025 11:34:37'!
insertAtStart: aCharacter 

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/21/2025 08:18:32'!
isOverflow: aParentNode

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/24/2025 18:21:36'!
isUnderflow: aParentNode neighbour: aKNode 

	^self subclassResponsibility ! !

!KNode methodsFor: 'interface' stamp: 'DF 7/22/2025 10:15:35'!
lastAddress
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

!KNode methodsFor: 'interface' stamp: 'DF 7/22/2025 10:01:44'!
resolve: anAddress  

	^self subclassResponsibility! !

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

!KLine methodsFor: 'interface' stamp: 'DF 7/22/2025 14:24:55'!
eraseFrom: aBeginAddress

	" Erase all the characters from the begin index (inclusive). begin must not be 1. 
	
	answers the address that points to the last character not erase.
		
	Line chars: 'abcde' :: eraseFrom: {3} = 'ab'
	
	  will answer 2
	
	"

	self assert: aBeginAddress size = 1.

	self assert: aBeginAddress first > 1.
	
	self assert: aBeginAddress first <= chars size.
	
	chars := chars copyFrom: 1 to: aBeginAddress first - 1.
	
	^ { aBeginAddress first - 1 }.
	! !

!KLine methodsFor: 'interface' stamp: 'DF 7/22/2025 14:35:15'!
eraseFrom: aBeginAddress to: anEndAddress

	"Erase a part of the characters in this line. Never erase all the characters. 
	
		Line chars: 'abcdefg' :: eraseFrom: {2} to: {4} = 'adefg'
		
	Note that eraseFrom: aa to: aa is a skip
	"
	
	self assert: aBeginAddress size = 1.
	self assert: anEndAddress size = 1.
	
	self assert: aBeginAddress first > 1.
	
	self assert: aBeginAddress first <= anEndAddress first.
		
	self assert: anEndAddress first <= chars size.
	
	" note that copyFrom:to: is an inclusive copy "
	
	chars := (chars copyFrom: 1 to: aBeginAddress first - 1) , (chars copyFrom: anEndAddress first to: chars size).
	
	^ { aBeginAddress first - 1 }
	! !

!KLine methodsFor: 'interface' stamp: 'DF 7/22/2025 14:28:27'!
eraseTo: anEndAddress

	" Erase all the characters upto end (not including the character at end). 
	
	Answers the address of first character not erased. For a line this will always be {1}.
	
	Line chars: 'abcde' :: eraseTo: {3} = 'cde'
	
	"
	
	self assert: anEndAddress size = 1.
	
	self assert: 1 <= anEndAddress first.
		
	self assert: anEndAddress first <= chars size.
	
	chars := chars copyFrom: anEndAddress first to: chars size.
	
	^ { 1 } 	! !

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

!KLine methodsFor: 'interface' stamp: 'DF 7/24/2025 18:37:55'!
isUnderflow: aParagraph neighbour: aKNode 

	"check if the first token in the next line can be inserted at the end of self
	without overflowing self"
	
	^aKNode firstTokenLength + self length <= aParagraph width  ! !

!KLine methodsFor: 'interface' stamp: 'DF 7/19/2025 16:33:49'!
length

	^chars size! !

!KLine methodsFor: 'interface' stamp: 'DF 7/22/2025 09:25:44'!
removeLast: aParagraph

	|  ii |
		
	chars last isSeparator
		ifTrue:[ 
			^chars removeLast asString].

	"moving backwards find the position of the first separator. If none exist this means that the line is a single word so cut off the tail that overflows the line and return that tail"
	
	ii := chars size.
	
	[ii > 0 and: [chars at:ii :: isSeparator not] ] whileTrue:[ii := ii - 1].
	
	ii = 0 
		ifTrue:[ " n = chars size. n := n - (n - w) => n = w " 
			^ chars removeLast: chars size - aParagraph width  ].
	
	^chars removeLast: chars size - ii. "let n =  chars size. n := n - (n - ii) => n = ii. thus after this operation the last character in chars is the separator as required. "
	
	
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

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/24/2025 18:37:35'!
firstTokenLength

	| ii |
	
	chars first isSeparator
		ifTrue:[^1].
		
	ii := 1.
	
	[ii <= chars size and:[chars at:ii :: isSeparator not] ]
		whileTrue:[
			ii := ii + 1].
		
	"ii = chars size + 1 or:[ ii <= chars size and chars at:ii :: isSeparator] "
	
	^ ii - 1! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 15:42:54'!
initialize

	chars := OrderedCollection new! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 10:14:45'!
lastAddress
	^ { chars size }! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 10:11:30'!
prev: anAddress  

	self assert: anAddress size = 1.
	
	anAddress first = 0
		ifTrue:[
			^{} ].
	
	^ { anAddress first - 1 } ! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 10:01:44'!
resolve: anAddress  

	self assert: anAddress size = 1.
	
	self assert: anAddress first > 0.
	
	^chars at: anAddress first! !

!KLine methodsFor: 'as yet unclassified' stamp: 'DF 7/20/2025 11:37:37'!
textInto: aWriteStream

	aWriteStream nextPutAll: chars.! !

!KPart methodsFor: 'interface' stamp: 'DF 7/22/2025 14:26:23'!
eraseFrom: aBeginAddress 

	
	" Erase all the characters that are in addresses equal to or after aBeginAddress. 
	
	aBeginAddress must never be the address of the first character in this tree (all 1's).
	
	"

	| addr |
	
	self assert: (aBeginAddress anySatisfy:[:any | any > 1]). 
	
	self assert: aBeginAddress first <= containers size.
		
	addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst. 
	
	containers := containers copyFrom: 1 to: aBeginAddress first.
	
	^ { aBeginAddress first } , addr
	! !

!KPart methodsFor: 'interface' stamp: 'DF 7/24/2025 16:10:05'!
eraseFrom: aBeginAddress to: anEndAddress

	| addr |
	
	self assert: aBeginAddress first <= anEndAddress first.	
	self assert: anEndAddress first <= containers size.

	" Erasing in a single item. The item itself cannot be entirely erased because anEndAddress at most can
	point to the last element, but erasing does not include the last element. "
	
	aBeginAddress first = anEndAddress first
		ifTrue:[ 
			addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst to: anEndAddress allButFirst.
			^ { aBeginAddress first } , addr ].
	
	" Erasing more than one item, and starting from the first char in the first item, necessarily erases
	the first item. "
		
	aBeginAddress allSatisfy:[:each | each = 1 ] :: 
		ifTrue:[
			addr := containers at: anEndAddress first :: eraseTo: anEndAddress allButFirst.
	
			containers := containers copyFrom: anEndAddress first to: containers size. 
			
			^{ 1 } , addr ].
	
	" Otherwise the first item is not erased, only a part of it is erased. " 
			
	addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst. 
	
	containers at: anEndAddress first :: eraseTo: anEndAddress allButFirst.
	
	containers := (containers copyFrom: 1 to: aBeginAddress first) , (containers copyFrom: anEndAddress first to: containers size).
	
	^ { aBeginAddress first } , addr
	
	
	! !

!KPart methodsFor: 'interface' stamp: 'DF 7/22/2025 14:38:31'!
eraseTo: anEndAddress 

	" Erase all the characters that are in addresses before anEndAddress. 
		
	"
	
	| addr |
		
	self assert: anEndAddress first <= containers size.
		
	addr := containers at: anEndAddress first :: eraseTo: anEndAddress allButFirst. 
	
	containers := containers copyFrom: anEndAddress first to: containers size.
	
	"the container at anEndAddress first is now located at index 1"
	
	^ { 1 } , addr
	! !

!KPart methodsFor: 'interface' stamp: 'DF 7/22/2025 12:44:31'!
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

!KPart methodsFor: 'interface' stamp: 'DF 7/22/2025 10:01:44'!
resolve: anAddress  
			
	^containers at: anAddress first :: resolve: anAddress allButFirst ! !

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

!KPart methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 10:15:16'!
lastAddress

	^ { containers size } , containers last lastAddress! !

!KPart methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 11:31:44'!
prev: anAddress  

	| addr |
	
	addr := containers at: anAddress first :: prev: anAddress allButFirst.
	
	addr isEmpty
		ifTrue:[
			^anAddress first = 1
				ifTrue:[
					{}]
				ifFalse:[
					{ anAddress first - 1 } , (containers at: anAddress first - 1 :: lastAddress) ] ] .
			
	^{ anAddress first }, addr! !

!KPart methodsFor: 'as yet unclassified' stamp: 'DF 7/19/2025 22:17:37'!
push: anItem

	self assert: (anItem isKindOf: KNode).
	
	containers add: anItem afterIndex:0 ! !

!KPart methodsFor: 'as yet unclassified' stamp: 'DF 7/24/2025 18:23:11'!
shiftLeft: anIndex 

	" As long as self is not the last container, and self is underflow, move the first element of the next container to become the last container in self (perhaps splitting a part of it to avoid overflowing self) If the next container becomes empty, remove it. "
	
	| item ii  |
	
	ii := anIndex.
	
	[ii ~= containers size and:[ (containers at:ii) isUnderflow: self neighbour: (containers at:ii+1)] ]  
		whileTrue:[

			item := containers at: ii +1 :: removeFirst: (containers at:ii).
	
			containers at: ii  :: add: item.
			
			containers at: ii + 1 :: isEmpty 
				ifTrue:[
					containers removeAt: ii + 1].
			
			ii := ii + 1 ].
	
	! !

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

!KDoc methodsFor: 'interface' stamp: 'DF 7/24/2025 18:21:36'!
isUnderflow: aParentNode neighbour: aKNode 
	
	^false! !

!KDoc methodsFor: 'interface' stamp: 'DF 7/20/2025 10:23:52'!
newItem
	^KPage new! !

!KPage methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 12:14:10'!
captures: anAddress 

	"a page captures an address if the weight of all the lines up to the address exceeds the number of lines allowed in the page (that is its weight - overweight)."
	
	| sum parIndex lineIndex |
	
	parIndex := anAddress first. lineIndex := anAddress second.
	
	sum := 0.
	
	1 to: parIndex - 1 do:[:ii | sum := sum + (containers at:ii :: weight) ].
	
	sum := sum + lineIndex. 
	
	^sum > (self weight - self overweight)! !

!KPage methodsFor: 'interface' stamp: 'DF 7/24/2025 15:42:04'!
insert: aCharacter after: anAddress

	| addr |

	addr := super insert: aCharacter after: anAddress.

	" A newline character starts a new paragraph. If the newline happens in the middle of a line
	then the part of the line after the new line (the tail) and all further lines in the paragraph move 
	to the new paragraph. 
	
	line    text
	1       abc
	2      dexfg
	3      12 34
	4      xyz 

       after inserting newline after address { 2 . 3 }

	line    text
	1       abc
	2      dex
	
	1.     fg
	2      12 34
	3      xyz 
	
	the answer should be { 1. 0 } marking the position just before the 'f' in the first line.
	
	In general we must answer an address just before the tail. The tail always begins the new line. 
	That is, the character index will always be 0. 	
	"
	
	aCharacter = Character cr ifTrue:[ | aNewPar | 
			
		aNewPar := self newItem.
		
		"The address addr points to the new line that was created after the newline
		character. we need to move this line and all the other lines to the new paragraph."
		
		aNewPar lines addAll: ((containers at: addr first) removeLinesFrom: addr second ).
		
		containers add: aNewPar afterIndex: addr first.
		
		^ { addr first + 1 . 1 . 0 } "index of new paragraph . first line . just before the tail "
		
	].

	^addr
! !

!KPage methodsFor: 'interface' stamp: 'DF 7/19/2025 16:40:42'!
isOverflow: aParentNode

	^self weight > 5! !

!KPage methodsFor: 'interface' stamp: 'DF 7/24/2025 18:21:36'!
isUnderflow: aParentNode neighbour: aKNode 

	^self weight < 5! !

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

!KPage methodsFor: 'interface' stamp: 'DF 7/24/2025 18:16:06'!
removeFirst: aPage

	"if the weight of the first paragraph is less than the underweight (available space) in aPage
	move the entire paragraph to aPage. Otherwise split the paragraph and move only enough
	to fill aPage without overflowing it. "
	
	| aPar |
	
	aPar := containers first.
	
	^aPar weight <= aPage underweight 
		ifTrue:[
			containers removeFirst]
		ifFalse:[
			aPar splitAfter: aPage underweight].  
			! !

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

!KPage methodsFor: 'interface' stamp: 'DF 7/24/2025 18:10:58'!
underweight

	^5 - self weight ! !

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

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/24/2025 16:33:34'!
insert: aCharacter after: anAddress

	| addr  |

	"If aCharacter a new line separator we must create a new line and 
	move all the characters that appear after the address  in the line to a new line.
	
	for example
	
	'abcdef' insert: Character cr after: 3 
	=>
	'abc' , Character cr
	'def' 
	
	and the index we return should be 3 on the second line (marking the f in the second line)
	
	another example showing what happens when we put the newline at the end of a line:
	
	'abcde' insert: Character cr after: 5
	=>
	'abcde', Character cr
	''
	
	and the index we return should be 0 on the second line. 
	"
	
	addr := super insert: aCharacter after: anAddress.

	aCharacter = Character cr ifTrue:[ | aLine tail aNewLine index |

		aLine := containers at: addr first.
	
		tail := aLine eraseAfter: addr second.  
		
		aNewLine := self newItem.
		
		index := {0}.
		
		tail do:[:each | index := aNewLine insert: each after: index].
		
		containers add: aNewLine afterIndex: addr first.
		
		" we always return an index pointing just before the line that follows the new line character. "
		^ {addr first + 1 . 0 } ].
	
	^addr! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/21/2025 10:58:41'!
lines
	^containers! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 18:13:36'!
rebuild

	"reinsert the text of self from scratch. This will ensure that all the lines in self
	are packed. "
	
	| text addr |
	
	text := self text.
	
	containers removeAll.
	
	addr := self insertAtStart: text first.
	
	text allButFirst do:[:each | addr := self insert: each after: addr].
	
	! !

!KParagraph methodsFor: 'as yet unclassified' stamp: 'DF 7/24/2025 15:14:04'!
removeLinesFrom: anInteger

	^containers removeLast: containers size - anInteger + 1! !

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

!KParagraph methodsFor: 'interface' stamp: 'DF 7/24/2025 18:21:36'!
isUnderflow: aParentNode neighbour: aKNode 

	^false! !

!KParagraph methodsFor: 'interface' stamp: 'DF 7/20/2025 10:24:19'!
newItem
	^KLine new! !

!KParagraph methodsFor: 'interface' stamp: 'DF 7/19/2025 20:38:29'!
removeLast: aPage

	^containers removeLast.! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 7/24/2025 16:33:19'!
testErase

	| text aKDoc bb ee |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful.'.

	aKDoc := KDoc new.
	
	bb := aKDoc insertAtStart: text first.
	
	text allButFirst do:[:each | bb := aKDoc insert:each after: bb.  ].
	
	self assert: aKDoc text = text.
	
	bb := #(2 1 2 3).

	ee := #(2 1 4 2).
		
	bb := aKDoc eraseFrom:bb to: ee.
	
	self assert: aKDoc text = 'In olden times, when to wish was to have, thing whose daughters were all beautiful.'.
	
	bb := #(1 1 1 1).
	
	ee := #(3 1 1 1).
	
	aKDoc eraseFrom:bb to: ee.

	self assert: aKDoc text = 'daughters were all beautiful.'.
	
	! !

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

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 12:26:04'!
testInsertNewLines

	| p1 p2 aKDoc addr |
	
	p1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	p2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	
	addr := aKDoc insertAtStart: p2 first.
	
	p2 allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].

	addr := aKDoc insertAtStart: p1 first.
	
	p1 allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = (p1,p2).! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 7/22/2025 12:16:57'!
testMakeParagraphs

	| p1 aKDoc addr |
	
	p1 := 'In olden times, when to wish was to have, there lived a King whose Xaughters were all beautiful.', Character cr asString, Character cr asString, 'But the youngest was so',Character cr asString, Character cr asString,'fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  

	aKDoc := KDoc new.
	
	addr := aKDoc insertAtStart: p1 first.
	
	p1 allButFirst do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = (p1).
! !

!Integer methodsFor: '*Kaeru-enumerating' stamp: 'DF 7/20/2025 11:09:43'!
copiesOf: anObject

	"answer a sequence of self copies of anObject "
	
	| anOrderedCollection |
	
	anOrderedCollection := OrderedCollection new.
	
	self timesRepeat:[
		anOrderedCollection add: anObject ].
	
	^anOrderedCollection ! !
