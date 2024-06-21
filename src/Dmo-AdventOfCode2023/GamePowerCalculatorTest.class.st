Class {
	#name : 'GamePowerCalculatorTest',
	#superclass : 'TestCase',
	#category : 'Dmo-AdventOfCode2023-J22',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J22'
}

{ #category : 'tests' }
GamePowerCalculatorTest >> testNoValidationIfNoValidationValidatorUsed [

|game refHandful validator gameCalculator|

game := 
'Game 1: 3 blue, 4 red; 1 red, 9 green, 6 blue; 12 green
Game 2: 3 blue, 4 red; 1 red, 10 green, 6 blue; 5 green
Game 11: 3 blue, 4 red; 1 red, 10 green, 6 blue; 7 green'.
refHandful := CubesHandfull red: 10 green: 10 blue: 10.

validator := GameValidatorAlwaysValid from: nil .
gameCalculator := (GameSumCalculator new) compute: game with: validator  postTreatment: [ :sum :each | sum + each id ] .

self assert:  gameCalculator  equals: 14.
]

{ #category : 'tests' }
GamePowerCalculatorTest >> testPowerWith2LinesThreeColors [
"si un nombre de cube est nul pour une couleur, alors la puissance est considérée comme nulle
3 blue, 0 red, 0 green --> 3 x 0 x 0 = 0 "

	| game refHandful validator gameCalculator |
	game := 'Game 2: 3 blue, 5 red, 6 green
	Game 5: 1 blue, 2 red, 3 green'.
	"refHandful := CubesHandfull red: 10 green: 10 blue: 10."

	validator := GameValidatorAlwaysValid from: nil.
	gameCalculator := GameSumCalculator new
		                  compute: game
		                  with: validator
		                  postTreatment: [ :sum :each | sum + (each findMinimalPossibleBagForTheGame ) computePower ].

	self assert: gameCalculator equals: 96
]

{ #category : 'tests' }
GamePowerCalculatorTest >> testPowerWithOneLine2Handfulls [
"si un nombre de cube est nul pour une couleur, alors la puissance est considérée comme nulle
3 blue, 0 red, 0 green --> 3 x 0 x 0 = 0 "

	| game refHandful validator gameCalculator |
	game := 'Game 2: 3 blue, 5 red, 6 green; 10 blue'.   "--> minimum set = 10 blue, 5 red, 6 green --> power = 300"
	"refHandful := CubesHandfull red: 10 green: 10 blue: 10."

	validator := GameValidatorAlwaysValid from: nil.
	gameCalculator := GameSumCalculator new
		                  compute: game
		                  with: validator
		                  postTreatment: [ :sum :each | sum + (each findMinimalPossibleBagForTheGame ) computePower ].

	self assert: gameCalculator equals: 300
]

{ #category : 'tests' }
GamePowerCalculatorTest >> testPowerWithOneLineOneColor [
"si un nombre de cube est nul pour une couleur, alors la puissance est considérée comme nulle
3 blue, 0 red, 0 green --> 3 x 0 x 0 = 0 "

	| game refHandful validator gameCalculator |
	game := 'Game 2: 3 blue'.
	"refHandful := CubesHandfull red: 10 green: 10 blue: 10."

	validator := GameValidatorAlwaysValid from: nil.
	gameCalculator := GameSumCalculator new
		                  compute: game
		                  with: validator
		                  postTreatment: [ :sum :each | sum + (each findMinimalPossibleBagForTheGame ) computePower ].

	self assert: gameCalculator equals: 0
]

{ #category : 'tests' }
GamePowerCalculatorTest >> testPowerWithOneLineThreeColors [
"si un nombre de cube est nul pour une couleur, alors la puissance est considérée comme nulle
3 blue, 0 red, 0 green --> 3 x 0 x 0 = 0 "

	| game refHandful validator gameCalculator |
	game := 'Game 2: 3 blue, 5 red, 6 green'.
	"refHandful := CubesHandfull red: 10 green: 10 blue: 10."

	validator := GameValidatorAlwaysValid from: nil.
	gameCalculator := GameSumCalculator new
		                  compute: game
		                  with: validator
		                  postTreatment: [ :sum :each | sum + (each findMinimalPossibleBagForTheGame ) computePower ].

	self assert: gameCalculator equals: 90
]

{ #category : 'tests' }
GamePowerCalculatorTest >> testPowerWithTwoLines2Handfulls [
"si un nombre de cube est nul pour une couleur, alors la puissance est considérée comme nulle
3 blue, 0 red, 0 green --> 3 x 0 x 0 = 0 "

	| game refHandful validator gameCalculator |
	game := 'Game 2: 3 blue, 5 red, 6 green; 10 blue 
	Game 5: 3 blue, 5 red, 6 green; 1 blue, 6 red'.   
"game 2 --> minimum set = 10 blue, 5 red, 6 green --> power = 300"
"game 5 --> minimum set = 3 blue, 6 red, 6 green --> power = 108"
	validator := GameValidatorAlwaysValid from: nil.
	gameCalculator := GameSumCalculator new
		                  compute: game
		                  with: validator
		                  postTreatment: [ :sum :each | sum + (each findMinimalPossibleBagForTheGame ) computePower ].

	self assert: gameCalculator equals: 408
]
