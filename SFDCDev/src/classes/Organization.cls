public class Organization
{
    public class Employee
    {
        public String name;
        public Integer salary;
    }
    public Class Building
    {
        public String buildingName;
        public Integer floor;
    }
    
    Public Class RequestType
    {
        public Employee e;
        public Building b;
    }
    
    public RequestType getRequest()
    {
        RequestType req = new RequestType ();
        Employee  e1 = new Employee();
        e1.name= 'ABC';
        e1.salary=1000;
        Building b1 = new Building();
        b1.buildingName='DLF';
        b1.floor=5;
        req.e = e1;
        req.b=b1;
        system.debug(req .toString());
        return req;
    }
    
}