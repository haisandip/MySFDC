({
	calculateHelper : function(cmp, event) {
		var baseSal = cmp.get("v.baseSalary");
        alert("base sal "+baseSal);
        /*var grossSal = baseSal*1.10 ;
        alert("gross Sal" + grossSal);
        cmp.find("grossSalaryOutput").set("v.value" ,grossSal);
        */
        var payeve = cmp.getEvent("payrollevt");
        payeve.setParam ("baseSalary",baseSal);
        payeve.fire();
		
	}
})