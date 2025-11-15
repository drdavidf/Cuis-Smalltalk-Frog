'From Cuis7.3 [latest update: #7041] on 10 July 2025 at 9:45:05 pm'!
!classDefinition: #LineRange category: #Frog!
Object subclass: #LineRange
	instanceVariableNames: 'begin end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Frog'!

!LineRange methodsFor: 'testing' stamp: 'DF 5/12/2025 23:08:25'!
= aLineRange

	self class == aLineRange class 
		ifFalse:[^false].
		
	^begin = aLineRange begin and:[end = aLineRange end]
	
	! !

!LineRange methodsFor: 'testing' stamp: 'DF 5/12/2025 23:06:38'!
isEmpty
	^begin isNil and:[ end isNil ]! !


!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 21:47:11'!
begin
	^begin! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:03:09'!
begin: aLine
	begin := aLine ! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 21:47:14'!
end
	^end! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:03:19'!
end: aLine
	end := aLine! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:08:54'!
hash
	"Hash is reimplemented because = is implemented."

	^(begin hash hashMultiply + end hash) hashMultiply! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/16/2025 17:00:15'!
intersect: aLineRange

	| b e p q pastEnd otherPastEnd |
	
	pastEnd := self end next.
	
	otherPastEnd := aLineRange end next.
	
	p := self begin.
	
	[p = pastEnd]
		whileFalse:[
			p = aLineRange begin
				ifTrue:[
					b := p].
			p = aLineRange end
				ifTrue:[
					e := p].
			p := p next ].
	
	q := aLineRange begin.

	[q = otherPastEnd]
		whileFalse:[
			q = self begin
				ifTrue:[
					b := q].
			q = self end
				ifTrue:[
					e := q].
			q := q next ].
	
	^LineRange new begin: b ; end: e ; yourself! !

!LineRange methodsFor: 'as yet unclassified' stamp: 'DF 5/12/2025 23:03:40'!
invariant

	^ (begin isNil and: end isNil) or:[begin <= end]! !
