"
a cube handful is composed of red, green and blue cubes
"
Class {
	#name : #CubesHandfull,
	#superclass : #Object,
	#instVars : [
		'red',
		'green',
		'blue'
	],
	#category : #'Dmo-AdventOfCode2023-J21'
}

{ #category : #'instance creation' }
CubesHandfull class >> r: anIntR g: anIntG b: anIntB [

^ self new red: anIntR ; green: anIntG ; blue: anIntB 
]
