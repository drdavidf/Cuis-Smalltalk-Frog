'From Cuis7.3 [latest update: #6895] on 8 August 2025 at 10:01:24 pm'!
'Description '!
!provides: 'Kaeru' 1 338!
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

!classDefinition: #KTokenStream category: #Kaeru!
Object subclass: #KTokenStream
	instanceVariableNames: 'stream head'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'KTokenStream class' category: #Kaeru!
KTokenStream class
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
	instanceVariableNames: 'repo text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kaeru'!
!classDefinition: 'TestKRepository class' category: #Kaeru!
TestKRepository class
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

!KLine methodsFor: 'testing' stamp: 'DF 8/8/2025 15:21:32'!
invariant: aKParagraph neighbour: aKLine

	self assert: (self isOverflow: aKParagraph :: not).
	
	self assert: (chars allButLast allSatisfy:[:each |
		each isKLineSeparator not ]).
	
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

!KLine methodsFor: 'inserting' stamp: 'DF 8/8/2025 15:24:51'!
insert: aCharacter after: anIndex

	self assert: (anIndex = 0 or: [(chars at: anIndex) isKLineSeparator not]).
	
	chars add:aCharacter afterIndex: anIndex.

	^anIndex + 1! !

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

!KLine methodsFor: 'addressing' stamp: 'DF 8/2/2025 18:49:03'!
firstAddress
	^ { 1 }! !

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

!KPart methodsFor: 'erasing' stamp: 'DF 8/2/2025 15:52:27'!
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

!KDoc methodsFor: 'inserting' stamp: 'DF 8/8/2025 21:33:14'!
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
	
	page isUnderflow
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

!KLibrary methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 14:59:29'!
insert: aCharacter after: anAddress

	| addr |
	
	addr := containers at: anAddress first :: insert: aCharacter after: anAddress allButFirst.
		
	^{ anAddress first}, addr! !

!KLibrary methodsFor: 'as yet unclassified' stamp: 'DF 7/26/2025 18:55:20'!
newItem
	^KDoc new! !

!KPage methodsFor: 'inserting' stamp: 'DF 8/7/2025 20:06:32'!
append: aParagraph  

	" Append aParagraph to the end of the page. If the page is empty or If the paragraph ends 
	with a new line then just append the entire paragraph. 
	
	Otherwise we must merge the lines of aParagraph with the lines of the last paragraph, 
	and rebuild the paragraph. "
	
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

!KPage methodsFor: 'testing' stamp: 'DF 8/2/2025 21:23:37'!
invariant: aKDoc neighbour: aKPage

	self assert: (super invariant: aKDoc neighbour: aKPage).
	
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

!KParagraph methodsFor: 'initialization' stamp: 'DF 7/19/2025 22:36:04'!
initialize

	super initialize.
		
	leftMargin := 6.
	
	rightMargin := 6+8! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/8/2025 15:21:21'!
addLinesOf: aKPar

	self assert: aKPar lastCharacter isKLineSeparator not.
	
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

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/8/2025 12:11:29'!
buildFrom: aTokenStream
	
	[aTokenStream first notEmpty ]
		whileTrue:[
			containers add: self newItem.
			containers last buildFrom: aTokenStream limitBy: self width ].
		
	! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/8/2025 13:31:02'!
insert: aCharacter after: anAddress

	"insert a character to the paragraph assuming that the character is not a line separator "
	
	| stream text  distance addr |
	
	self assert: aCharacter isKLineSeparator not.
	
	addr := containers at: anAddress first :: insert: aCharacter after: anAddress second.

	distance := self distanceFrom: `{ 1 . 0 }` to: { anAddress first .  addr}.
	
	text := self text.
		
	stream := KTokenStream new.
	
	stream on: text.

	stream nextUpTo: self width.
	
	containers removeAll.
	
	self buildFrom: stream.
	
	addr := `{ 1 . 0 }`.
	
	distance timesRepeat: [addr := self next: addr].
	
	^addr.
! !

!KParagraph methodsFor: 'inserting' stamp: 'DF 8/8/2025 13:12:00'!
splitAfter: anInt

	| aPar |
	
	aPar := KParagraph new.
	
	anInt timesRepeat:[
		aPar push: self removeLast ] .
		
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

!KParagraph methodsFor: 'erasing' stamp: 'DF 8/8/2025 14:27:39'!
rebuild

	"reinsert the text of self from scratch. This will ensure that all the lines in self
	are packed. "
	
	| text stream |
	
	text := self text.
	
	containers removeAll.
	
	stream := KTokenStream new.
	
	stream on: text.
	
	stream nextUpTo: self width.
	
	self buildFrom: stream.
	
	! !

!KParagraph methodsFor: 'erasing' stamp: 'DF 8/8/2025 12:14:48'!
removeLast

	^containers removeLast.! !

!KParagraph methodsFor: 'testing' stamp: 'DF 8/2/2025 23:20:22'!
invariant: aKPage neighbour: aKParagraph

	self assert: (super invariant: aKPage neighbour: aKParagraph).
	
	aKParagraph
		ifNil:[^true].
		
	self assert: containers last text last isKLineSeparator .	
	
	^true
		! !

