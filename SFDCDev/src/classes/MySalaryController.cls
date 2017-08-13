public class MySalaryController {

    @AuraEnabled
    public String getFunc()
    {
        
        /*List<NameValue> lstNameValue = new List<NameValue>();
        lstNameValue.add(new NameValue('Finance' , 'Fin'));
        lstNameValue.add(new NameValue('Human Resource' , 'HR'));
        lstNameValue.add(new NameValue('Information Technology' , 'IT'));
        */
        return  'lstNameValue';       
    }
    
    /*public class NameValue {
        
        public String name {get;set;}
        public String value {get;set;}
        
        public NameValue(String n, String v)
        {
            this.name = n;
            this.value=v;
        }
    }*/
    
}