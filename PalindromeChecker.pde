public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true){println(lines[i] + " IS a palidrome.");}
    else{println(lines[i] + " is NOT a palidrome.");}
  }
}

public boolean palindrome(String word)
{
 if(lowerSpace(word).equals(reverse(word)))
   return true;
 return false;
}

public String lowerSpace(String word)
{
  String sLower = word.toLowerCase();
  String sNew = new String();
  for(int i=word.length()-1;i>-1;i--)
    if((Character.isLetter(word.charAt(i))==true))
      sNew = sNew + sLower.substring(i,i+1);
  return sNew;      
  
}



public String reverse(String str)
{
  String sLower = str.toLowerCase();
  String sNew = new String();
  for(int i=str.length()-1;i>-1;i--)
    if((Character.isLetter(str.charAt(i))==true))
      sNew = sNew + sLower.substring(i,i+1);
      System.out.println(sNew);
  return sNew;      
  
}