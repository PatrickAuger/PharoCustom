Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'CustomThingsMOOC-counter'
}

{ #category : #tests }
CounterTest >> testDecrement [

|c|
c:= Counter new.
c count: 2.
c decrement.
self assert: c count equals: 1
]

{ #category : #tests }
CounterTest >> testIncrement [

|c|
c:= Counter new.
c count: 2.
c increment.
self assert: c count equals: 3
]
