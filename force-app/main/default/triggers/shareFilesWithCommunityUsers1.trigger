trigger shareFilesWithCommunityUsers1 on ContentVersion (/*before insert,before update,*/after insert,after update) {
    system.debug('Trigger.New'+Trigger.New);
	/*if(Trigger.isInsert && Trigger.isAfter)
    {
        List<ContentVersion> cvList = new List<ContentVersion>();
        for(ContentVersion cv:trigger.new)
        {
            ContentVersion c=new contentVersion();
            c.Id=cv.Id;
            c.Content_Document_Id__c=cv.FirstPublishLocationId;
            cvList.add(c);
        }
        if(cvList.size()>0)
        {
            update cvList;
        }
    }*/
    If(Trigger.isUpdate && Trigger.isAfter){
        List<ContentVersion> rIdO = new List<ContentVersion>();
        List<String> rId=new List<String>();
        List<Id> cId =new List<Id>();
        List<Id> cId1 =new List<Id>();
        /*for(ContentDocumentLink r1: Trigger.new)
{
rId.add(r1.ContentDocumentId);
system.debug('Linked Entity id'+r1.ContentDocumentId);
}
System.debug('rId'+rId);*/
        
        List<ContentVersion> articles = [Select Id,Title,Description,Share_to_community_user__c,ContentDocumentId,FileType,FileExtension,owner.Profile.Name from ContentVersion 
                                         where Id in:Trigger.new /*and Share_to_community_user__c=: true*/];
        system.debug('articles'+articles);
        for(ContentVersion c:articles)
        {
            if(c.Share_to_community_user__c==true)
            {
                system.debug('ContentDocumentId'+c.ContentDocumentId);
                //cId.add(c.Id);
                cId.add(c.ContentDocumentId);
            }
            else if(c.Share_to_community_user__c==false && c.owner.Profile.Name != 'WC&B Customer users')
            {
                system.debug('ContentDocumentId  false'+c.ContentDocumentId);
                cId1.add(c.ContentDocumentId);
            }
        }
        system.debug('cId'+cId);
        system.debug('cId1'+cId1);
        List<ContentDocumentLink> cdlList=new List<ContentDocumentLink>();
        List<ContentDocumentLink> cdlList1=new List<ContentDocumentLink>();
        if(cId.size()>0)
        {
            cdlList=[SELECT Id, LinkedEntityId, ContentDocumentId, IsDeleted, SystemModstamp, ShareType, Visibility FROM ContentDocumentLink where ContentDocumentId in: cId];
        }
        else if(cId1.size()>0)
        {
            cdlList1=[SELECT Id, LinkedEntityId, ContentDocumentId, IsDeleted, SystemModstamp, ShareType, Visibility FROM ContentDocumentLink where ContentDocumentId in: cId1];
        }
        system.debug('cdlList'+cdlList);
        system.debug('cdlList1'+cdlList1);
        List<ContentDocumentLink> toUpdate = new List<ContentDocumentLink>();
        Schema.DescribeSObjectResult r = program__c.sObjectType.getDescribe();
        Schema.DescribeSObjectResult r1 = Registration__c.sObjectType.getDescribe();
        system.debug('r1-->'+r1);
        String keyPrefix = r.getKeyPrefix();
        String keyPrefix1 = r1.getKeyPrefix();
        system.debug('keyPrefix1-->'+keyPrefix1);  
        //List<ContentVersion> cvList =[select id,Share_to_community_user__c from ContentVersion where Share_to_community_user__c=:true and id in: trigger.new];
        if(cdlList.size()>0 && cdlList != null)
        {
            for(ContentDocumentLink cdl:cdlList){
                if((String.valueOf(cdl.LinkedEntityId)).startsWith(keyPrefix) || (String.valueOf(cdl.LinkedEntityId)).startsWith(keyPrefix1)){
                    system.debug('Insert Into lopp-->'); 
                    cdl.ShareType = 'I';
                    cdl.Visibility = 'AllUsers';
                    toUpdate.add(cdl);
                } 
            }
            update toUpdate;
        }
        else if(cdlList1.size()>0 && cdlList1 != null)
        {
            for(ContentDocumentLink cdl:cdlList1){
                if((String.valueOf(cdl.LinkedEntityId)).startsWith(keyPrefix) || (String.valueOf(cdl.LinkedEntityId)).startsWith(keyPrefix1)){
                    system.debug('Insert Into loop 1-->'); 
                    cdl.ShareType = 'I';
                    cdl.Visibility = 'InternalUsers';
                    toUpdate.add(cdl);
                } 
            }
            update toUpdate;
        }
    }
    
}