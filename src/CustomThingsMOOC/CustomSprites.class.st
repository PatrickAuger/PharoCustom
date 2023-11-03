Class {
	#name : #CustomSprites,
	#superclass : #Object,
	#instVars : [
		'filename',
		'spritesCollection',
		'form',
		'spriteBasicSize'
	],
	#category : #'CustomThingsMOOC-challenge2'
}

{ #category : #extracting }
CustomSprites >> extractSpriteAtPx: px py: py [ 

self spritesCollection add: (self form copy: (Rectangle origin: px@py corner: 
(px+self spriteBasicSize)@(py+self spriteBasicSize)))
]

{ #category : #accessing }
CustomSprites >> filename [
^ filename 
]

{ #category : #accessing }
CustomSprites >> form [
^ form
]

{ #category : #initialization }
CustomSprites >> initialize [  

	super initialize.
	filename := ''. 
	form := Form new.
]

{ #category : #initialization }
CustomSprites >> initializeFilename: string [ 
	filename := string.
	self initializeFormWithFilename
]

{ #category : #initialization }
CustomSprites >> initializeFormWithFilename [ 
	form:=PNGReadWriter formFromFileNamed: filename 
]

{ #category : #initialization }
CustomSprites >> initializeSpriteBasicSize [
	spriteBasicSize := 64
	
"to be defined for each particular case"
]

{ #category : #initialization }
CustomSprites >> initializeSpritesCollection [
	spritesCollection:=OrderedCollection new.

]

{ #category : #accessing }
CustomSprites >> spriteBasicSize [
^ spriteBasicSize 

]

{ #category : #accessing }
CustomSprites >> spritesCollection [
^ spritesCollection
]
