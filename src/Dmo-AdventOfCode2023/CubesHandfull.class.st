"
a cube handful is composed of red, green and blue cubes
"
Class {
	#name : 'CubesHandfull',
	#superclass : 'Object',
	#instVars : [
		'handfull'
	],
	#category : 'Dmo-AdventOfCode2023-J21',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J21'
}

{ #category : 'instance creation' }
CubesHandfull class >> fromString: aString [

"créé une nouvelle instance à partir d'une chaine de caractère
du type : '12 red, 13 green, 14 blue'"

	| splitedHandfullCollection newCubeHandfull |
	newCubeHandfull := self new.

	splitedHandfullCollection := aString findTokens: $,.
	splitedHandfullCollection do: [ :colorWithValue |
		| colorAndValue |
		colorAndValue := colorWithValue findTokens: Character space.
		(#( 'blue' 'red' 'green' ) anySatisfy: [ :each |
			each = ((colorAndValue at: 2) 
			) ]) ifTrue: [
			newCubeHandfull handfull
				at: ((colorAndValue at: 2) 
				)
				put: ((colorAndValue at: 1) 
				) asInteger ] ].

	^ newCubeHandfull
]

{ #category : 'as yet unclassified' }
CubesHandfull class >> red: anIntRed green: anIntGreen blue: anIntBlue [

|newCubeHandfull|

newCubeHandfull := self new.
(newCubeHandfull handfull ) at: 'red' put: anIntRed ;
									at: 'green' put: anIntGreen ;
									at: 'blue' put: anIntBlue.
									
^ newCubeHandfull
]

{ #category : 'accessing' }
CubesHandfull >> handfull [

	^ handfull
]

{ #category : 'accessing' }
CubesHandfull >> handfull: anObject [

	handfull := anObject
]

{ #category : 'initialization' }
CubesHandfull >> initialize [ 

self handfull: Dictionary new.
]
