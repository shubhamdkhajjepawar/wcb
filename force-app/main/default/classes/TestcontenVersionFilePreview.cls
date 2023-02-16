@isTest
public class TestcontenVersionFilePreview {
    @isTest 
    static void method1()
    {
        Account acc= new Account();
        acc.Name='Test';
        Insert acc;
        Program__c pro =new Program__c();
        Pro.Name= 'VN Test';
        pro.Client__c=acc.Id;
        pro.Status__c='Initial';
        pro.IRS_Extension__c='823';
        Insert pro;
        Registration__c r = new Registration__c();
        r.Name='VN Alabama';
        r.Client__c=acc.Id;
       	r.State__c='Alabama';
        r.Program__c=pro.id;
        Insert r;
        contenVersionFilePreview.cvRecords2(pro.Id);
    }

}