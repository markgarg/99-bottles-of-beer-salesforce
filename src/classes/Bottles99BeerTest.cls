@isTest
public with sharing class Bottles99BeerTest {
	
	@isTest
	static void testFirstVerse(){
		String expectedVerse = '99 bottles of beer on the wall, 99 bottles of beer.\n'
								+ 'Take one down and pass it around, 98 bottles of beer on the wall.\n';
		String firstVerse = Bottles99Beer.getFirstVerse();
		System.assertEquals(expectedVerse, firstVerse);
	}
}