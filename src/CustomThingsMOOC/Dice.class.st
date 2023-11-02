Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'CustomThingsMOOC-dices'
}

{ #category : #'instance creation' }
Dice class >> withFaces: anInteger [ 
	
	|d|
	d :=self new.
	d faces: anInteger.
	^d
]

{ #category : #accessing }
Dice >> faces [
	^ faces
]

{ #category : #accessing }
Dice >> faces: anInteger [ 
	faces := anInteger
]

{ #category : #initialization }
Dice >> initialize [ 

	super initialize.
	faces := 6
]

{ #category : #printing }
Dice >> printOn: aStream [
	" a Dice (faces number)"

	super printOn: aStream.
	aStream
		nextPutAll: ' (' , faces printString;
		nextPutAll: ' faces)'
]

{ #category : #initialization }
Dice >> roll [

^ faces atRandom 
]
