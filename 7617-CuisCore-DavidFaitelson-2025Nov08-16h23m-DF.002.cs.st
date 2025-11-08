'From Cuis7.5 [latest update: #7615] on 8 November 2025 at 6:39:53 pm'!

!AppLauncher class methodsFor: 'system startup' stamp: 'DF 11/8/2025 18:38:17'!
notifyLostChangesOnStartUp
	
	Smalltalk at: AppGlobalName ifPresent: [ :cls |
		cls respondsTo: #lostChangesOnStartUp :: ifTrue:[
			cls perform: #lostChangesOnStartUp.
			^ true ] ].
	
	^false! !

!AppLauncher class methodsFor: 'system startup' stamp: 'DF 11/8/2025 18:37:45'!
notifySaveChunkNotFound
	
	Smalltalk at: AppGlobalName ifPresent: [ :cls |
		cls respondsTo: #saveChunkNotFound :: ifTrue:[
			cls perform: #saveChunkNotFound.
			^ true ] ].
	
	^false! !


!SystemDictionary methodsFor: 'startup' stamp: 'DF 11/8/2025 18:39:10'!
checkIfAlreadyRunningOrStoppedNoExit
	"
	If the Changes file is not clean during startup, it may mean either:
	- last run crashed or was killed (code recovery may be in order)
	- Cuis is already running. Running it again may mean inconsistent updates to .changes file.
	Smalltalk checkIfAlreadyRunningOrStoppedNoExit
	"
	| imageSaveChunk postImageSaveChunk |
	imageSaveChunk := nil.
	postImageSaveChunk := nil.
	self withChangesFileDo: [ :changesFile |
		changesFile position: self lastQuitLogPosition.
		changesFile atEnd ifFalse: [ imageSaveChunk := changesFile nextChunk ].
		changesFile atEnd ifFalse: [ postImageSaveChunk := changesFile nextChunk ]].

	"If we can't find the image save chunk at the image save position, something is wrong."
	(imageSaveChunk isNil or: [ ((Smalltalk isQuitRecord: imageSaveChunk		) or: [
			Smalltalk isSnapshotRecord: imageSaveChunk ]) not])
		ifTrue: [
			UISupervisor whenUIinSafeState: [
				
				AppLauncher notifySaveChunkNotFound ifTrue:[^self]. "let the application handle this"
				
				self notify:
					self currentChangesName asFullFileEntry pathName, String newLineString,
					'Image save chunk not found. Possible image / changes file corruption. Proceed with caution.' ].
				^self ].

	"If there is already a post-imageSave chunk, it may mean Cuis is running in another OS process,
	or in a previous run, it was killed or crashed."
	postImageSaveChunk notNil ifTrue: [

		AppLauncher notifyLostChangesOnStartUp ifTrue:[^self]. "the application handles this"
		
		(Preferences at: #checkLostChangesOnStartUp)
			ifTrue: [
				"Let the user chose automatic or manual recovery from .changes file.
				Used mainly by CuisUniversity."
				UISupervisor whenUIinSafeState: [self restoreLostChanges ]]
			ifFalse: [
				"Notify user about the situation, open changes recovery tool on last User Changes file."
				(Preferences at: #warnAndOfferLastUserChanges) ifTrue: [
					UISupervisor whenUIinSafeState: [self warnAndOfferLastUserChanges]]]].! !

