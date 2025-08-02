'From Cuis7.3 [latest update: #6895] on 2 August 2025 at 6:03:51 pm'!
'Description '!
!provides: 'Kaeru' 1 249!
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

!classDefinition: #KLibrary category: #Kaeru!
KPart subclass: #KLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KLibrary class' category: #Kaeru!
KLibrary class
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

!classDefinition: #KRepository category: #Kaeru!
Object subclass: #KRepository
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KRepository class' category: #Kaeru!
KRepository class
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

!classDefinition: #TestKRepository category: #Kaeru!
TestCase subclass: #TestKRepository
	instanceVariableNames: 'repo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'TestKRepository class' category: #Kaeru!
TestKRepository class
	instanceVariableNames: ''!


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

!KLibrary commentStamp: '<historical>' prior: 0!
A KLibrary holds a collection of KDocuments

!

!KRepository commentStamp: '<historical>' prior: 0!
A KRepository is the object that holds the entire text and provides the operations to manipulate the text. !

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

!KLine methodsFor: 'testing' stamp: 'DF 7/24/2025 21:17:45'!
invariant: aKParagraph neighbour: aKLine

	self assert: (self isOverflow: aKParagraph :: not).
	
	aKLine 
		ifNil:[^true].
		
	self assert: (self isUnderflow: aKParagraph neighbour: aKLine :: not).
	
	^true
		! !

!KLine methodsFor: 'testing' stamp: 'DF 7/19/2025 16:40:32'!
isOverflow: aParagraph

	^aParagraph width < chars size ! !

!KLine methodsFor: 'testing' stamp: 'DF 7/24/2025 18:37:55'!
isUnderflow: aParagraph neighbour: aKNode 

	"check if the first token in the next line can be inserted at the end of self
	without overflowing self"
	
	^aKNode firstTokenLength + self length <= aParagraph width  ! !

!KLine methodsFor: 'testing' stamp: 'DF 8/1/2025 23:07:54'!
precedes: aBeginAddress before: anEndAddress

	self assert: aBeginAddress size = anEndAddress size.
	self assert: aBeginAddress size = 1.
	
	^ aBeginAddress first <= anEndAddress first
! !

!KLine methodsFor: 'erasing' stamp: 'DF 7/26/2025 20:09:29'!
eraseAfter: anIndex

" 1234567 eraseAfter:3  = removeLast:4 = 4567 

 eraseAfter: k = removeLast: size - k
"

	self assert: anIndex > 0.
	
	^chars removeLast: chars size - anIndex! !

!KLine methodsFor: 'erasing' stamp: 'DF 7/22/2025 14:24:55'!
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

!KLine methodsFor: 'erasing' stamp: 'DF 8/2/2025 16:27:45'!
eraseFrom: aBeginAddress to: anEndAddress

	"Erase a part of the characters in this line. Never erase all the characters. 
	
		Line chars: 'abcdefg' :: eraseFrom: {2} to: {4} = 'adefg' , addr = #(1)
				
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

!KLine methodsFor: 'erasing' stamp: 'DF 8/2/2025 17:03:31'!
eraseTo: anEndAddress

	" Erase all the characters upto end (not including the character at end). 
	
	Does not answer an address. Any call to eraseTo: must determine the address without expecting
	any help from eraseTo: because we must answer an address one place _before_ the first character
	that was erase, and this would mean {0} which is an invalid address to answer.
	
	Line chars: 'abcde' :: eraseTo: {3} = 'cde'
	
	"
	
	self assert: anEndAddress size = 1.
	
	self assert: 1 <= anEndAddress first.
		
	self assert: anEndAddress first <= chars size.
	
	chars := chars copyFrom: anEndAddress first to: chars size.
	
	! !

!KLine methodsFor: 'erasing' stamp: 'DF 7/22/2025 09:25:44'!
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

!KLine methodsFor: 'inserting' stamp: 'DF 7/20/2025 11:14:29'!
insert: aCharacter after: anAddress

	| ii |
	
	self assert: anAddress size = 1.
	
	ii := anAddress first.
	
	chars add:aCharacter afterIndex: ii .
	
	^{ii + 1}! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/24/2025 18:37:35'!
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

!KLine methodsFor: 'accessing' stamp: 'DF 7/25/2025 13:24:11'!
lastCharacter

	^chars last! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:33:49'!
length

	^chars size! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/20/2025 11:37:37'!
