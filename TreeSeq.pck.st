'From Cuis7.3 [latest update: #6895] on 21 August 2025 at 7:44:50 pm'!
'Description '!
!provides: 'TreeSeq' 1 58!
SystemOrganization addCategory: #TreeSeq!


!classDefinition: #TestTreeSeq category: #TreeSeq!
TestCase subclass: #TestTreeSeq
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TreeSeq'!
!classDefinition: 'TestTreeSeq class' category: #TreeSeq!
TestTreeSeq class
	instanceVariableNames: ''!

!classDefinition: #TSBranch category: #TreeSeq!
Object subclass: #TSBranch
	instanceVariableNames: 'left right itemCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TreeSeq'!
!classDefinition: 'TSBranch class' category: #TreeSeq!
TSBranch class
	instanceVariableNames: ''!

!classDefinition: #TSLeaf category: #TreeSeq!
Object subclass: #TSLeaf
	instanceVariableNames: 'item'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TreeSeq'!
!classDefinition: 'TSLeaf class' category: #TreeSeq!
TSLeaf class
	instanceVariableNames: ''!

!classDefinition: #TSTree category: #TreeSeq!
Object subclass: #TSTree
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TreeSeq'!
!classDefinition: 'TSTree class' category: #TreeSeq!
TSTree class
	instanceVariableNames: ''!


!TestTreeSeq methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:39:16'!
testInsert

	| aTree aSeq |
	
	aSeq := 1 to:10 :: asOrderedCollection.
	
	aTree := TSTree new.
	
	self assert: aTree items = {}.
	
	1 to:10 do:[:ii |
		aTree insert: (aSeq at:ii) at: ii ].
	
	self assert: aTree items asOrderedCollection = aSeq.
	
	1 to:10 do:[:ii |
		self assert: (aTree at:ii) = ii ].

	! !

!TestTreeSeq methodsFor: 'as yet unclassified' stamp: 'DF 8/21/2025 19:40:05'!
testInsertAndAltSplay

	| aTree aSeq |
	
	aSeq := 1 to:10 :: asOrderedCollection.
	
	aTree := TSTree new.
	
	self assert: aTree items = {}.
	
	self assert: aTree invariant.
	
	1 to:10 do:[:ii |
		aTree insert: (aSeq at:ii) at: ii. 
		self assert: aTree invariant.
		aTree altSplayAt:ii.
		self assert: aTree invariant ].
	
	self assert: aTree items asOrderedCollection = aSeq.
	
	1 to:10 do:[:ii |
		self assert: (aTree at:ii) = ii ].

	aTree altSplayAt:5.
	
	self assert: aTree invariant.
	
	self assert: aTree items asOrderedCollection = aSeq.
	
	self halt.
	aTree altSplayAt: 7.

	self assert: aTree invariant.
	
	self assert: aTree items asOrderedCollection = aSeq.
	! !

!TestTreeSeq methodsFor: 'as yet unclassified' stamp: 'DF 8/21/2025 10:03:41'!
testInsertAndSplay

	| aTree aSeq |
	
	aSeq := 1 to:10 :: asOrderedCollection.
	
	aTree := TSTree new.
	
	self assert: aTree items = {}.
	
	self assert: aTree invariant.
	
	1 to:10 do:[:ii |
		aTree insert: (aSeq at:ii) at: ii. 
		self assert: aTree invariant.
		aTree splayAt:ii.
		self assert: aTree invariant ].
	
	self assert: aTree items asOrderedCollection = aSeq.
	
	1 to:10 do:[:ii |
		self assert: (aTree at:ii) = ii ].

	! !

!TestTreeSeq methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:33:59'!
testInsertLeaf

	| aLeaf aNode |
	
	aLeaf := TSLeaf new.
	
	aLeaf item: $b.
	
	self assert: aLeaf items = { $b }.
	
	aNode := aLeaf insert: $a at: 1.
	
	self assert: aNode items = {$a . $b}.
	
	

	! !

