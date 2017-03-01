@isTest
public with sharing class Bottles99BeerTest {
	
	@isTest
	static void testFirstVerse(){
		String expectedVerse = '99 bottles of beer on the wall, 99 bottles of beer.\n'
								+ 'Take one down and pass it around, 98 bottles of beer on the wall.\n';
		String firstVerse = Bottles99Beer.getVerse(99);
		System.assertEquals(expectedVerse, firstVerse);
	}

	@isTest
	static void testAnotherVerse(){
		String expectedVerse = '89 bottles of beer on the wall, 89 bottles of beer.\n'
								+ 'Take one down and pass it around, 88 bottles of beer on the wall.\n';
		String verse = Bottles99Beer.getVerse(89);
		System.assertEquals(expectedVerse, verse);
	}

	@isTest
	static void testVerseForTwoBottles(){
		String expectedVerse = '2 bottles of beer on the wall, 2 bottles of beer.\n'
								+ 'Take one down and pass it around, 1 bottle of beer on the wall.\n';
		String verse = Bottles99Beer.getVerse(2);
		System.assertEquals(expectedVerse, verse);
	}

	@isTest
	static void testVerseForOneBottle(){
		String expectedVerse = '1 bottle of beer on the wall, 1 bottle of beer.\n'
								+ 'Take it down and pass it around, no more bottles of beer on the wall.\n';
		String verse = Bottles99Beer.getVerse(1);
		System.assertEquals(expectedVerse, verse);
	}
}