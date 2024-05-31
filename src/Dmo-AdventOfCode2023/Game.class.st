"
a Game is a collection of CubesHandful with an Id
"
Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'id'
	],
	#category : #'Dmo-AdventOfCode2023-J21'
}

{ #category : #'instance creation' }
Game class >> from: aString [
"parse a line :
Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
and returns a new Game
"

^ Game new
]

{ #category : #accessing }
Game >> id [

	^ id
]

{ #category : #accessing }
Game >> id: anObject [

	id := anObject
]
