@isTest
public class TestCSRTrigger {
    
    @testSetup 
    static void setup() 
    {
        
         Id p = [select id from profile where name=:'WC&B Customer users'].id;
       
        User thisUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId()];
        //UserRole ur=[select id,name from UserRole where name like '%Partner User%' limit 1];
        //system.debug('ur'+ur);
        // Insert account as current user
        
        //System.runAs (thisUser) {
        
        Account ac = new Account(name ='Grazitti', Fiscal_Year_End__c=System.Date.today()) ;
        insert ac; 
       
        Contact con = new Contact(LastName ='testCon1',AccountId = ac.Id,email='test1231@noemail.com');
        insert con;  
                  
        User user = new User(alias = 'testCon1', email='test1231@noemail.com',
                emailencodingkey='UTF-8', lastname='testCon1', languagelocalekey='en_US',
                localesidkey='en_US', profileid = p,  country='United States',IsActive =true,
                ContactId = con.Id,
                timezonesidkey='America/Los_Angeles', username='test1231@noemail.com');
       
        insert user;
        system.runAs(user) {
            
            PageReference pageRef = Page.CSRNewClientForm;  
        	Test.setCurrentPage(pageRef);
            Charitable_Solicitation_Registration1__c cs=new Charitable_Solicitation_Registration1__c();
             ApexPages.StandardController accountController = new ApexPages.StandardController(cs);
            csrNewClientController csrList = new csrNewClientController(accountController);
            // statements to be executed by this test user.
            //Charitable_Solicitation_Registration1__c csrList= new Charitable_Solicitation_Registration1__c();
       		Test.StartTest();
       		csrList.csr.Name='Test CSR';
            csrList.csr.Phone_No__c='8888888888';
            csrList.csr.Fax_No__c='8888888888';
            csrList.csr.Website__c='test.com';
            csrList.csr.Email__c='test@test.com';
            csrList.csr.X27_a__c='(1) any other officer, director, trustee or employee';
            csrList.csr.X27_b__c='Test Kim22';
            csrList.csr.Mailing_Address1__c='test';
            csrList.csr.Street_Address1__c='test';
            csrList.csr.Total_Revenue__c=123456;
            csrList.csr.Program_Service_Expenses__c=123456;
            csrList.csr.Management_General_Expenses__c=123456;
            csrList.csr.Fundraising_Expenses__c=123456;
            csrList.csr.Total_Expenses__c=123456;
            csrList.csr.Other_Names__c='test';
            csrList.csr.Purpose__c='test';
            csrList.csr.Programs__c='test';
            csrList.csr.Use_of_Funds__c='Test';
            csrList.csr.Oversight_of_fundraisings__c='Test';
            csrList.csr.Employees_of_the_organization__c='Yes';
            csrList.csr.Volunteers__c='Yes';
            csrList.csr.X17__c='Yes';
            csrList.csr.California__c='Yes';
            csrList.csr.Illinois__c='Yes';
            csrList.csr.Massachusetts__c='Yes';
            csrList.csr.Board_of_Directors_Officers_Trustees__c='Yes';
            csrList.csr.Board_meetings__c='Yes';
            csrList.csr.Compensation_Information__c='Yes';
            csrList.csr.Control_persons__c='Yes';
            csrList.csr.X10_year_Employment_History__c='Yes';
            csrList.csr.Company_Name__c='Yes';
            csrList.csr.Term_of_Employment__c=5;
            csrList.csr.Criminal_acts__c='Yes';
            csrList.csr.Funds_Custody__c='Yes';
            csrList.csr.Funds_Distribution__c='Yes';
            csrList.csr.Signatory_authority__c='Yes';
            csrList.csr.Financial_records_Custody__c='Yes';
            csrList.csr.Budget_approval__c='Yes';
            csrList.csr.Banks__c='Yes';
            csrList.csr.Accountant_Auditor__c='Yes';
            csrList.csr.Nonprofit_donors__c='Yes';
            csrList.csr.Signatures__c='Yes';
            csrList.csr.Registered_Agent__c='Yes';
            csrList.csr.Separate_Corporate_Registrations__c='Yes';
            csrList.csr.Sources_of_support__c='Yes';
            csrList.csr.Worship_services__c='Yes';
            csrList.csr.Illinois_E_3a__c='Yes';
            csrList.csr.Illinois_E_3b__c='Yes';
            csrList.csr.Illinois_E_3c__c='Yes';
            csrList.csr.New_York__c='Yes';
            csrList.csr.Maryland__c='Yes';
            csrList.csr.New_York1__c='Yes';
            csrList.csr.Ohio__c='Yes';
            csrList.csr.Oklahoma__c='Yes';
            csrList.csr.Oregon__c='Yes';
            csrList.csr.South_Carolina__c='Yes';
            csrList.csr.X21_c__c='Yes';
            csrList.csr.X21_b__c='Yes';
            csrList.csr.X21_a__c='Yes';
            csrList.csr.PFR_List__c='Yes';
            csrList.csr.X20_d__c='Yes';
            csrList.csr.X20_c_PFR_Gross_Receipts_Compensation__c='Yes';
            csrList.csr.X16_a_Currently_Registered__c='Yes';
            csrList.csr.X16_b_State_Violation_History__c='Yes';
            csrList.csr.X16_c_Formerly_Registered__c='Yes';
       		
            /*csrList.myfile.Name = 'Test File';
			csrList.myfile.Body = Blob.valueOf('Unit Test Attachment Body');*/
            //csrList.myfile.ParentId=csrList.csr.Id;
             Attachment attach=new Attachment();       
        	attach.Name='Unit Test Attachment';
        	Blob bodyBlob=Blob.valueOf('Unit Test Attachment Body');
        	attach.body=bodyBlob;
        	attach.parentId=csrList.csr.id;
            csrList.getmyfile();
            csrList.getmyfile1();
            csrList.getmyfile2();
            csrList.getmyfile3();
            csrList.getmyfile4();
            csrList.getmyfile5();
            csrList.getmyfile6();
            csrList.getmyfile7();
            csrList.getmyfile8();
            csrList.getmyfile9();
            csrList.getmyfile10();
            csrList.getmyfile11();
            csrList.getmyfile12();
            csrList.getmyfile13();
            csrList.getmyfile14();
            csrList.getmyfile15();
            csrList.getmyfile16();
            csrList.getmyfile17();
            csrList.getmyfile18();
            csrList.getmyfile19();
            csrList.getmyfile20();
            csrList.getmyfile21();
            csrList.getmyfile22();
            csrList.getmyfile23();
            csrList.getmyfile24();
            csrList.getmyfile25();
            csrList.getmyfile26();
            csrList.getmyfile27();
            csrList.getmyfile28();
            csrList.myfile=attach;
            csrList.myfile1=attach;
            csrList.myfile2=attach;
            csrList.myfile3=attach;
            csrList.myfile4=attach;
            csrList.myfile5=attach;
            csrList.myfile6=attach;
            csrList.myfile7=attach;
            csrList.myfile8=attach;
            csrList.myfile9=attach;
            csrList.myfile10=attach;
            csrList.myfile11=attach;
            csrList.myfile12=attach;
            csrList.myfile13=attach;
            csrList.myfile14=attach;
            csrList.myfile15=attach;
            csrList.myfile16=attach;
            csrList.myfile17=attach;
            csrList.myfile18=attach;
            csrList.myfile19=attach;
            csrList.myfile20=attach;
            csrList.myfile21=attach;
            csrList.myfile22=attach;
            csrList.myfile23=attach;
            csrList.myfile24=attach;
            csrList.myfile25=attach;
            csrList.myfile26=attach;
            csrList.myfile27=attach;
            csrList.myfile28=attach;
            csrList.Saveto();
            Test.StopTest();
        }
        
     }
     @isTest 
	static void testCsr()
    {
        user u1 =[select id,name,profileid,profile.Name from user where email='test1231@noemail.com' limit 1];
        Test.startTest();
        system.runAs(u1){
       Charitable_Solicitation_Registration1__c csrList= [SELECT Id, OwnerId, IsDeleted, Name, CreatedDate, CreatedById, LastModifiedDate, LastModifiedById, SystemModstamp, 
                   LastActivityDate, LastViewedDate, LastReferencedDate, X27_a__c, X27_b__c, Phone_No__c, Email__c, Fax_No__c, Website__c, 
                   Mailing_Address1__c, Street_Address1__c, Other_Names__c, PFR_List__c, Management_General_Expenses__c, Fundraising_Expenses__c,
                   Total_Expenses__c, Total_Revenue__c, Program_Service_Expenses__c, Bylaws__c, Purpose__c, Programs__c, Use_of_Funds__c, 
                   Oversight_of_fundraisings__c, Fundraising_methods__c, Employees_of_the_organization__c, Volunteers__c, States_where_registered__c, 
                   X17__c, California__c, Illinois__c, Massachusetts__c, Compliance__c, Board_of_Directors_Officers_Trustees__c, Board_meetings__c,
                   Compensation_Information__c, Control_persons__c, X10_year_Employment_History__c, Company_Name__c, Term_of_Employment__c,
                   Criminal_acts__c, Funds_Custody__c, Funds_Distribution__c, Signatory_authority__c, Financial_records_Custody__c,Client__r.Owner.Email, 
                   Budget_approval__c, Banks__c, Accountant_Auditor__c, Nonprofit_donors__c, Signatures__c, Registered_Agent__c,Owner.Email, 
                   Separate_Corporate_Registrations__c, Sources_of_support__c, Worship_services__c, Illinois_E_3a__c, Illinois_E_3b__c,client__r.Update_Ongoing_Status__c,
                   Illinois_E_3c__c, New_York__c, Maryland__c, New_York1__c, Ohio__c, Oklahoma__c, Oregon__c, South_Carolina__c, Client__c, client__r.Fiscal_Year_End__c,
                   X20_d__c, Solicited_Regardless_of_Registration__c, X16_a_Currently_Registered__c, X16_b_State_Violation_History__c,client__r.Ongoing_Cycle_Status__c, 
                   X16_c_Formerly_Registered__c, X20_b_PFR_Contracts__c, X20_c_PFR_Gross_Receipts_Compensation__c, X21_a__c, X21_b__c, X21_c__c 
                   FROM Charitable_Solicitation_Registration1__c WHERE Name=:'Test CSR' limit 1];
       		csrList.Id=csrList.Id;
       		csrList.Name='Test CSR1';
            csrList.Phone_No__c='88888888881';
            csrList.Fax_No__c='88888888881';
            csrList.Website__c='test.com1';
            csrList.Email__c='test@test.com1';
            csrList.X27_a__c='(1) any other officer, director, trustee or employee';
            csrList.X27_b__c='Test Kim221';
            csrList.Mailing_Address1__c='test1';
            csrList.Street_Address1__c='test1';
            csrList.Total_Revenue__c=1234561;
            csrList.Program_Service_Expenses__c=1234561;
            csrList.Management_General_Expenses__c=1234561;
            csrList.Fundraising_Expenses__c=1234561;
            csrList.Other_Names__c='test1';
            csrList.Purpose__c='test1';
            csrList.Programs__c='test1';
            csrList.Use_of_Funds__c='Test1';
            csrList.Oversight_of_fundraisings__c='Test1';
            csrList.Employees_of_the_organization__c='No';
            csrList.Volunteers__c='No';
            csrList.X17__c='No';
            csrList.California__c='No';
            csrList.Illinois__c='No';
            csrList.Massachusetts__c='No';
            csrList.Board_of_Directors_Officers_Trustees__c='No';
            csrList.Board_meetings__c='No';
            csrList.Compensation_Information__c='No';
            csrList.Control_persons__c='No';
            csrList.X10_year_Employment_History__c='No';
            csrList.Company_Name__c='No';
            csrList.Term_of_Employment__c=1;
            csrList.Criminal_acts__c='No';
            csrList.Funds_Custody__c='No';
            csrList.Funds_Distribution__c='No';
            csrList.Signatory_authority__c='No';
            csrList.Financial_records_Custody__c='No';
            csrList.Budget_approval__c='No';
            csrList.Banks__c='No';
            csrList.Accountant_Auditor__c='No';
            csrList.Nonprofit_donors__c='No';
            csrList.Signatures__c='No';
            csrList.Registered_Agent__c='No';
            csrList.Separate_Corporate_Registrations__c='No';
            csrList.Sources_of_support__c='No';
            csrList.Worship_services__c='No';
            csrList.Illinois_E_3a__c='No';
            csrList.Illinois_E_3b__c='No';
            csrList.Illinois_E_3c__c='No';
            csrList.New_York__c='No';
            csrList.Maryland__c='No';
            csrList.New_York1__c='No';
            csrList.Ohio__c='No';
            csrList.Oklahoma__c='No';
            csrList.Oregon__c='No';
            csrList.South_Carolina__c='No';
            csrList.X21_c__c='No';
            csrList.X21_b__c='No';
            csrList.X21_a__c='No';
            csrList.PFR_List__c='No';
            csrList.X20_d__c='No';
            csrList.X20_c_PFR_Gross_Receipts_Compensation__c='No';
            csrList.X16_a_Currently_Registered__c='No';
            csrList.X16_b_State_Violation_History__c='No';
            csrList.X16_c_Formerly_Registered__c='No';
       		
            Update csrList;
        }
       test.stopTest();
	}
    
}