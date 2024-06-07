Class {
	#name : 'CalibrationLine',
	#superclass : 'Object',
	#instVars : [
		'foundStringsForInput',
		'collectionOfLineMatches',
		'stringsCollectionForCalibration'
	],
	#category : 'Dmo-AdventOfCode2023-J11andJ12',
	#package : 'Dmo-AdventOfCode2023',
	#tag : 'J11andJ12'
}

{ #category : 'initialize' }
CalibrationLine >> compute: aString with: anOrderedCollection [

	| matchedIntervals sortedKeys first last |
	"self listOfStringToFind do: [ :stringToTest | (RxMatcher for: (RxParser safelyParse: stringToTest)  ) matchingRangesIn:  aString]"
	self stringsCollectionForCalibration: anOrderedCollection.

	collectionOfLineMatches := Dictionary new.
	"stringToFind := stringsCollectionForCalibration first asString."
	
	
	stringsCollectionForCalibration do: [ :stringToFind |  
		matchedIntervals := self matchedIntervals: aString for: stringToFind.
	   matchedIntervals do: [ :mi |
		collectionOfLineMatches add: (mi first -> stringToFind) ].
		 ].
	
	sortedKeys := collectionOfLineMatches keysSortedSafely.
	first := sortedKeys first.
	last := sortedKeys last.

^ (((CalibrationComputer  digitValuesForCalibration ) at:  (collectionOfLineMatches at:first)) asString , ((CalibrationComputer  digitValuesForCalibration ) at: (collectionOfLineMatches at: last)) asString) asInteger   


]

{ #category : 'initialization' }
CalibrationLine >> initialize [ 

collectionOfLineMatches := OrderedCollection new.
]

{ #category : 'initialize' }
CalibrationLine >> matchedIntervals: aString for: aStringToFind [

	| matchedIntervals |
"	foundStrings := Dictionary new."
	

	matchedIntervals := (RxMatcher for:
		                     (RxParser safelyParse: aStringToFind))
		                    matchingRangesIn: aString.
	^ matchedIntervals
]

{ #category : 'initialize' }
CalibrationLine >> stringsCollectionForCalibration [

^ stringsCollectionForCalibration
]

{ #category : 'accessing' }
CalibrationLine >> stringsCollectionForCalibration: anOrderedCollectionOfStrings [

	stringsCollectionForCalibration := anOrderedCollectionOfStrings
]
