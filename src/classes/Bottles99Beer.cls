public with sharing class Bottles99Beer {

	public static String FIRST_LINE = 'COUNT_BOTTLES of beer on the wall, COUNT_BOTTLES of beer.\n';
	public static final String TAKE_ONE_DOWN_SENTENCE = 'Take one down and pass it around, ';
	public static final String GO_TO_THE_STORE_SENTENCE = 'Go to the store and buy some more, ';
	public static String LAST_SENTENCE = 'COUNT_LESS_1 of beer on the wall.\n';

	public Bottles99Beer() {}

	public Static String getVerse(Integer count){
		String countBottlesText = count + ' bottles';
		String firstLine = FIRST_LINE.replaceAll('(COUNT_BOTTLES)', String.valueOf(countBottlesText));

		String countLess1Text = (count - 1) + ' bottles';
		if(count == 2){
			countLess1Text = (count - 1) + ' bottle';
		}

		String lastSentence = LAST_SENTENCE.replaceAll('(COUNT_LESS_1)', countLess1Text);

		String verse = firstLine + TAKE_ONE_DOWN_SENTENCE + lastSentence;
		
		return verse;
	}

}