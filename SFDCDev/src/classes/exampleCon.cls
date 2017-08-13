public class exampleCon {
String uname;
public String getUsername() {
return uname;
}
Public Map<String,String> m1 = new Map<String,String>();
public exampleCon ()
{
    
    insdata();
    
    
}
public PageReference sayHello() {
uname = UserInfo.getName();
return null;
}
public void setState(String n) {
state = n;
}
public String getState() {
return state;
}
public PageReference methodOne() {
return null;
}
private String state = 'no';


private void insdata()
{
    this.m1.put('1','XYZ');
    system.debug('Result ..'+m1.get('1'));
    system.debug('Result ...'+m1.get('2').capitalize());
    
}
}