textInto: aWriteStream

	aWriteStream nextPutAll: chars.! !

!KLine methodsFor: 'accessing' stamp: 'DF 7/19/2025 15:57:24'!
weight
	^1! !

!KLine methodsFor: 'initialization' stamp: 'DF 7/19/2025 15:42:54'!
initialize

	chars := OrderedCollection new! !

!KLine methodsFor: 'addressing' stamp: 'DF 8/1/2025 22:40:30'!
anchor: anAddress
	^#(1)! !

!KLine methodsFor: 'addressing' stamp: 'DF 8/1/2025 22:05:29'!
lastAddress
	^ { chars size }! !

!KLine methodsFor: 'addressing' stamp: 'DF 7/24/2025 22:12:09'!
next: anAddress

	self assert: anAddress size = 1.
	
	^ { anAddress first + 1 }.
! !

!KLine methodsFor: 'addressing' stamp: 'DF 7/22/2025 10:11:30'!
prev: anAddress  

	self assert: anAddress size = 1.
	
	anAddress first = 0
		ifTrue:[
			^{} ].
	
	^ { anAddress first - 1 } ! !

!KLine methodsFor: 'addressing' stamp: 'DF 7/22/2025 10:01:44'!
resolve: anAddress  

	self assert: anAddress size = 1.
	
	self assert: anAddress first > 0.
	
	^chars at: anAddress first! !

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

!KPart methodsFor: 'testing' stamp: 'DF 7/24/2025 21:13:03'!
isUnderflow: aParentNode  
	
	^self subclassResponsibility ! !

!KPart methodsFor: 'testing' stamp: 'DF 7/24/2025 22:06:42'!
precedes: aBeginAddress before: anEndAddress

	self assert: aBeginAddress size = anEndAddress size.
	
	aBeginAddress isEmpty
		ifTrue:[
			^true].
		
	^ aBeginAddress first < anEndAddress first or:[
		aBeginAddress first = anEndAddress first and:[
			self precedes: aBeginAddress allButFirst before: anEndAddress allButFirst ] ]! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 15:52:27'!
