Class {
	#name : #CustomFalse,
	#superclass : #CustomBoolean,
	#category : #'CustomThingsMOOC-boolean'
}

{ #category : #controlling }
CustomFalse >> ifFalseCustom: block [
^block value
]

{ #category : #controlling }
CustomFalse >> ifTrueCustom: block [
^nil
]

{ #category : #controlling }
CustomFalse >> not [ 
^ CustomTrue new
]

{ #category : #printing }
CustomFalse >> printOn: aStream [

	aStream nextPutAll: 'false'
]

{ #category : #controlling }
CustomFalse >> | aBoolean [
^ aBoolean
]
