'From Cuis7.5 [latest update: #7615] on 24 October 2025 at 10:17:55 pm'!
'Description '!
!provides: 'HeadlessDemo' 1 6!
SystemOrganization addCategory: 'HeadlessDemo'!


!classDefinition: #HeadlessDemo category: 'HeadlessDemo'!
Object subclass: #HeadlessDemo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HeadlessDemo'!
!classDefinition: 'HeadlessDemo class' category: 'HeadlessDemo'!
HeadlessDemo class
	instanceVariableNames: ''!


!HeadlessDemo class methodsFor: 'as yet unclassified' stamp: 'DF 10/24/2025 12:02:06'!
initialize

	" self initialize "
	
	AppLauncher appGlobalName: #HeadlessDemo appSelector: #startUp:.! !

!HeadlessDemo class methodsFor: 'as yet unclassified' stamp: 'DF 10/24/2025 22:17:10'!
startUp: args

	Smalltalk isHeadless ifTrue:[
		
		Transcript logToStdout: true.
		Transcript addEntry: 'Hello, world'.
		
			UISupervisor ui ifNotNil:[ :world | 
		
		​ world submorphs do:[:each | Transcript addEntry: each class name ] ].
	
		Smalltalk startUpArguments do:[:each | Transcript addEntry: each asString ].
		
		self assert: 1 = 2.
				
		Smalltalk quit ].
	! !
HeadlessDemo initialize!
