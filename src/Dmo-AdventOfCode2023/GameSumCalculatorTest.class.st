Class {
	#name : 'GameSumCalculatorTest',
	#superclass : 'TestCase',
	#category : 'Dmo-AdventOfCode2023-J21',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J21'
}

{ #category : 'tests' }
GameSumCalculatorTest >> testNotValidateBlue [

|game refHandful validator gameCalculator|

game := 'Game 1: 14 blue'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self deny:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorTest >> testNotValidateGreen [

|game refHandful validator gameCalculator|

game := 'Game 1: 14 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self deny:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorTest >> testNotValidateRed [

|game refHandful validator gameCalculator|

game := 'Game 1: 14 red'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self deny:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorTest >> testValidateBlue [

|game refHandful validator gameCalculator|

game := 'Game 1: 4 blue'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorTest >> testValidateGreen [

|game refHandful validator gameCalculator|

game := 'Game 1: 4 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorTest >> testValidateHandfulWithOnlyOneColor [

|game refHandful validator gameCalculator|

game := 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 1.




]

{ #category : 'tests' }
GameSumCalculatorTest >> testValidateRed [

|game refHandful validator gameCalculator|

game := 'Game 1: 4 red'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 1.
]
