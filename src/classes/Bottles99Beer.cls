public with sharing class Bottles99Beer {

	public static String MULTIPLE_BOTTLES_VERSE = 
		'COUNT_BOTTLES bottles of beer on the wall, COUNT_BOTTLES bottles of beer.\n'
		+ 'Take one down and pass it around, COUNT_LESS_1 bottles of beer on the wall.\n';

	public Bottles99Beer() {}

	public Static String getVerse(Integer count){
		String verse = MULTIPLE_BOTTLES_VERSE;
		verse = verse.replaceAll('(COUNT_BOTTLES)', String.valueOf(count));
		verse = verse.replaceAll('(COUNT_LESS_1)', String.valueOf(count - 1));

		return verse;
	}

}