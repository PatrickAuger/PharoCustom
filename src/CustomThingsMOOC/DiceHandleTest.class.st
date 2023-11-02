Class {
	#name : #DiceHandleTest,
	#superclass : #TestCase,
	#category : #'CustomThingsMOOC-dices'
}

{ #category : #tests }
DiceHandleTest >> testAddition [

	|handle|
	handle := DiceHandle new addDice: (Dice withFaces: 6).
	handle addDice: (Dice withFaces: 10).
	
	handle + DiceHandle new addDice: (Dice withFaces: 4).
	
	self assert: handle diceNumber equals: 3.
	self assert: handle  maxValue equals: 20
]

{ #category : #tests }
DiceHandleTest >> testCreationAndAddingIsOk [

	|h|
	h := DiceHandle new addDice: (Dice withFaces: 6).
	self assert: h diceNumber equals: 1.
	h addDice: (Dice withFaces: 6).
	self assert: h diceNumber equals: 2
]

{ #category : #tests }
DiceHandleTest >> testMaxValue [ 

	|handle|
	handle := DiceHandle new addDice: (Dice withFaces: 6).
	handle addDice: (Dice withFaces: 10).
	self assert: handle maxValue equals:16
]

{ #category : #tests }
DiceHandleTest >> testRoll [

	|handle|
	handle := DiceHandle new addDice: (Dice withFaces: 6).
	handle addDice: (Dice withFaces: 10).
	100 timesRepeat: 
		[ self assert: (handle roll between:  handle diceNumber and: handle maxValue) ]
	
]
