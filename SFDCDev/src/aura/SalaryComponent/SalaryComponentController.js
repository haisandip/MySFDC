({
	doInit : function(cmp, event, helper) {
		alert('call init...');
        var act = cmp.get("c.getFunc");
        alert('got method...');
        act.setCallback(this, function(response){
            alert('call setback...');
			var state = response.getState();
            if(state=="SUCCESS")
            {
                alert();
                cmp.set("v.funcAreaOptions" , response.getReturnValue());
            }
            
        });
        $A.enqueueAction(act);
	}
})