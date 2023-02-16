@isTest
public class TestLeadController {
    
      @testSetup 
    static void setup() {
        User u1;
       	Account  br1;
        Contact con1, con2;
        
        Campaign campaign1;
        Profile p = [Select Id from Profile where Name='System Administrator'];
        User thisUser = [ select Id from User where Id = :UserInfo.getUserId() ];
    	System.runAs ( thisUser ) {
        insert new list<user>{
            u1 = new User(Alias = 'standt', Email='standarduser1@testorg.com', 
                        EmailEncodingKey='UTF-8', LastName='TestingSalesUser1', LanguageLocaleKey='en_US', 
                        LocaleSidKey='en_US', ProfileId = p.Id,EmployeeNumber='000123', 
                        TimeZoneSidKey='America/Los_Angeles', UserName='salesUser1@testorg.com')
            
        };
        
        insert new list<Account> {
            br1 = new Account(Name = 'Business Relation 1',BillingCountry='India',
                                billingState= 'Maharashtra', billingCity='Pune',billingStreet='test Street',BillingPostalCode='411045')
        };

        insert new list<Contact> {
            con1 = new Contact(FirstName='Test1', LastName='Con1', Email='con1@con1.com', Title='Mr.', 
                                AccountId = br1.id)
		};
        
        
      }
    }
    static testMethod void myUnitTest1() {
        User u1 = [Select Id From User where Name = 'TestingSalesUser1'];
        Lead lead1;
        
        insert new list<Lead>{
            lead1 = new Lead(Salutation= 'Mr.', FirstName = 'Test1', lastName = 'Lead1', Email= 'testLead@test.com',
                                Phone='7897897890',Company= 'Business Relation 1')
       };
           test.startTest();
           LeadController.createLead(lead1);
        test.stopTest();
    }

}