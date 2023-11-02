Class {
	#name : #CustomTrue,
	#superclass : #CustomBoolean,
	#category : #'CustomThingsMOOC-boolean'
}

{ #category : #controlling }
CustomTrue >> ifFalseCustom: block [
^nil
]

{ #category : #controlling }
CustomTrue >> ifTrueCustom: block [
^block value "to activate the block evaluation"
]

{ #category : #controlling }
CustomTrue >> not [ 
^ CustomFalse new
]

{ #category : #printing }
CustomTrue >> printOn: aStream [

	aStream nextPutAll: 'true'
]

{ #category : #controlling }
CustomTrue >> | aBoolean [
^ self 
]
