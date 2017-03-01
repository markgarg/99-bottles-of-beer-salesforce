public with sharing class Bottles99Beer {

	public static String MULTIPLE_BOTTLES_VERSE = 
		'COUNT_BOTTLES bottles of beer on the wall, COUNT_BOTTLES bottles of beer.\n'
		+ 'Take one down and pass it around, COUNT_LESS_1 bottles of beer on the wall.\n';

	public Bottles99Beer() {}

	public Static String getFirstVerse(){
		String firstVerse = MULTIPLE_BOTTLES_VERSE;
		firstVerse = firstVerse.replaceAll('(COUNT_BOTTLES)', '99');
		firstVerse = firstVerse.replaceAll('(COUNT_LESS_1)', '98');

		return firstVerse;
	}

}