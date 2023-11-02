Class {
	#name : #CustomBoolean,
	#superclass : #Object,
	#category : #'CustomThingsMOOC-boolean'
}

{ #category : #controlling }
CustomBoolean >> ifFalseCustom: block [
self subclassResponsibility
 
]

{ #category : #controlling }
CustomBoolean >> ifTrueCustom: block [
self subclassResponsibility
 
]

{ #category : #controlling }
CustomBoolean >> not [
self  subclassResponsibility
 
]

{ #category : #controlling }
CustomBoolean >> | aBoolean [
self  subclassResponsibility

]
