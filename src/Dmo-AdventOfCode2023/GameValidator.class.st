"
answer 'true' if the Game is possible, else 'false'
"
Class {
	#name : #GameValidator,
	#superclass : #Object,
	#instVars : [
		'referenceCubeHandful'
	],
	#category : #'Dmo-AdventOfCode2023-J21'
}

{ #category : #'instance creation' }
GameValidator class >> from: aCubeHandful [
| |


]

{ #category : #accessing }
GameValidator >> referenceCubeHandful [

	^ referenceCubeHandful
]

{ #category : #accessing }
GameValidator >> referenceCubeHandful: anObject [

	referenceCubeHandful := anObject
]

{ #category : #testing }
GameValidator >> validate: aGame [

^ false
]
