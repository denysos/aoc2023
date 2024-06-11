"
answer 'true' if the Game is possible, else 'false'
"
Class {
	#name : 'GameValidator',
	#superclass : 'Object',
	#instVars : [
		'referenceCubeHandful'
	],
	#category : 'Dmo-AdventOfCode2023-J21',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J21'
}

{ #category : 'instance creation' }
GameValidator class >> from: aCubeHandful [
| |

^ self new referenceCubeHandful: aCubeHandful 


]

{ #category : 'accessing' }
GameValidator >> referenceCubeHandful [

	^ referenceCubeHandful
]

{ #category : 'accessing' }
GameValidator >> referenceCubeHandful: anObject [

	referenceCubeHandful := anObject
]

{ #category : 'testing' }
GameValidator >> validate: aGame [
	"^ aGame cubesHandfulls allSatisfy: [ :each | 
	((each handfull at: 'red' ifAbsent: 0) <= (referenceCubeHandful at: 'red' ifAbsent: 0) 
	and: [ (each handfull at: 'green' ifAbsent: 0) <= (referenceCubeHandful at: 'green' ifAbsent: 0) ])  
	and: [ (each handfull at: 'blue' ifAbsent: 0) <= (referenceCubeHandful at: 'blue' ifAbsent: 0) ]
	] "

	^ aGame cubesHandfulls allSatisfy: [ :each |
		  each handfull keys allSatisfy: [ :cubeColor |
			  (each handfull at: cubeColor)
			  <= ((referenceCubeHandful handfull) at: cubeColor ifAbsent: 0) ] ]
]
