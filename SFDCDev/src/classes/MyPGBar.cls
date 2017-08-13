public with sharing class MyPGBar {

   public integer completion {get;set;}
   
   public MyPGBar ()
   {
       completion = 1;
   }
   public void processBar()
   {
       
       if (completion ==1 || completion <100 )
       {
           completion = (completion + completion*2);
           if (completion > 100)
               completion = 100;
       }
       
   }
}