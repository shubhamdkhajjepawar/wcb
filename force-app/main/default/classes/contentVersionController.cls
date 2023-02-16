/*
 * Test Class Name:-TestContentVersionController
 */


public with sharing class contentVersionController {

    /*@AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(String accId) {
        return [
            SELECT AccountId, Id, FirstName, LastName, Title, Phone, Email,Testing__c
            FROM Contact
            WHERE AccountId = :accId
            WITH SECURITY_ENFORCED
        ];
    }*/
     @AuraEnabled(cacheable=true)
    public static List<ContentVersion> getConVersion(String accId) {
      /* return [
            SELECT Id,Title,Share_to_community_user__c,FirstPublishLocationId
            FROM ContentVersion
            WHERE FirstPublishLocationId  in :accId
            WITH SECURITY_ENFORCED
        ];*/
        List<ContentDocumentLink> cdl=[SELECT ContentDocumentId, LinkedEntityId  FROM   ContentDocumentLink  WHERE  LinkedEntityId =:accId];
		Set<Id> contentDocumentId = new Set<Id>();
            
        for(ContentDocumentLink c : cdl){
            contentDocumentId.add(c.ContentDocumentId);
        }        
        List<ContentVersion> cvList =[ SELECT Id,Title,Share_to_community_user__c,FirstPublishLocationId,Content_Document_Id__c,NetworkId,contentDocumentId
            FROM ContentVersion
            WHERE contentDocumentId=:contentDocumentId /*FirstPublishLocationId  = :accId or Content_Document_Id__c=:accId or NetworkId=:'0DB5300000000DPGAY' or NetworkId=:''*/
            WITH SECURITY_ENFORCED
                                     ];
        system.debug('cvList'+cvList);
        system.debug('cvList size'+cvList.size());
        return cvList;
    }
}