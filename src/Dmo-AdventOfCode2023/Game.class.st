"
a Game is a collection of CubesHandful with an Id
"
Class {
	#name : 'Game',
	#superclass : 'Object',
	#instVars : [
		'id',
		'longId',
		'gameAsString',
		'cubesHandfulls'
	],
	#category : 'Dmo-AdventOfCode2023-J21',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J21'
}

{ #category : 'instance creation' }
Game class >> from: aString [
|separateIdFromHandfullString handfullAsStringsCollection newGame |
"parse a line :
Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
and returns a new Game
"
newGame := self new.
newGame gameAsString: aString.
"gameAsString := aString."
separateIdFromHandfullString := newGame gameAsString findTokens: $:.

newGame longId: (separateIdFromHandfullString at:1). 
newGame id: (((newGame longId) findTokens: Character space) at: 2) asInteger .

handfullAsStringsCollection := (separateIdFromHandfullString at: 2) findTokens: $;.
handfullAsStringsCollection collect: [ :stringHandfull | CubesHandfull fromString: stringHandfull ] into: newGame cubesHandfulls .

^ newGame .
]

{ #category : 'accessing' }
Game >> cubesHandfulls [

	^ cubesHandfulls
]

{ #category : 'as yet unclassified' }
Game >> findMinimalPossibleBagForTheGame [
	"^ CubesHandfull red: 5 green: 6 blue: 10 ."

	| minimumSetHandfull |
	minimumSetHandfull := CubesHandfull new.
	self cubesHandfulls do: [ :each |
		self findMinimumBagFor: each comparedTo: minimumSetHandfull on: 'blue'.
		self findMinimumBagFor: each comparedTo: minimumSetHandfull on: 'green'.
		self findMinimumBagFor: each comparedTo: minimumSetHandfull on: 'red'.].

	^ minimumSetHandfull
]

{ #category : 'private' }
Game >> findMinimumBagFor: each comparedTo: minimumSetHandfull on: aColorString [

	(each handfull at: aColorString) > (minimumSetHandfull handfull at: aColorString)
		ifTrue: [
			minimumSetHandfull handfull
				at: aColorString
				put: (each handfull at: aColorString) ]
]

{ #category : 'accessing' }
Game >> gameAsString [

	^ gameAsString
]

{ #category : 'accessing' }
Game >> gameAsString: anObject [

	gameAsString := anObject
]

{ #category : 'accessing' }
Game >> id [

	^ id
]

{ #category : 'accessing' }
Game >> id: anObject [

	id := anObject
]

{ #category : 'initialization' }
Game >> initialize [ 

cubesHandfulls := OrderedCollection new.
]

{ #category : 'accessing' }
Game >> longId [

	^ longId
]

{ #category : 'accessing' }
Game >> longId: anObject [

	longId := anObject
]