adjustUnderflow: anAddress
	^anAddress! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 16:07:49'!
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
			
			addr := containers at: aBeginAddress first - 1 :: last.
			
			^ self adjustUnderflow: { aBeginAddress first - 1 } , addr].
	
	addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst. 

	containers := containers copyFrom: 1 to: aBeginAddress first.
	
	^ self adjustUnderflow: { aBeginAddress first } , addr
	! !

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 16:33:25'!
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
					
					addr := containers at: aBeginAddress first - 1 :: last.
					
					^ self adjustUnderflow: { aBeginAddress first - 1 } , addr ].
				
			addr := containers at: aBeginAddress first :: eraseFrom: aBeginAddress allButFirst to: anEndAddress allButFirst.
			^ self adjustUnderflow: { aBeginAddress first } , addr].
		
	" Erasing more than one item, and starting from the first char in the first item, necessarily erases
	the first item. "
	
	aBeginAddress allButFirst allSatisfy:[:each | each = 1 ] :: 
		ifTrue:[ 
			addr := containers at: aBeginAddress first - 1 :: last.
			
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

!KPart methodsFor: 'inserting' stamp: 'DF 8/1/2025 21:12:58'!
adjustOverflow: anIndex 

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

!KPart methodsFor: 'inserting' stamp: 'DF 7/29/2025 14:41:13'!
append: anItem address: anAddr 

	self assert: (anItem isKindOf: KNode).
	
	containers add: anItem.
	
	^anAddr! !

!KPart methodsFor: 'inserting' stamp: 'DF 8/1/2025 22:51:20'!
insert: aCharacter after: anAddress

	| ii cc addr |
			
	self assert: (aCharacter isKindOf: Character).
			
	ii := anAddress first.
	
	ii = 0 ifTrue:[
		containers add: self newItem afterIndex: 0.
		ii := 1].
	
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

!KPart methodsFor: 'addressing' stamp: 'DF 8/1/2025 22:07:05'!
lastAddress
	^ { containers size } , containers last lastAddress! !

!KPart methodsFor: 'addressing' stamp: 'DF 7/24/2025 22:13:08'!
next: anAddress

	| addr cc |
	
	self assert: anAddress size > 1.
	
	cc := containers at: anAddress first .
	
	addr :=  cc next: anAddress allButFirst.
	
	^addr first = (cc length + 1)
		ifTrue:[
			{ anAddress first + 1 } , ( anAddress size - 1 copiesOf: 1 )]
		ifFalse:[
			{ anAddress first } , addr ]! !

!KPart methodsFor: 'addressing' stamp: 'DF 7/25/2025 21:38:34'!
prev: anAddress  

	| addr |
	
	addr := containers at: anAddress first :: prev: anAddress allButFirst.
	
	addr isEmpty
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

!KPart methodsFor: 'accessing' stamp: 'DF 7/19/2025 15:58:39'!
weight

	^containers sum:[:each | each weight]! !

!KDoc methodsFor: 'testing' stamp: 'DF 7/19/2025 16:05:31'!
isOverflow: aParentNode
	
	^false! !

!KDoc methodsFor: 'testing' stamp: 'DF 7/24/2025 21:12:42'!
isUnderflow: aParentNode  
	
	^false! !

!KDoc methodsFor: 'factory' stamp: 'DF 7/20/2025 10:23:52'!
newItem
	^KPage new! !

!KDoc methodsFor: 'erasing' stamp: 'DF 8/2/2025 16:13:54'!
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
	
	aPage isUnderflow: self ::
		ifTrue:[ | anchor distance |
			
			anchor := aPage anchor: anAddress allButFirst.
			
			distance := aPage distanceFrom: anchor to: anAddress allButFirst.
			
			self shiftLeft: anAddress first address: anAddress.
			
			addr := {anAddress first},anchor. distance timesRepeat:[ addr := self next: addr] ].
		
	" We must check the next page (if it is not the last) for underflow because when we erase a range
	of pages the first page may not underflow but the last page may. After erasing, the last page in the
	range becomes the next page after the first page in the range. 
	
	We do not use the address computed by this second shift left because the address can never refer
	to a character in the last page."
	
	anAddress first + 1 < containers size and: [containers at: anAddress first + 1 :: isUnderflow: self ] :: 
		ifTrue:[ 
			self shiftLeft: anAddress first + 1 address: anAddress].
		
	^addr! !

!KDoc methodsFor: 'erasing' stamp: 'DF 7/29/2025 15:14:50'!
shiftLeft: anIndex address: anAddr  

	" As long as self is not the last container, and self is underflow, move the first element of the next container to become the last container in self (perhaps splitting a part of it to avoid overflowing self) If the next container becomes empty, remove it. Answer a valid address to the last character before the erased part. "
	
	| item ii  addr |
	
	ii := anIndex.
	
	addr := anAddr.
	
	[ii < containers size and:[ (containers at:ii) isUnderflow: self ] ]  
		whileTrue:[

			" It is possible that the container at ii is still underflow even after we append
			to it the item from the next container (for example when we append a paragraph
			it may rebuild itself and thus lose a line). 
			
			Thus we must keep taking items from the next container until the current 
			container (at ii) is not underflowed or until we have emptied all the containers after
			ii."
			
			[ ii ~= containers size and:[ (containers at:ii) isUnderflow: self ] ]
				whileTrue:[
					
					item := containers at: ii +1 :: removeFirst: (containers at:ii).
					
					addr first = ii 
						ifTrue:[
							"
							If we are appending to the paragraph that the address references, then we must adjust
							the address because rebuilding the paragraph may move the characters in the paragraph's lines."	
					
							addr := { addr first} , (containers at: ii :: append: item address: addr allButFirst).
						]
						ifFalse:[
							(containers at: ii :: append: item address: #(0)) "use a fake address to prevent the append logic from trying to adjust the address"
						].
					containers at: ii + 1 :: isEmpty 
						ifTrue:[
							containers removeAt: ii + 1] ].
			
			ii := ii + 1 ].
	
	^addr
	! !

!KLibrary methodsFor: 'as yet unclassified' stamp: 'DF 7/26/2025 18:55:20'!
newItem
	^KDoc new! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/2/2025 15:52:27'!
append: aParagraph address: anAddr 

	" Append aParagraph to the end of the page. If the paragraph ends with a new line then
	just append the entire paragraph. Otherwise we must merge the lines of aParagraph with
	the lines of the last paragraph, and rebuild the paragraph. If anAddr references a position
	in the about-to-be-rebuilt paragraph we must recalculate it using adjust."
	
	| cc addr |
		
	self assert: (aParagraph isKindOf: KParagraph).
	
	addr := anAddr.
	
	cc := containers last.
	
	cc lines last lastCharacter = Character cr
		ifTrue:[
			containers add: aParagraph. ^addr].
		
	"The last paragraph does not end with an newline character, therefore we must extend it
	with the lines in aParagaraph. Add all the lines from a paragraph to the end of the last paragraph 
	in the page self"
	
	cc lines addAll: aParagraph lines.

	" rebuild and adjust the address depending on wheter it is pointing to a position in the last
	paragraph"
	
	addr first = containers size " addr points to the last paragraph "
		ifTrue:[
			addr := {addr first}, (cc adjustUnderflow: addr allButFirst) "also rebuilds the last paragraph"]
		ifFalse:[
			cc rebuild].
	
	"if the lines in aParagraph end with a newline character, rebuilding will create a spurious
	empty line. We must therefore remove it. "
	
	aParagraph lines last lastCharacter = Character cr
		ifTrue:[ 
			cc lines removeLast].
				
	^addr		
! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/2/2025 09:58:03'!
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

       after inserting newline after address { 1 . 2 . 3 }

	line    text
	1       abc
	2      dex<nl>
	
	1      fg
	2      12 34
	3      xyz 
	
	the answer should be { 1 . 2 . 4 } marking the position of the newline character.
	
	In general we must answer an address that points to the newline character. Luckily this is the address
	that the paragraph insert answers so we only have to move the lines to the new paragraph. 	
	"
	
	aCharacter = Character cr ifTrue:[ | aNewPar | 
			
		aNewPar := self newItem.
		
		"The address addr points to the line that ends with a newline
		character. we need to move the next line and all the other lines to the new paragraph."
		
		aNewPar lines addAll: ((containers at: addr first) removeLinesFrom: addr second + 1).
		
		containers add: aNewPar afterIndex: addr first ].

	^addr
! !

!KPage methodsFor: 'inserting' stamp: 'DF 7/21/2025 10:59:24'!
push: aKPar

	self assert: (aKPar isKindOf: KParagraph).
	
	containers isEmpty 
		ifTrue:[containers add: aKPar afterIndex:0]
		ifFalse:[
			containers first addLinesOf: aKPar]! !

!KPage methodsFor: 'testing' stamp: 'DF 7/24/2025 21:13:42'!
invariant: aKDoc neighbour: aKPage

	self assert: (super invariant: aKDoc neighbour: aKPage).
	
	aKPage
		ifNil:[^true].
		
	self assert: (self isUnderflow: aKDoc :: not). 
	
	^true
		! !

!KPage methodsFor: 'testing' stamp: 'DF 7/19/2025 16:40:42'!
isOverflow: aParentNode

	^self weight > 5! !

!KPage methodsFor: 'testing' stamp: 'DF 7/24/2025 21:12:42'!
isUnderflow: aParentNode  

	^self weight < 5! !

!KPage methodsFor: 'factory' stamp: 'DF 7/20/2025 10:24:04'!
newItem
	^KParagraph new! !

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

!KPage methodsFor: 'erasing' stamp: 'DF 7/19/2025 22:18:42'!
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

!KPage methodsFor: 'addressing' stamp: 'DF 8/2/2025 16:02:43'!
anchor: anAddress

	"answer a stable address that precedes anAddress but is close to it as possible. "
	
	^anAddress first = 1 "the address points to the first paragraph in the page"
		ifTrue:[
			
			" the address of the first character in the first paragraph is stable
			because the first line of the first paragraph in a page will never shift to the next page."

			#(1 1 1)]
		ifFalse:[ 
			
			"Otherwise answer the address of the last character in the previous paragraph"
			
			{ anAddress first  -1 }, (containers at: anAddress first - 1 :: lastAddress ) ]! !

!KPage methodsFor: 'addressing' stamp: 'DF 7/22/2025 12:14:10'!
captures: anAddress 

	"a page captures an address if the weight of all the lines up to the address exceeds the number of lines allowed in the page (that is its weight - overweight)."
	
	| sum parIndex lineIndex |
	
	parIndex := anAddress first. lineIndex := anAddress second.
	
	sum := 0.
	
	1 to: parIndex - 1 do:[:ii | sum := sum + (containers at:ii :: weight) ].
	
	sum := sum + lineIndex. 
	
	^sum > (self weight - self overweight)! !

!KPage methodsFor: 'accessing' stamp: 'DF 7/19/2025 16:23:00'!
overweight

	^self weight - 5! !

!KPage methodsFor: 'accessing' stamp: 'DF 7/24/2025 18:10:58'!
underweight

	^5 - self weight ! !

!KParagraph methodsFor: 'initialization' stamp: 'DF 7/19/2025 22:36:04'!
initialize

	super initialize.
		
	leftMargin := 6.
	
	rightMargin := 6+8! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 7/24/2025 21:33:41'!
addLinesOf: aKPar

	aKPar lines reverse do:[:each |
		containers add: each afterIndex: 0 ].
	
	self rebuild.
	! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/1/2025 21:12:58'!
adjustOverflow: anInteger 

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

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/2/2025 09:55:01'!
insert: aCharacter after: anAddress

	| addr  |

	"If aCharacter a new line separator we must create a new line and 
	move all the characters that appear after the address  in the line to a new line.
	
	for example
	
	'abcdef' insert: Character cr after: 3 
	=>
	'abc' , Character cr
	'def' 
	
	and the index we return should be 4 on the first line.
	
	another example showing what happens when we put the newline at the end of a line:
	
	'abcde' insert: Character cr after: 5
	=>
	'abcde', Character cr
	''
	
	and the index we return should be 6 on the first line. 
	"
	
	addr := super insert: aCharacter after: anAddress.

	aCharacter = Character cr ifTrue:[ | aLine tail aNewLine index |

		aLine := containers at: addr first.
	
		tail := aLine eraseAfter: addr second.  
		
		aNewLine := self newItem.
		
		index := {0}.
		
		tail do:[:each | index := aNewLine insert: each after: index].
		
		containers add: aNewLine afterIndex: addr first  ].
	
	^addr! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 7/19/2025 20:12:22'!
splitAfter: anInt

	| aPar |
	
	aPar := KParagraph new.
	
	anInt timesRepeat:[
		aPar push: (self removeLast: nil) ] .
	
	^aPar! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 7/25/2025 14:42:45'!
splitBefore: anInt

	| aPar |
	
	aPar := KParagraph new.
	
	anInt timesRepeat:[
		aPar lines add: containers removeFirst ] .
	
	^aPar! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 8/2/2025 17:29:51'!
adjustUnderflow: anAddress

	| addr distance |
	
	" As rebuilding may change the physical address of the character immediately after
	the erase part in a way that is difficult to calculate in advance, we calculate the distance
	from the paragraph's first character and use it to recalculate the physical address
	that matches the same abstract position as before the rebuild procedure. "
	
	distance := self distanceFrom: `{ 1 . 1 }` to: anAddress.
	
	self rebuild.
	
	addr := `{ 1 . 1 }`.
	
	distance timesRepeat: [addr := self next: addr].
	
	^addr.

	! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 8/1/2025 15:50:43'!
rebuild

	"reinsert the text of self from scratch. This will ensure that all the lines in self
	are packed. "
	
	| text addr |
	
	text := self text.
	
	containers removeAll.
	
	addr := #(0 0).
	
	text  do:[:each | addr := self insert: each after: addr].
	
	! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 7/19/2025 20:38:29'!
removeLast: aPage

	^containers removeLast.! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 7/24/2025 15:14:04'!
removeLinesFrom: anInteger

	^containers removeLast: containers size - anInteger + 1! !

!KParagraph methodsFor: 'testing' stamp: 'DF 7/24/2025 21:07:30'!
invariant: aKPage neighbour: aKParagraph

	self assert: (super invariant: aKPage neighbour: aKParagraph).
	
	aKParagraph
		ifNil:[^true].
		
	self assert: containers last text last = Character cr.	
	
	^true
		! !

!KParagraph methodsFor: 'testing' stamp: 'DF 7/19/2025 15:56:04'!
isOverflow: aParentNode

	^false! !

!KParagraph methodsFor: 'testing' stamp: 'DF 7/24/2025 21:12:42'!
isUnderflow: aParentNode  

	^false! !

!KParagraph methodsFor: 'factory' stamp: 'DF 7/20/2025 10:24:19'!
newItem
	^KLine new! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 7/21/2025 10:58:41'!
lines
	^containers! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 7/19/2025 15:54:50'!
width
	^rightMargin - leftMargin! !

!KRepository methodsFor: 'accessing' stamp: 'DF 8/2/2025 17:37:30'!
begin
	^root isEmpty
		ifTrue:[
			#(0 0 0 0 0) "doc . page . paragraph . line . char "
		]
		ifFalse:[
			#(1 1 1 1 0) ]! !

!KRepository methodsFor: 'accessing' stamp: 'DF 8/1/2025 16:04:33'!
end

	" Answer one address past the last address in the tree. "
	
	^{ root length + 1 . 1 . 1 . 1 . 1  }  "doc . page . paragraph . line . char "
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

!KRepository methodsFor: 'initialization' stamp: 'DF 7/25/2025 20:27:54'!
initialize

	root := KLibrary new! !

!KRepository methodsFor: 'editing' stamp: 'DF 8/2/2025 17:55:08'!
eraseFrom: aBeginAddr to: anEndAddr

	aBeginAddr = anEndAddr 
		ifTrue:[
			^aBeginAddr].
		
	^anEndAddr first > root length
		ifTrue:[
			
			aBeginAddr allSatisfy:[:each | each = 1] ::
				ifTrue:[
					root := KLibrary new.
					#(0 0 0 0 0) ]
				ifFalse:[
					root eraseFrom: aBeginAddr ] ]
		ifFalse:[
			aBeginAddr allSatisfy:[:each | each = 1] ::
				ifTrue:[
					root eraseTo: anEndAddr.
					#(1 1 1 1 0)  ]
				ifFalse:[
					root eraseFrom: aBeginAddr to: anEndAddr ] ]! !

!KRepository methodsFor: 'editing' stamp: 'DF 8/2/2025 16:17:03'!
insert: aCharacter after: anAddress

	| addr |
	
	addr := root insert: aCharacter after: anAddress.
	
	( root resolve:addr ) == Character cr
		ifTrue:[ | naddr | 
			naddr := root next:addr.
			
			" naddr will point to the first character in the next line. We want the address
			that points one place before the first character. Thus we replace the last 
			component (the character's position with 0)."
			
			naddr at: naddr size put: 0.
			addr := naddr ].
		
	^addr! !

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

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/1/2025 15:51:21'!
testErase

	| text aKDoc bb ee |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful.'.

	aKDoc := KDoc new.
	
	bb := #(0 0 0 0).
	
	text  do:[:each | bb := aKDoc insert:each after: bb.  ].
	
	self assert: aKDoc text = text.
	
	bb := #(2 1 2 3).

	ee := #(2 1 4 2).
		
	bb := aKDoc eraseFrom:bb to: ee.
	
	self assert: aKDoc text = 'In olden times, when to wish was to have, thing whose daughters were all beautiful.'.

	self assert: aKDoc invariant.
	
	ee := #(3 1 1 1).
	
	aKDoc eraseTo: ee.

	self assert: aKDoc text = 'all beautiful.'.
	
	self assert: aKDoc invariant.
	
	! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/1/2025 15:37:43'!
testInsert

	| text aKDoc addr |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	
	addr := #(0 0 0 0).
	
	text do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = text.
	
	self assert: aKDoc invariant.
	! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/1/2025 15:44:50'!
testInsertInParts

	| p1 p2 aKDoc addr |
	
	p1 := 'In olden times, when to wisZ was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'. 
	
	p2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	
	addr := #( 0 0 0 0 ).
	
	p2 do:[:each | addr := aKDoc insert:each after: addr. self assert: aKDoc invariant. ].

	addr := #( 1 1 1 0 ).
		
	p1 do:[:each | addr := aKDoc insert:each after: addr. self assert: aKDoc invariant.  ].
	
	self assert: aKDoc text = (p1,p2).
	
	self assert: aKDoc invariant.
! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/2/2025 15:28:42'!
testInsertNewLines

	| p1 p2 aKDoc addr |
	
	p1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	p2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	
	addr := #(0 0 0 0).
	
	p2 do:[:each | addr := aKDoc insert:each after: addr.  ].

	addr := #(1 1 1 0).
	
	p1 do:[:each | addr := aKDoc insert:each after: addr. 
		( aKDoc resolve:addr ) == Character cr
			ifTrue:[ | naddr | 
				naddr := aKDoc next:addr.
				" naddr will point to the first character in the next line. We want the address
				that points one place before the first character. Thus we replace the last 
				component (the character's position with 0)."
				naddr at: naddr size put: 0.
				addr := naddr ] ].
	
	self assert: aKDoc text = (p1,p2).
	
	self assert: aKDoc invariant.
! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/2/2025 15:29:59'!
testMakeParagraphs

	| p1 aKDoc addr |
	
	p1 := 'In olden times, when to wish was to have, there lived a King whose Xaughters were all beautiful.', Character cr asString, Character cr asString, 'But the youngest was so',Character cr asString, Character cr asString,'fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  

	aKDoc := KDoc new.
	
	addr := #(0 0 0 0).
	
	p1 do:[:each | addr := aKDoc insert:each after: addr.  
		
			( aKDoc resolve:addr ) == Character cr
						ifTrue:[ | naddr | 
							naddr := aKDoc next:addr.
							" naddr will point to the first character in the next line. We want the address
							that points one place before the first character. Thus we replace the last 
							component (the character's position with 0)."
							naddr at: naddr size put: 0.
							addr := naddr ] ].
	
	self assert: aKDoc text = (p1).

	self assert: aKDoc invariant.
! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/2/2025 17:42:38'!
abstractIndexOf: anAddress base: anInitialAddress

	^(repo root distanceFrom: anInitialAddress to: anAddress) 
	! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/2/2025 17:43:12'!
goto: anIndex from: anAddress

	| pp |
	
	pp := anAddress.
	
	anIndex timesRepeat:[
		pp := repo root next: pp 
	].

	^pp! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 7/26/2025 18:41:33'!
setUp

	repo := KRepository new.
	
! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/2/2025 18:03:38'!
testErase

	| text  bb ptext app |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character cr) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	self assert: repo invariant.
	
	bb := repo begin.
	
	text do:[:each | 
		bb := repo insert: each after: bb].
	
	self assert: repo root text = text.

	self assert: repo invariant.
	
	"select at random two indices ii, jj between 1 and text size + 1, "
	
	[ text isEmpty ] whileFalse:[ | ii jj ab ae cb ce pp |
		
		ii := (text size + 1) atRandom.
		
		jj := (text size + 1) atRandom.
		
		"move to the same location in both concrete and abstract systems. "
		
		ab :=  ii min: jj. ae := ii max: jj.
		
		cb := self goto:ab from: repo begin.
		
		self assert: ab = (self abstractIndexOf: cb base: repo begin). 
		
		ce := self goto: ae from: repo begin.
		
		self assert: ae = (self abstractIndexOf: ce base: repo begin).
		
		"erase the parts at both the abstract and concrete sytems. "
		
		pp := repo eraseFrom: cb to: ce.

		self assert: repo invariant.
		
		ptext := text.
			
		text := text eraseFrom:ab to:ae.
		
		"check that the abstract and concrete systems correspond"
		
		self assert: text  = repo root text.
		
		app := self abstractIndexOf: pp base: repo begin.
		
		self assert: (ab ~= ae
					ifTrue:[ 
						app = (ab - 1) ]
					 ifFalse:[
						app = ab ]) ]! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/2/2025 16:37:24'!
testError

	| text  bb ab ae cb ce pp |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
	self assert: repo invariant.
	
	bb := repo begin.
	
	text do:[:each | 
		bb := repo insert: each after: bb].
	
	self assert: repo root text = text.

	self assert: repo invariant.
	
	"move to the same location in both concrete and abstract systems. "
		
	ab :=  1. ae := 43.
		
	cb := self goto:ab from: repo begin.
		
	self assert: ab = (self abstractIndexOf: cb base: repo begin). 
		
	ce := self goto: ae from: repo begin.
		
	self assert: ae = (self abstractIndexOf: ce base: repo begin).
		
	"erase the parts at both the abstract and concrete sytems. "
		
	pp := repo eraseFrom: cb to: ce.

	self assert: repo invariant.
			
	text := text eraseFrom:ab to:ae.
		
	"check that the abstract and concrete systems correspond"
		
	self assert: text  = repo root text.
	
	self assert: (self abstractIndexOf: pp base: repo begin) = (ab - 1). 
! !

!CharacterSequence methodsFor: '*Kaeru-unittest' stamp: 'DF 6/19/2025 18:35:16'!
eraseFrom: bIndex to: eIndex

	^ self copyReplaceFrom: bIndex to: eIndex - 1 with: ''! !

!Integer methodsFor: '*Kaeru-enumerating' stamp: 'DF 7/20/2025 11:09:43'!
copiesOf: anObject

	"answer a sequence of self copies of anObject "
	
	| anOrderedCollection |
	
	anOrderedCollection := OrderedCollection new.
	
	self timesRepeat:[
		anOrderedCollection add: anObject ].
	
	^anOrderedCollection ! !
