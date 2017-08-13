public class MyController {
    public Id selectedAccount {get ; set;}
    public List<Contact> contactInformation {get ; set;}
    
    public List<Account> getMyaccounts() {
        return [select id,name,accountnumber from account order by lastmodifieddate desc limit 10];
    }

    public void accountClicked() {
        contactInformation = [SELECT FirstName, LastName FROM Contact
        WHERE AccountID = :selectedAccount];
        
    }


}