!KParagraph methodsFor: 'testing' stamp: 'DF 7/19/2025 15:56:04'!
isOverflow: aParentNode

	^false! !

!KParagraph methodsFor: 'testing' stamp: 'DF 8/2/2025 21:21:43'!
isUnderflow  

	^false! !

!KParagraph methodsFor: 'factory' stamp: 'DF 7/20/2025 10:24:19'!
newItem
	^KLine new! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 8/8/2025 15:22:18'!
lastCharacter

	^containers last lastCharacter! !

!KParagraph methodsFor: 'accessing' stamp: 'DF 7/21/2025 10:58:41'!
lines
	^containers! !

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

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 12:12:56'!
testBuildKLine

	| aKLine aTokenStream |
	
	aKLine := KLine new.
	
	aTokenStream := KTokenStream new.
	
	aTokenStream on: 'abb ba baa'.
	
	aTokenStream nextUpTo:8.
	
	aKLine buildFrom: aTokenStream limitBy: 8.
	
	self assert: aKLine text = 'abb ba '.
	
	aKLine := KLine new.
	
	aTokenStream := KTokenStream new.
	
	aTokenStream on: '1234567890'.
	
	aTokenStream nextUpTo:7.
	
	aKLine buildFrom: aTokenStream limitBy: 7.
	
	self assert: aKLine text = '1234567'.
	
	aKLine := KLine new.
	
	aTokenStream := KTokenStream new.
	
	aTokenStream on: 'ab',Character cr asString.
	
	aTokenStream nextUpTo:8.
	
	aKLine buildFrom: aTokenStream limitBy: 8.
	
	self assert: aKLine text = ('ab', Character cr asString).
	! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 12:13:32'!
testBuildKParagraph

	| aKPar aTokenStream |
	
	aKPar := KParagraph new.
	
	aTokenStream := KTokenStream new.
	
	aTokenStream on: 'abb ba baa  babbbabb ab ab ba aaa b   a', Character cr asString.
	
	aTokenStream nextUpTo:8.
	
	aKPar buildFrom: aTokenStream.
	
	self assert: aKPar text = ('abb ba baa  babbbabb ab ab ba aaa b   a', Character cr asString).
! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 16:09:27'!
testErase

	| text aKDoc page par line bb ee |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful.'.

	aKDoc := KDoc new.
	page := KPage new.
	par := KParagraph new.
	line := KLine new.
	
	par push: line.
	page push: par.
	aKDoc push: page.

	bb := #(1 1 1 0).
	
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

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 16:06:20'!
testInsert

	| text aKDoc page par line addr |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine. Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	page := KPage new.
	par := KParagraph new.
	line := KLine new.
	
	par push: line.
	page push: par.
	aKDoc push: page.

	addr := #(1 1 1 0).
	
	text do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = text.
	
	self assert: aKDoc invariant.
	! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 16:08:14'!
testInsertInParts

	| p1 p2 aKDoc page par line addr |
	
	p1 := 'In olden times, when to wisZ was to have, there lived a King whose daughters were all beautiful. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'. 
	
	p2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	page := KPage new.
	par := KParagraph new.
	line := KLine new.
	
	par push: line.
	page push: par.
	aKDoc push: page.
	
	addr := #( 1 1 1 0 ).
	
	p2 do:[:each | addr := aKDoc insert:each after: addr. self assert: aKDoc invariant. ].

	addr := #( 1 1 1 0 ).
		
	p1 do:[:each | addr := aKDoc insert:each after: addr. self assert: aKDoc invariant.  ].
	
	self assert: aKDoc text = (p1,p2).
	
	self assert: aKDoc invariant.
! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 14:40:29'!
testInsertNewLines

	| p1 p2 aKDoc page par line addr |
	
	p1 := 'In olden times, when to wisX', Character cr asString, ' was to have, there lived a King whose daughters were all beautiful', Character cr asString, '. But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  
	
	p2 := ' Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.

	aKDoc := KDoc new.
	page := KPage new.
	par := KParagraph new.
	line := KLine new.
	
	par push: line.
	page push: par.
	aKDoc push: page.

	addr := #(1 1 1 0).
	
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

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 13:14:47'!
testInsertSmall

	| text aKDoc page par line addr |
	
	text := 'In olden times, when to wish was to have'.

	aKDoc := KDoc new.
	page := KPage new.
	par := KParagraph new.
	line := KLine new.
	
	par push: line.
	page push: par.
	aKDoc push: page.

	addr := #(1 1 1 0).
	
	text do:[:each | addr := aKDoc insert:each after: addr.  ].
	
	self assert: aKDoc text = text.
	
	self assert: aKDoc invariant.
	! !

!TestKNode methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 16:09:01'!
testMakeParagraphs

	| p1 aKDoc page par line addr |
	
	p1 := 'In olden times, when to wish was to have, there lived a King whose Xaughters were all beautiful.', Character cr asString, Character cr asString, 'But the youngest was so',Character cr asString, Character cr asString,'fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.'.  

	aKDoc := KDoc new.
	
	page := KPage new.
	par := KParagraph new.
	line := KLine new.
	
	par push: line.
	page push: par.
	aKDoc push: page.

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
	
	self assert: aKDoc text = (p1).

	self assert: aKDoc invariant.
! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/2/2025 17:42:38'!
abstractIndexOf: anAddress base: anInitialAddress

	^(repo root distanceFrom: anInitialAddress to: anAddress) 
	! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 17:21:08'!
doErase: aGenerator

	|  len ab ae cb ce pp app ptext |
	
	len := (1/ ( (1/text size) + aGenerator next)) ceiling.
	
	ab := (text size + 1) atRandom.
	
	ae := ab + len max: text size + 1.
		
	"move to the same location in both concrete and abstract systems. "
	
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
					app = ab ]).
				
	^ae - ab
! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 17:20:36'!
doInsert: aGenerator

	| cc  ii bb |
		
	"We draw two numbers. one is the character to insert, the other the position after
	which we insert the character."
	
	cc := self drawCharacterFrom: aGenerator.
	
	" Select an abstract index and a concrete address that corresponds to this index "
	
	ii := (aGenerator next * text size) floor. "we use floor to have a chance to insert a character at the very start of the text (index 0)"
	
	bb := self goto: ii from: repo begin. 
	
	repo insert: cc after: bb.
	
	text := text copyReplaceFrom:ii+1 to:ii with: cc asString. 
		
	self assert: repo root text = text.

	self assert: repo invariant.


	
	! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 21:08:53'!
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

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 16:48:54'!
testErase

	|  bb ptext app |
	
	text := 'In olden times, when to wish was to have, there lived a King whose daughters were all beautiful.', (Character cr) asString, ' But the youngest was so fair that the Sun himself, although he saw her often, was enchanted every time she came out into the sunshine.', (Character newPage) asString, 'Near the castle of this King was a large and gloomy forest, and in the midst grew an old linden-tree, beneath whose branches splashed a little fountain. ',  (Character escape) asString , 'When the days were very warm, the King’s youngest daughter ran off to the wood, and sat down by the side of the fountain. When she felt dull, she would often amuse herself by throwing a golden ball up in the air and catching it. This was her favourite form of play.'.
	
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

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/6/2025 16:57:55'!
testError

	|  bb ab ae cb ce pp |
	
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

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 21:10:07'!
testEverything

	| aGenerator iteration count maxErase countErase maxCount |

	text := ''. "the abstract representation of the text in the repository"

	self assert: repo root text = text.

	self assert: repo invariant.
	
	iteration := 0. "keeps track of how many iterations the test did"
	
	count := 0. "the number of characters in the repository"
	
	maxErase := 1. "the largest subsequence that was erased so far"
	
	countErase := 1. "the number of characters that were erased and not inserted yet. This is used to ensure that after we erase k characters we insert k - 1 characters "
	
	maxCount := 25000. "the maximal number of characters in the repository during the test."
	
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

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 20:25:44'!
testInsertError

	|  bb ab cb pp cc |
	
	text := ' aaabaabaaaa bbaabbb abaabbabbabab aaaabba  aa bbaa bba abba bbbaaabaab aabbb b babbbbbbaaab a'.
	
	self assert: repo invariant.
	
	bb := repo begin.
	
	text do:[:each | 
		bb := repo insert: each after: bb].
	
	self assert: repo root text = text.

	self assert: repo invariant.
	
	"move to the same location in both concrete and abstract systems. "
		
	ab :=  7. 
		
	cb := self goto:ab from: repo begin.
		
	self assert: ab = (self abstractIndexOf: cb base: repo begin). 
	
	cc := Character space.
	
	self halt.
	pp := repo insert: cc after: cb.

	self assert: repo invariant.
			
	"check that the abstract and concrete systems correspond"
	
	text := text copyReplaceFrom:ab+1 to:ab with: cc asString. 
		
	self assert: text  = repo root text.
	
! !

!TestKRepository methodsFor: 'as yet unclassified' stamp: 'DF 8/8/2025 21:36:16'!
testInsertPageBreak

	|  bb ab cb pp cc |
	
	text := ' aaabaabaaaa bbaabbb abaabbabbabab', (Character codePoint:12) asString, 'aaaabba  aa bbaa bba abba bbbaaabaab aabbb b babbbbbbaaab a'.
	
	self assert: repo invariant.
	
	bb := repo begin.
	
	text do:[:each | 
		bb := repo insert: each after: bb].
	
	self assert: repo root text = text.

	self assert: repo invariant.
	
	"move to the same location in both concrete and abstract systems. "
		
	ab :=  7. 
		
	cb := self goto:ab from: repo begin.
		
	self assert: ab = (self abstractIndexOf: cb base: repo begin). 
	
	cc := Character space.
	
	self halt.
	pp := repo insert: cc after: cb.

	self assert: repo invariant.
			
	"check that the abstract and concrete systems correspond"
	
	text := text copyReplaceFrom:ab+1 to:ab with: cc asString. 
		
	self assert: text  = repo root text.
	
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