!TSBranch methodsFor: 'splaying' stamp: 'DF 8/21/2025 19:37:51'!
altSplayAt: anIndex

	"move the parent of anIndex to be the root of this subtree"
	
	self isParentOf: anIndex ::
		ifTrue:[
			^self].

	anIndex <= self key
		ifTrue:[
			
			left isParentOf: anIndex ::
				ifTrue:[			
					^self rotateLeftChild].
			
			anIndex <= left key
				ifTrue:[ 
					^self rotateLeftChild rotateLeftChild altSplayAt: anIndex].
				
			left := left rotateRightChild.	
			
			^self rotateLeftChild splayAt: anIndex ].
	
	" now for the symmetric case "
	
	right isParentOf: anIndex - self key ::
	ifTrue:[			
		^self rotateRightChild].

	anIndex - self key > right key
		ifTrue:[			
			^self rotateRightChild rotateRightChild altSplayAt: anIndex ].

	right := right rotateLeftChild.	
	
	^self rotateRightChild altSplayAt: anIndex
		! !

!TSBranch methodsFor: 'splaying' stamp: 'DF 8/21/2025 10:14:46'!
rotateLeftChild
	
	| ll |

	self assert: left notNil.
	
	self assert: left isBranch.
	
	ll := left.
	
	left := ll right.
	
	self recount.
	
	ll right: self.
	
	ll recount.
	
	^ll
	! !

!TSBranch methodsFor: 'splaying' stamp: 'DF 8/21/2025 10:15:09'!
rotateRightChild
	
	| rr |

	self assert: right notNil.

	self assert: right isBranch.
	
	rr := right.
	
	right := rr left.
	
	self recount.
	
	rr left: self.
	
	rr recount.
	
	^rr
	! !

!TSBranch methodsFor: 'splaying' stamp: 'DF 8/21/2025 09:51:09'!
splayAt: anIndex

	"move the parent of anIndex to be the root of this subtree"
	
	self isParentOf: anIndex ::
		ifTrue:[
			^self].

	anIndex <= self key
		ifTrue:[
			left := left splayAt: anIndex.
			^self rotateLeftChild].
		
	right := right splayAt: anIndex - self key.
	
	^self rotateRightChild.! !

!TSBranch methodsFor: 'testing' stamp: 'DF 8/21/2025 10:03:04'!
invariant

	self assert: itemCount = self items size.
	
	left ifNotNil:[
		self assert: left invariant].

	right ifNotNil:[
		self assert: right invariant].
	
	^true! !

!TSBranch methodsFor: 'testing' stamp: 'DF 8/20/2025 14:12:42'!
isBranch
	^true! !

!TSBranch methodsFor: 'testing' stamp: 'DF 8/21/2025 09:43:19'!
isLeaf
	^false! !

!TSBranch methodsFor: 'testing' stamp: 'DF 8/21/2025 09:52:38'!
isParentOf: anIndex

	" Answers true iff self is the parent of the leaf that holds the item at position anIndex "
	
	anIndex = 1
		ifTrue:[
			^left notNil and:[ left isLeaf ] ].
 
	anIndex = (self key + 1)
		ifTrue:[
			^right notNil and:[right isLeaf ] ].
	
	^false
! !

!TSBranch methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:50:41'!
at: anIndex

	self assert: anIndex > 0.
	
	^anIndex <= self key
		ifTrue:[
			left at: anIndex]
		ifFalse:[
			right at: anIndex - self key ]
		! !

!TSBranch methodsFor: 'as yet unclassified' stamp: 'DF 8/21/2025 10:13:01'!
countItems: aNode

	^aNode isNil ifTrue:[0] ifFalse:[aNode itemCount]

! !

!TSBranch methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 14:04:29'!
initialize

	itemCount := 0! !

!TSBranch methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 14:04:29'!
insert: anObject at: anIndex

	self assert: anIndex >= 1.
	self assert: anIndex <= (self itemCount + 1).
	
	anIndex <= self key
		ifTrue:[
			left isNil
				ifTrue:[
					left := TSLeaf new.
					left item: anObject]
				ifFalse:[
					left := left insert: anObject at: anIndex] ]
		ifFalse:[
			right isNil
				ifTrue:[
					right := TSLeaf new.
					right item: anObject ]
				ifFalse:[
					right := right insert: anObject at: anIndex - self key] ].
			
	itemCount := itemCount + 1.
	
	^self! !

!TSBranch methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 14:04:29'!
itemCount: anInteger
	itemCount := anInteger! !

