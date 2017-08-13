public class MyAccountController {
    
    Account ac ;
    public MyAccountController (ApexPages.StandardController ctrl)
    {
        this.ac = (Account)ctrl.getRecord();
        system.debug( 'Called Account Constrcutor');
    }
    
    public void save()
    {
        system.debug('in Save ()');
    }
}