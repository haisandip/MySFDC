public with Sharing class MyPositionController {

    /*@AuraEnabled
    public static List<Position__C> getPositions()
    {
        List<Position__C> allPositions = [Select Id, Name from Position__C];
        system.debug('All Position .. '+allPositions);
        return allPositions;
        
        //return [Select Id, Name from Position__C];
    }
*/
    
    public  List<Position__C> allPositions{get ; set;}
    
    
      public void showAllPosition (){
        allPositions = [Select Id, Name from Position__C];
        //system.debug('All Position .. '+allPositions);
        //return null;
    }
    
}