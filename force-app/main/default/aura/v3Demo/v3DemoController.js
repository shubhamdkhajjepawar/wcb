({
    onInit: function (component, event, helper){ 
        document.addEventListener("grecaptchaVerified", function(e) {
            if (e.detail.action !== 'submitCase') {
                return;
            }
            
            var action = component.get("c.insertRecord");
            action.setParams({
                record: null, //TODO: map UI fields to sobject
                recaptchaResponse: e.detail.response
            });
            
            action.setCallback(this, function(response) {
                var state = response.getState();
                if (state === "SUCCESS") {
                    var result = response.getReturnValue();
                    alert(result);
                } else {
                    var errors = response.getError();
                    if (errors) {
                        console.log(errors[0]);
                    }
                }
            });
            
            $A.getCallback(function() {
                 $A.enqueueAction(action);
            })(); 
        }); 
    },
    doSubmit: function (component, event, helper){
        document.dispatchEvent(new CustomEvent("grecaptchaExecute", {"detail": {action: "submitCase"}}));
    }
})