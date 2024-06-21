Class {
	#name : 'GameSumCalculatorWithPostTreatmentTest',
	#superclass : 'TestCase',
	#category : 'Dmo-AdventOfCode2023-J22',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J22'
}

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testCOmputeMultilineDataset [

|game refHandful validator gameCalculator|

game := 
'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator postTreatment: [ :sum :each | sum + each id ] .

self assert:  gameCalculator  equals: 3.




]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testComputeMultilineDatasetOneLineValidOutOf2 [

|game refHandful validator gameCalculator|

game := 
'Game 1: 3 blue, 4 red; 1 red, 12 green, 6 blue; 2 green
Game 2: 3 blue, 4 red; 1 red, 10 green, 6 blue; 2 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator postTreatment: [ :sum :each | sum + each id ]  .

self assert:  gameCalculator  equals: 2.




]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testComputeMultilineDatasetTwoLineValidOutOf3 [

|game refHandful validator gameCalculator|

game := 
'Game 1: 3 blue, 4 red; 1 red, 9 green, 6 blue; 12 green
Game 2: 3 blue, 4 red; 1 red, 10 green, 6 blue; 5 green
Game 11: 3 blue, 4 red; 1 red, 10 green, 6 blue; 7 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self assert:  gameCalculator  equals: 13.




]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testNotValidateBlue [

|game refHandful validator gameCalculator|

game := 'Game 1: 14 blue'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self deny:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testNotValidateGreen [

|game refHandful validator gameCalculator|

game := 'Game 1: 14 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self deny:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testNotValidateRed [

|game refHandful validator gameCalculator|

game := 'Game 1: 14 red'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self deny:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testValidateBlue [

|game refHandful validator gameCalculator|

game := 'Game 1: 4 blue'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self assert:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testValidateDatasetWithOnlyOneLine [

|game refHandful validator gameCalculator|

game := 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self assert:  gameCalculator  equals: 1.




]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testValidateGreen [

|game refHandful validator gameCalculator|

game := 'Game 1: 4 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self assert:  gameCalculator  equals: 1.
]

{ #category : 'tests' }
GameSumCalculatorWithPostTreatmentTest >> testValidateRed [

|game refHandful validator gameCalculator|

game := 'Game 1: 4 red'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidator from: refHandful .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self assert:  gameCalculator  equals: 1.
]
