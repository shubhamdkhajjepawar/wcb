/*
 * Test Class Name:-TestcontenVersionFilePreview
 */ 
public class contenVersionFilePreview {
    @AuraEnabled(cacheable = true)
    //public Static  List<ContentVersion> cvRecords2(String recId){
    public Static  List<Registration__c> cvRecords2(String recId){
        set<Id> SetIds = new Set<id>();
        List<Registration__c> resList =[select id,name, Status__c,Program__c,State__c,Owner.LastName,Owner_Name__c,Registration_Health__c,
										Start_Date__c,End_Date__c from Registration__c where Program__c=:recId];
        return resList;
	}
}