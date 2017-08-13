public class MyPosController {
    
    public Position__C pos;

    public MyPosController(ApexPages.StandardController controller) {
        pos = (Position__C)controller.getRecord();

    }
    public void save()
    {
        system.debug('helloooooooooooooooooooo');
        system.debug('Max Pay :' +pos.max_pay__C);
        
        Position__C obj = new Position__C();
        obj.name='My Pos';
        obj.Max_Pay__C = pos.max_pay__C;
        obj.Min_Pay__C = pos.min_pay__C;
        try
        {
            insert obj;
        }
        catch(Exception e)
        {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.ERROR,'hahahaha') );
            ApexPages.addMessages(e);
            ApexPages.addMessage(new ApexPages.Message(ApexPages.severity.WARNING,'hihihihi') );
            //ApexPages.addMessage('e2');
            
        }
        
    }

}