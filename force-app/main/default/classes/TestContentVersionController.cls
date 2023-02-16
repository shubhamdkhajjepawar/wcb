@isTest
public class TestContentVersionController {

    @testSetup 
    static void setup() 
    {
        
         Id p = [select id from profile where name=:'System Administrator'].id;
       	Id p1= [select id from profile where name=:'WC&B Customer users'].id;
        User thisUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId()];
        
        System.runAs (thisUser) {
        
        Account ac = new Account(name ='Grazitti', Fiscal_Year_End__c=System.Date.today()) ;
        insert ac; 
       
        Contact con = new Contact(LastName ='testCon1',AccountId = ac.Id,email='test1231@noemail.com');
        insert con;  
                  
        User user = new User(alias = 'testCon1', email='test1231@noemail.com',
                emailencodingkey='UTF-8', lastname='testCon1', languagelocalekey='en_US',
                localesidkey='en_US', profileid = p1,  country='United States',IsActive =true,
                ContactId = con.Id,
                timezonesidkey='America/Los_Angeles', username='test1231@noemail.com');
       
        insert user;
        Program__c pro = new Program__c();
        Pro.Name= 'Grazitti Test';
        pro.Client__c=ac.Id;
        pro.Status__c='Initial';
        pro.IRS_Extension__c='823';
        Insert pro;
    }
    }
   // @isTest 
	static testmethod void  testDisplay()
    {
        user u1 =[select id,name,profileid,profile.Name from user where email='test1231@noemail.com' limit 1];
        Program__c p=[select id,name from Program__c where name='Grazitti Test' limit 1];
        Test.startTest();
        /*Attachment attach=new Attachment();       
        	attach.Name='Unit Test Attachment';
        	Blob bodyBlob=Blob.valueOf('Unit Test Attachment Body');
        	attach.body=bodyBlob;
        	attach.parentId=p.id;
        	insert attach;*/
          ContentVersion cv = new ContentVersion(
                Title = 'Test',
                PathOnClient = 'Test.jpg',
                VersionData = blob.valueof('Test Content Data'),
                FirstPublishLocationId=p.Id
            );
            insert cv;
        ContentVersion cv1 = new ContentVersion(
                Title = 'Test',
                PathOnClient = 'Test.jpg',
                VersionData = blob.valueof('Test Content Data'),
                FirstPublishLocationId=p.Id,
            	Share_to_community_user__c=true
            );
            insert cv1;
        cv1.Share_to_community_user__c=false;
        update cv1;
        contentVersionController.getConVersion(p.id);
        System.debug('cv'+cv);
        //ContentVersion cv=[select id,Share_to_community_user__c,FirstPublishLocationId from contentversion where FirstPublishedLocationId =:P.Id];
       ContentVersion cdl =[select id,Share_to_community_user__c,FirstPublishLocationId from ContentVersion where Id=:cv.Id];
        system.debug('cdl'+cdl);
        cdl.Share_to_community_user__c=true;
        update cdl;
        test.stopTest();
        }
}