Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'CustomThingsMOOC-counter'
}

{ #category : #accessing }
Counter >> count [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [

	count:= anInteger 
]

{ #category : #affecting }
Counter >> decrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	count := count - 1
]

{ #category : #affecting }
Counter >> increment [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	count := count + 1
]
