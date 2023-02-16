({
    handleCreateContact: function(component, event) {
        var saveContactAction = component.get("c.createLead");
            saveContactAction.setParams({
                "lead": component.get("v.newLead")
            });
        
        // Configure the response handler for the action
        saveContactAction.setCallback(this, function(response) {
            var state = response.getState();
            if(state === "SUCCESS") {
                component.set("v.message", "Thank you! for submitting your response. We will get back to you soon.");
            }
            else if (state === "ERROR") {
                console.log('Problem saving Lead, response state: ' + state);
            }
            else {
                console.log('Unknown problem, response state: ' + state);
            }
        });

        // Send the request to create the new contact
        $A.enqueueAction(saveContactAction);
    },
})