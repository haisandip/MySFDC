public class Employee {

    @AuraEnabled public String name{get;set;}
    @AuraEnabled public decimal salary{get;set;}
    @AuraEnabled public integer age{get;set;}
    @AuraEnabled public String gender{get;set;}
    @AuraEnabled public String[] hobby{get;set;}
    @AuraEnabled public Date joiningDate{get;set;}
    
    
    
    public Employee(String name, decimal salary , integer age, String gender)
    {
        this.name 			= name;
        this.salary 		= salary;
        this.age 			= age;
        this.gender 		= gender;
        //this.hobby 			= hobby;
        //this.joiningDate	= joiningDate;
    }
    
}