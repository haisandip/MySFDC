({
    doInit :function(cmp, evt, helper) {
        var action = cmp.get("c.getEmployeeList");
        action.setCallback(cmp,function(response){
            if(response.getState()=="SUCCESS")
            {
                cmp.set("v.emps",response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    removeItem : function(cmp,evt,helper)
    {
        var list = cmp.get("v.newemps");
        list.splice(evt.target.id,1);
        cmp.set("v.newemps",list);
    }
    ,
    addnew : function (cmp,evt,helper)
    {
        
        /*var action = cmp.get("c.addNewEmpInList");
        action.setParam("empList",cmp.get("v.newemps"));
        action.setParam("savedOnce",false);
        action.setCallback(cmp,function(response){
            if(response.getState()=="SUCCESS")
            {
                cmp.set("v.newemps",response.getReturnValue());
                cmp.set("v.showAdd","true");
            }
        });
        $A.enqueueAction(action);
        */
        var emplist = cmp.get("v.newemps");
        emplist.push([{"name":"","age":0,"salary":0}]);
        cmp.set("v.newemps",emplist);
    }
    ,
    saveEmp : function(cmp,evt,helper){
        var action = cmp.get("c.saveMyEmployee");
        
        action.setParam("oldList",cmp.get("v.emps"));
        action.setParam("newListStr",JSON.stringify(cmp.get("v.newemps")));
        cmp.set("v.newemps",[]);
        action.setCallback(cmp,function(response){
            
            if(response.getState()=="SUCCESS")
            {
                cmp.set("v.emps",response.getReturnValue());
                cmp.set("v.showAdd","false");
                //cmp.set("v.savedOnce","true");
            }
        });
        $A.enqueueAction(action);
    }
    ,
    showHelp : function(cmp, evt, helper) {
        
        var cmptgt = cmp.find("help");
        $A.util.removeClass(cmptgt , "slds-hide");
        $A.util.addClass(cmptgt ,"slds-visible");
    }
    ,
    hideHelp : function(cmp, evt, helper) {
        var cmptgt = cmp.find("help");
        $A.util.addClass(cmptgt , "slds-hide");
        $A.util.removeClass(cmptgt ,"slds-visible");
    }
})