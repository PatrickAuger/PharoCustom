Class {
	#name : #Dice,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'CustomThingsMOOC-dices'
}

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

{ #category : #initialization }
Dice >> roll [

^ faces atRandom 
]
