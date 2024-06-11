Class {
	#name : 'GameSumCalculatorTest',
	#superclass : 'TestCase',
	#category : 'Dmo-AdventOfCode2023-J21',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J21'
}

{ #category : 'tests' }
GameSumCalculatorTest >> testCOmputeMultilineDataset [

|game refHandful validator gameCalculator|

game := 
'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 3.




]

{ #category : 'tests' }
GameSumCalculatorTest >> testComputeMultilineDatasetOneLineValidOutOf2 [

|game refHandful validator gameCalculator|

game := 
'Game 1: 3 blue, 4 red; 1 red, 12 green, 6 blue; 2 green
Game 2: 3 blue, 4 red; 1 red, 10 green, 6 blue; 2 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 2.




]

{ #category : 'tests' }
GameSumCalculatorTest >> testComputeMultilineDatasetTwoLineValidOutOf3 [

|game refHandful validator gameCalculator|

game := 
'Game 1: 3 blue, 4 red; 1 red, 9 green, 6 blue; 12 green
Game 2: 3 blue, 4 red; 1 red, 10 green, 6 blue; 5 green
Game 11: 3 blue, 4 red; 1 red, 10 green, 6 blue; 7 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 13.




]

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
GameSumCalculatorTest >> testValidateDatasetWithOnlyOneLine [

|game refHandful validator gameCalculator|

game := 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'.
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
GameSumCalculatorTest >> testValidateRed [

|game refHandful validator gameCalculator|

game := 'Game 1: 4 red'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator .

self assert:  gameCalculator  equals: 1.
]
