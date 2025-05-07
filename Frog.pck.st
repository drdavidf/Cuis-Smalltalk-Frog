'From Cuis7.3 [latest update: #7041] on 7 May 2025 at 7:31:45 pm'!
'Description '!
!provides: 'Frog' 1 20!
SystemOrganization addCategory: #Frog!


!classDefinition: #Line category: #Frog!
Object subclass: #Line
	instanceVariableNames: 'text prev next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'Line class' category: #Frog!
Line class
	instanceVariableNames: ''!

!classDefinition: #Page category: #Frog!
Object subclass: #Page
	instanceVariableNames: 'paragraphs prev next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'Page class' category: #Frog!
Page class
	instanceVariableNames: ''!

!classDefinition: #Paragraph category: #Frog!
Object subclass: #Paragraph
	instanceVariableNames: 'lines prev next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'Paragraph class' category: #Frog!
Paragraph class
	instanceVariableNames: ''!

!classDefinition: #WordProcessorModel category: #Frog!
Object subclass: #WordProcessorModel
	instanceVariableNames: 'pages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'WordProcessorModel class' category: #Frog!
WordProcessorModel class
	instanceVariableNames: ''!

!classDefinition: #TestLine category: #Frog!
TestCase subclass: #TestLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!
!classDefinition: 'TestLine class' category: #Frog!
TestLine class
	instanceVariableNames: ''!


!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 19:30:06'!
deleteFrom: begin to: end

	| aWriteStream |
	
	self assert: 1 <= begin.
	self assert: begin <= end.
	self assert: end <= text size.
	
	aWriteStream := WriteStream on: ''.
	
	aWriteStream nextPutAll: (text copyFrom: 1 to: begin - 1) ; nextPutAll: (text copyFrom: end+1 to: text size).
	
	text := aWriteStream contents.! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:42:05'!
initialize

	text := ''! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 19:27:20'!
insert: aString after: anIndex width:  numChars

	| raw length src dst  token |
		
	self assert: anIndex <= text size.

	raw := (text copyFrom:1 to: anIndex), aString , (text copyFrom: anIndex+1 to: text size).
	
	src := ReadStream on: raw.
	
	dst := WriteStream on: ''.

	self assert: (dst contents , src tail) = raw.
			
	token := self next: src.  "
	
	where
	
		{ X = src tail }
		token := self next: src
		{ token ,  src tail = X }
	"

	self assert: (dst contents , token , src tail) = raw.

	length := 0.

	self assert: length = dst contents size.
	
	[ (length + token size > numChars) or: [token isEmpty] or:[token at:1 :: isLineSeparator ] ] whileFalse:[
		
		" length + token size <= numChars and token size > 0 and token is not a line separator"
				
		dst nextPutAll: token. 
		length := length + token size.
		token := self next: src ].

	self assert: (dst contents , token , src tail) = raw.
	
	" 
	token is line separator => 
		(dst contents , token , src tail) = raw.

	not token is line separator => 
		(dst contents , token , src tail) = raw.
	"
	
	(length + token size <= numChars) and: [token notEmpty] and:[token at:1 :: isLineSeparator ] :: 
		ifTrue:[ 
			dst nextPutAll:token ]
		ifFalse:[
			src skip: 0 - token size ].

	self assert: (dst contents , src tail) = raw .
		
	text := dst contents.
	
	self assert: (text , src tail) = raw.
	
	^ src upToEnd.
	! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 23:43:11'!
next: aReadStream
	
	| tokenStream cc stop state |
	
	tokenStream := WriteStream on: ''.
	
	state := #separator.
	stop := false.

	[ (aReadStream atEnd) or:[stop] ] whileFalse:[
		cc := aReadStream next.
		cc isSeparator 
			ifTrue:[
				state = #separator 
					ifTrue:[
						tokenStream nextPut: cc]
					ifFalse:[
						aReadStream back].
				stop := true]
			ifFalse:[
				state := #word.
				tokenStream nextPut: cc] ].
	
	^tokenStream contents.! !

!Line methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 18:50:03'!
text
	^text! !

!Page methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:41'!
initialize

	paragraphs := Paragraph new! !

!Paragraph methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:54'!
initialize

	lines := Line new! !

!WordProcessorModel methodsFor: 'as yet unclassified' stamp: 'DF 5/6/2025 21:41:27'!
initialize

	pages := Page new! !

!TestLine methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 19:31:34'!
testDelete

	| aLine tail |
	
	aLine := Line new.
	
	tail := aLine insert: '12345' after:0 width: 8.
	
	self assert: tail isEmpty.
	
	self assert: aLine text = '12345'.
	
	aLine deleteFrom: 1 to: 5.
	
	self assert: aLine text isEmpty.! !

!TestLine methodsFor: 'as yet unclassified' stamp: 'DF 5/7/2025 19:27:20'!
testInsert

	| aLine tail |
	
	aLine := Line new.
	
	tail := aLine insert: 'abcd' after:0 width: 7.
	
	self assert: tail isEmpty.
	
	self assert: aLine text = 'abcd'.
	
	tail := aLine insert: ' efg' after: 4 width: 7.
	
	self assert: tail = 'efg'.
	
	self assert: aLine text = 'abcd '.

	tail := aLine insert: 'a
' after: 5 width: 7.

	self assert: tail isEmpty.
	
	self assert: aLine text = 'abcd a
'.
	! !

!PositionableStream methodsFor: '*Frog-positioning' stamp: 'DF 5/7/2025 18:27:25'!
tail
	| str |
	
	str := self contents.
	
	^ str copyFrom: position + 1 to: str size.! !
