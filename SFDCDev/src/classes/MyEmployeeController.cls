public class MyEmployeeController {

    
    //private boolean savedOnce = false;
    @AuraEnabled
    public static List<Employee> saveMyEmployee(List<Employee> oldList , String newListStr)
    {
        
        system.debug('New List ..'+newListStr);
        List<Employee> newList1 = (List<Employee>)Json.deserialize(newListStr,List<Employee>.class);
        for(Employee e: newList1)
        {
            oldList.add(e);
        }
        
        //system.debug('List of Emps..'+oldList);
        return oldList;
    }
    
    @AuraEnabled
    public static List<Employee> getEmployeeList()
    {
        List<Employee> lst = new List<Employee>();
        lst.add(new Employee('Name1', 1000 , 15, 'M'));
        lst.add(new Employee('Name2', 2000 , 25, 'M'));
        return lst;
    }
    @AuraEnabled
    public static List<Employee> addNewEmpInList(List<Employee> empList, Boolean savedOnce)
    {
        empList.add(new Employee('',0,0,''));
        /*system.debug(' Boolean saved once' + savedOnce);
        if(savedOnce)
        {	
            system.debug('calling after once saving..');
            empList.clear();
            system.debug('Emp List after clear..'+empList);
            empList.add(new Employee('',0,0,''));
            savedOnce= false;
        }
        else
        {
            system.debug('calling not saved so far or not saved after first save....');
            empList.add(new Employee('',0,0,''));
        }*/
        system.debug('New List' + empList);
        return empList;
    }
    
}