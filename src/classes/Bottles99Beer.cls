public with sharing class Bottles99Beer {

	public static String FIRST_LINE_FIRST_SENTENCE = 'COUNT_BOTTLES of beer on the wall, ';
	public static String FIRST_LINE_SECOND_SENTENCE = 'COUNT_BOTTLES of beer.\n';
	public static final String TAKE_ONE_DOWN_SENTENCE = 'Take one down and pass it around, ';
	public static final String TAKE_IT_DOWN_SENTENCE = 'Take it down and pass it around, ';
	public static final String GO_TO_THE_STORE_SENTENCE = 'Go to the store and buy some more, ';
	public static String ENDING_SENTENCE = 'COUNT_BOTTLES of beer on the wall.\n';

	public Bottles99Beer() {}

	public static String getVerse(Integer count){
		String firstLineFirstSentenceReplacement = getBottlesText(count, true);
		String firstLine = FIRST_LINE_FIRST_SENTENCE.replaceFirst('(COUNT_BOTTLES)', String.valueOf(firstLineFirstSentenceReplacement));

		String firstLineSecondSentenceReplacement = getBottlesText(count, false);
		firstLine += FIRST_LINE_SECOND_SENTENCE.replaceFirst('(COUNT_BOTTLES)', String.valueOf(firstLineSecondSentenceReplacement));

		String midSentence = getMidSentence(count);

		String secondLineEnding;
		if(count > 0){
			String secondLineReplacement = getBottlesText(count - 1, false);
			secondLineEnding = ENDING_SENTENCE.replaceFirst('(COUNT_BOTTLES)', secondLineReplacement);
		} else {
			String secondLineReplacement = getBottlesText(99, false);
			secondLineEnding = ENDING_SENTENCE.replaceFirst('(COUNT_BOTTLES)', secondLineReplacement);
		}
		String verse = firstLine + midSentence + secondLineEnding;

		return verse;
	}

	public static String getBottlesText(Integer count, Boolean firstWord){
		String text;
		if(count > 1){
			text = count + ' bottles';
		} else if(count == 1){
			text = count + ' bottle';
		} else if(count == 0){
			if(firstWord){
				text = 'No';
			} else {
				text = 'no';
			}
			text += ' more bottles';
		}

		return text;
	}

	public static String getMidSentence(Integer count){
		String text = TAKE_ONE_DOWN_SENTENCE;
		if(count == 1)
			text = TAKE_IT_DOWN_SENTENCE;
		else if(count == 0)
			text = GO_TO_THE_STORE_SENTENCE;

		return text;
	}
}