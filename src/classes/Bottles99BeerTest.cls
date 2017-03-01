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
}