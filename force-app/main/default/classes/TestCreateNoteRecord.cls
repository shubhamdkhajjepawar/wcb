@isTest
public class TestCreateNoteRecord {
    
    static testMethod void testNotes()
    {
        Account acc=new Account(Name='Acme Inc');
        insert acc;
        Id accId=acc.Id;
        /*ContentNote n=new ContentNote();
//n.Content='Test By cube84';
n.Title='Test Class';
//n.ParentId=acc.Id;
System.debug('n'+n);
Insert n;*/
        ContentNote objCntNote = new ContentNote();
        objCntNote.Title = 'salesforce code crack';
        objCntNote.Content = Blob.valueOf('Welcome to salesforcecodecrack.com');
        insert objCntNote; //Insert Content Note   
        
        Test.startTest();
        
        CreateNoteRecord.createRecord(objCntNote, acc.Id);
        
        Test.stopTest();
        //create ContentDocumentLink  record to link with parentId 
        /*ContentDocumentLink objCntDocLink = new ContentDocumentLink();
        objCntDocLink.LinkedEntityId = acc.Id; // Specify your parent Id 
        objCntDocLink.ContentDocumentId = objCntNote.Id;  //Content Note Id
        objCntDocLink.shareType = 'V'; // Specify your sharing type 
        insert objCntDocLink;*/
    }
    
}