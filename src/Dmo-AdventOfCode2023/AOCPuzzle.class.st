Class {
	#name : #AOCPuzzle,
	#superclass : #Object,
	#category : #'Dmo-AdventOfCode2023'
}

{ #category : #accessing }
AOCPuzzle class >> computeJ1 [

	
	self subclassResponsibility
]

{ #category : #accessing }
AOCPuzzle class >> computeJ2 [

	self subclassResponsibility
]

{ #category : #testing }
AOCPuzzle class >> isAbstract [ 
^true
]
