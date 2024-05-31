Class {
	#name : #GameSumCalculatorTest,
	#superclass : #TestCase,
	#category : #'Dmo-AdventOfCode2023-J21'
}

{ #category : #tests }
GameSumCalculatorTest >> testValidateHandfulWithOnlyOneColor [

|game refHandful validator gameCalculator|

game := 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'.
refHandful := CubesHandfull r:1 g:0 b:0.
validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: '' with: refHandful .

self assert:  gameCalculator  equals: 1.




]