!TSBranch methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:08:04'!
items
	
	| xx yy |
	
	xx := left isNil ifTrue:[{}] ifFalse:[left items].
	
	yy := right isNil ifTrue:[{}] ifFalse:[right items].
	
	^ xx, yy! !

!TSBranch methodsFor: 'as yet unclassified' stamp: 'DF 8/21/2025 10:14:26'!
recount

	itemCount := (self countItems:left) + (self countItems: right).
! !

!TSBranch methodsFor: 'accessing' stamp: 'DF 8/20/2025 14:04:29'!
itemCount

	^itemCount! !

!TSBranch methodsFor: 'accessing' stamp: 'DF 8/20/2025 11:55:30'!
key
	left isNil ifTrue:[^0].
	
	^left itemCount! !

!TSBranch methodsFor: 'accessing' stamp: 'DF 8/20/2025 14:35:26'!
left
	^left! !

!TSBranch methodsFor: 'accessing' stamp: 'DF 8/20/2025 12:18:38'!
left: aNode
	left := aNode! !

!TSBranch methodsFor: 'accessing' stamp: 'DF 8/20/2025 14:35:28'!
right
	^right! !

!TSBranch methodsFor: 'accessing' stamp: 'DF 8/20/2025 12:18:30'!
right: aNode
	right := aNode! !

!TSBranch class methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 13:01:48'!
left: xLeaf right: yLeaf

	| aBranch count |
	
	aBranch := TSBranch new.
	
	count := 0.
	
	xLeaf notNil ifTrue:[
		count := count + 1].
	
	yLeaf notNil ifTrue:[
		count := count + 1].
	
	aBranch left: xLeaf ; right: yLeaf ; itemCount: count. 
	
	^aBranch
	! !

!TSLeaf methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:39:26'!
at: anIndex

	self assert: anIndex = 1.
	
	^item! !

!TSLeaf methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 13:01:16'!
insert: anObject at: anIndex

	| aLeaf |
	
	self assert: (anIndex = 1 or:[anIndex = 2]).

	aLeaf := TSLeaf new.
	aLeaf item: anObject.
	
	^anIndex = 1
		ifTrue:[ 
			TSBranch left: aLeaf right: (item isNil ifTrue:[nil] ifFalse:[self])  ]
		ifFalse:[
			TSBranch left: (item isNil ifTrue:[nil] ifFalse:[self]) right: aLeaf ]! !

!TSLeaf methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:05:26'!
item: anObject
	item := anObject! !

!TSLeaf methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 11:53:44'!
itemCount
	^1! !

!TSLeaf methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:08:12'!
items
	^{item}! !

!TSLeaf methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 11:53:37'!
key
	^0! !

!TSLeaf methodsFor: 'testing' stamp: 'DF 8/21/2025 10:01:51'!
invariant

	^true! !

!TSLeaf methodsFor: 'testing' stamp: 'DF 8/20/2025 14:12:34'!
isBranch
	^false! !

!TSLeaf methodsFor: 'testing' stamp: 'DF 8/21/2025 09:43:35'!
isLeaf
	^true! !

!TSTree methodsFor: 'as yet unclassified' stamp: 'DF 8/21/2025 16:49:49'!
altSplayAt: anIndex
	
	root := root altSplayAt: anIndex.! !

!TSTree methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:37:21'!
at: anIndex

	^root at: anIndex! !

!TSTree methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:26:47'!
insert: anObject at: anIndex

	root isNil
		ifTrue:[
			root := TSLeaf new].
		
	root := root insert: anObject at: anIndex! !

!TSTree methodsFor: 'as yet unclassified' stamp: 'DF 8/21/2025 10:04:06'!
invariant

	root isNil ifTrue:[^true].
	
	self assert: root invariant.
	
	^true! !

!TSTree methodsFor: 'as yet unclassified' stamp: 'DF 8/20/2025 12:27:04'!
items

	^root isNil
		ifTrue:[{}]
		ifFalse:[root items]! !

!TSTree methodsFor: 'as yet unclassified' stamp: 'DF 8/21/2025 10:04:50'!
splayAt: anIndex
	
	root := root splayAt: anIndex.! !
