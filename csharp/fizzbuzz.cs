using System;

public class Test
{
  public static void Main()
  {
    for(var i = 0; i < 100; i++) {
     var msg = "";
     if(i % 3 == 0){
       msg += "fizz";
     } 
     if(i % 5 == 0){
       msg += "buzz";
     }
     if(msg == ""){
       Console.WriteLine(i);
       continue;
     }
     Console.WriteLine(msg);
    }
  }
}  
