({
	"doInit" : function(cmp, event, helper) {
        console.log('success 0..');
		var act = cmp.get("c.getPositions");
        act.setCallback(this, function(resp)
        {
           if(resp.getState()==="SUCCESS")
           {
               	console.log('success 1..');
               	//alert("Result ::"+resp.getReturnValue());
        		cmp.set("v.poss" ,resp.getReturnValue());
               
               
               
               
               
           }
           else
           {
               alert(resp.getState());
           }
    	});
        $A.enqueueAction(act);
        
        
	} ,
    
    showDetail : function (cmp, event, helper){
    //var positionid = event.getSource().getLocalId();
    //var positionid = event.getSource().geAttribue("id");
    var positionid = event.target.id;
        
        alert("POs id "+ positionid);
    /*var eve = $A.get(e.c:PositionRecord);
    eve.setParam ("positionid", positionId);
    eve.fire();*/
    
}
    
    
})