public class FileHandler {

    public blob myFileContent {get;set;}
    public String accountid = '0019000001q5N5H';
    public String fileName {get;set;}
    public Filehandler()
    {
        //fileName = 'MyuploadedFile';
    }
    public PageReference saveFile()
    {
        
        readFile();
        
        
        
        Attachment att = new Attachment();
        att.ParentId =accountid;
        att.Body = myFileContent;
        att.Name=fileName;
        insert att;
        
        return new PageReference('/'+accountid);
    }
    public void readFile()
    {
        String content = myFileContent.toString();
        List<String> lines = content.split('\n');
        integer i =0;
        for(String str :lines)
        {
            system.debug('Each Line' +str);
            if(i>0)
            {	List<String > val = str.split(',');
                
            }
        }
        
        
    }
    
    
        
        
    
    
}