trigger shareFilesWithCommunityUsers on ContentDocumentLink ( before insert /*,before update,after insert,after update*/) {
   /* Schema.DescribeSObjectResult r = program__c.sObjectType.getDescribe();
    Schema.DescribeSObjectResult r1 = Registration__c.sObjectType.getDescribe();
    system.debug('r1-->'+r1);
    String keyPrefix = r.getKeyPrefix();
	String keyPrefix1 = r1.getKeyPrefix();
    system.debug('keyPrefix1-->'+keyPrefix1);  
    //List<ContentVersion> cvList =[select id,Share_to_community_user__c from ContentVersion where Share_to_community_user__c=:true and id in: trigger.new];
    for(ContentDocumentLink cdl:trigger.new){
        if((String.valueOf(cdl.LinkedEntityId)).startsWith(keyPrefix) || (String.valueOf(cdl.LinkedEntityId)).startsWith(keyPrefix1)){
            system.debug('Insert Into lopp-->'); 
          cdl.ShareType = 'I';
          cdl.Visibility = 'AllUsers';
          } 
       }*/
    
    /*system.debug('Trigger.New'+Trigger.New);
    If(Trigger.isUpdate && Trigger.isAfter){
    List<ContentVersion> rIdO = new List<ContentVersion>();
    List<String> rId=new List<String>();
     List<Id> cId =new List<Id>();
        for(ContentDocumentLink r1: Trigger.new)
        {
            rId.add(r1.ContentDocumentId);
            system.debug('Linked Entity id'+r1.ContentDocumentId);
        }
        System.debug('rId'+rId);
        
    List<ContentVersion> articles = [Select Id,Title,Description,Share_to_community_user__c,ContentDocumentId,FileType,FileExtension from ContentVersion 
                                     where ContentDocumentId in:rId and Share_to_community_user__c=: true];
       system.debug('articles'+articles);
        for(ContentVersion c:articles)
        {
            system.debug('ContentDocumentId'+c.ContentDocumentId);
            cId.add(c.Id);
        }
        system.debug('cId'+cId);
        
   }*/
		
}