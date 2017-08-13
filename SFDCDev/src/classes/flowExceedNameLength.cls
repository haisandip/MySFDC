global class flowExceedNameLength implements Process.Plugin
{
    global Process.PluginResult invoke(Process.PluginRequest request)
    {
        String salu = (String) request.inputParameters.get('sal');
        String fname = (String) request.inputParameters.get('firstname');
        String lname = (String) request.inputParameters.get('lastname');
        system.debug('####: ' + salu + ' '+fname+' '+lname);
        //Your logic ie what you want the code to do
        
        integer d = 20;          
        
        // return to flow
        Map<string, object> rtnValue = new Map<string, object>();
        rtnValue.put('exceedlen', d);
        // Return result
        return new Process.PluginResult(rtnValue); 
    }
    //This is a must this defines all the inputs and output for apex plugin. You flow may not reference the class correctly if you do not define this.

    global Process.PluginDescribeResult describe() 
    { 
        Process.PluginDescribeResult result = new Process.PluginDescribeResult();
        result.inputParameters = new List<Process.PluginDescribeResult.InputParameter>
        {
            new Process.PluginDescribeResult.InputParameter('sal',Process.PluginDescribeResult.ParameterType.STRING, true),
            new Process.PluginDescribeResult.InputParameter('firstname',Process.PluginDescribeResult.ParameterType.STRING, true),
            new Process.PluginDescribeResult.InputParameter('lastname',Process.PluginDescribeResult.ParameterType.STRING, true)
        }; 

        result.outputParameters = new List<Process.PluginDescribeResult.OutputParameter>
        {
            new Process.PluginDescribeResult.OutputParameter('exceedlen',Process.PluginDescribeResult.ParameterType.INTEGER)
        };

        return result;
     }
}