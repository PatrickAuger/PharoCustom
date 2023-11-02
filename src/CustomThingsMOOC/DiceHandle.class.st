Class {
	#name : #DiceHandle,
	#superclass : #Object,
	#instVars : [
		'dices'
	],
	#category : #'CustomThingsMOOC-dices'
}

{ #category : #arithmetic }
DiceHandle >> + aDieHandle [

	|handleResult|
	handleResult := self.
	
	dices addAll: aDieHandle dices
	 
]

{ #category : #adding }
DiceHandle >> addDice: aDice [ 
	dices add: aDice
]

{ #category : #accessing }
DiceHandle >> diceNumber [
	^ dices size
]

{ #category : #accessing }
DiceHandle >> dices [
^ dices
]

{ #category : #initialization }
DiceHandle >> initialize [ 

	super initialize.
	dices := OrderedCollection new
]

{ #category : #initialization }
DiceHandle >> maxValue [

	|result|. result := 0.
	dices do: [ :each | result := result + each faces ].
	^result 
]

{ #category : #initialization }
DiceHandle >> roll [

	|result|. result := 0.
	dices do: [ :each | result := result + each roll ].
	^result 
]
