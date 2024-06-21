"
answer 'true' if the Game is possible, else 'false'
"
Class {
	#name : 'GameValidatorAlwaysValid',
	#superclass : 'Object',
	#instVars : [
		'referenceCubeHandful'
	],
	#category : 'Dmo-AdventOfCode2023-J22',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J22'
}

{ #category : 'instance creation' }
GameValidatorAlwaysValid class >> from: aCubeHandful [
| |

^ self new referenceCubeHandful: aCubeHandful 


]

{ #category : 'accessing' }
GameValidatorAlwaysValid >> referenceCubeHandful [

	^ referenceCubeHandful
]

{ #category : 'accessing' }
GameValidatorAlwaysValid >> referenceCubeHandful: anObject [

	referenceCubeHandful := anObject
]

{ #category : 'testing' }
GameValidatorAlwaysValid >> validate: aGame [
"all games are valid"

^ true
]
