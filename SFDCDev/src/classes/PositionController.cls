public class PositionController {

    @auraEnabled 
    public static List<Position__C> getFunctionalArea ()
    {
        List<Position__C> posiitons = new List<Position__C>();
        /*options.add(new SelectOption ('Finance', 'Finance'));
        options.add(new SelectOption ('Warehousing','Warehousing'));
        */
        return posiitons;
    }
    
}