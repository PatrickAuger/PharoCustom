Class {
	#name : #DiceTest,
	#superclass : #TestCase,
	#category : #'CustomThingsMOOC-dices'
}

{ #category : #tests }
DiceTest >> testCreationIsOk [

	|d|
	d := Dice withFaces:20.
	^ self assert: d faces equals: 20
]

{ #category : #tests }
DiceTest >> testInitializationIsOK [

	|d|
	d:= Dice new.
	self assert: d faces equals: 6
]

{ #category : #tests }
DiceTest >> testRolling [

	|d|
	d:= Dice new.
	100 timesRepeat: 
		[ self assert: (d roll between: 1 and: 6) ]
]
