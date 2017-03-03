public with sharing class Bottles99Beer {

	public static String getSong(){
		String song = getVerses(99, 0);
		return song;
	}

	public static String getVerses(Integer bottlesFrom, Integer bottlesTo){
		List<String> verses = new List<String>();
		for(Integer i = 99; i >= 0; i--){
			verses.add(getVerse(i));
		}
		return String.join(verses, '\n');
	}

	public static String getVerse(Integer count){
		String verse;
		if(count > 2){
			verse = count + ' bottles of beer on the wall, ' +
					count + ' bottles of beer.\n' +
					'Take one down and pass it around, ' +
					(count - 1) + ' bottles of beer on the wall.';
		} else if(count == 2){
			verse = '2 bottles of beer on the wall, ' +
					'2 bottles of beer.\n' +
					'Take one down and pass it around, ' +
					'1 bottle of beer on the wall.';
		} else if(count == 1){
			verse = '1 bottle of beer on the wall, ' +
					'1 bottle of beer.\n' +
					'Take it down and pass it around, ' +
					'no more bottles of beer on the wall.';
		} else {
			verse = 'No more bottles of beer on the wall, ' +
					'no more bottles of beer.\n' +
					'Go to the store and buy some more, ' +
					'99 bottles of beer on the wall.';
		}

		return verse;
	}
}