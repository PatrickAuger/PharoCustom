Class {
	#name : #CustomSpritesTest,
	#superclass : #TestCase,
	#category : #'CustomThingsMOOC-challenge2'
}

{ #category : #tests }
CustomSpritesTest >> testCreation [

|s|
s:= CustomSprites new.
s initializeFilename: '/home/patagr/Documents/TheseAID/pharo/pharo_mooc/W3_challenge_2_sprites.png'.

s initializeSpritesCollection.
self assert: s spritesCollection isEmptyOrNil 
]

{ #category : #tests }
CustomSpritesTest >> testSpriteFirstCut [

|s si|
s:= CustomSprites new.
s initializeFilename: '/home/patagr/Documents/TheseAID/pharo/pharo_mooc/W3_challenge_2_sprites.png'.

s initializeSpriteBasicSize. s initializeSpritesCollection.  si:= s spriteBasicSize.

0 to: s form width - si by: si do: [ :px | 
	0 to: s form height - si by: si do: [:py |
		s extractSpriteAtPx: px py: py
		]].

self assert: s spritesCollection size equals: (s form width // si) * (s form height // si)
]
