({
	calculate : function(cmp, event, helper) {
		helper.calculateHelper(cmp, event);
	},
    eventhandlemethod : function(cmp,event,helper)
    {
    	var bas = event.getParam("baseSalary");
        alert(event.getSource());
        var grossSal = bas*1.10 ;
        alert("gross Sal" + grossSal);
        cmp.find("grossSalaryOutput").set("v.value" ,grossSal);
    	
	}
})