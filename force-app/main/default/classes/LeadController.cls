public class LeadController {
    @AuraEnabled
    public static Lead createLead(Lead lead){
        system.debug('Lead-->'+Lead);
        upsert lead;
        return lead;
    }

}