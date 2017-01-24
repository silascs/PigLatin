public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int i = 0; i < sWord.length(); i++)
  	{
    	if (sWord.substring(i, i+1).equals("a"))
    	{
       		return i;
    	}
    	if (sWord.substring(i, i+1).equals("e"))
    	{
    		return i;
   		}
     	if (sWord.substring(i, i+1).equals("i"))
    	{
       		return i;
    	}
    	if (sWord.substring(i, i+1).equals("o"))
    	{
      		return i;
    	}
     	if (sWord.substring(i, i+1).equals("u"))
    	{
       		return i;
    	}
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}
	else if(sWord.substring(findFirstVowel(sWord), findFirstVowel(sWord)+1).equals("u") && sWord.substring(findFirstVowel(sWord)-1, findFirstVowel(sWord)).equals("q"))
	{
		return sWord.substring(findFirstVowel(sWord)+1) + sWord.substring(0, findFirstVowel(sWord)+1) + "ay";
	}
	else
	{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}
}
