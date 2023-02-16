@isTest
public class TestRenewalCSRTrigger {
    
    
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
            Renewal_CSR__c cs1=new Renewal_CSR__c();
            ApexPages.StandardController acController = new ApexPages.StandardController(cs1);
            csrRenewalClientController rcsrList = new csrRenewalClientController(acController);
            // statements to be executed by this test user.
            
            Test.StartTest();
            rcsrList.rcsr.Primary_Address__CountryCode__s='IN';
            rcsrList.rcsr.Mailing_Address__City__s='Pune';
            rcsrList.rcsr.X4_Changes__c='Yes';
            rcsrList.rcsr.R6_2_Address_c__StateCode__s='MH';
            rcsrList.rcsr.Currently_providing_services__c='Yes';
            rcsrList.rcsr.Volunteers__c='Yes';
            rcsrList.rcsr.X8_Changes__c='Yes';
            rcsrList.rcsr.R10A_Utah__c='10000';
            rcsrList.rcsr.R11A_Title2__c='Test';
            rcsrList.rcsr.R11C__c='2022';
            rcsrList.rcsr.R12B_Amount2__c=100000;
            rcsrList.rcsr.R13_Name3__c='Test 3';
            rcsrList.rcsr.R14_Email_2__c='test2@test.com';
            rcsrList.rcsr.Primary_Address__Street__s='Pune';
            rcsrList.rcsr.Mailing_Address__StateCode__s='MH';
            rcsrList.rcsr.R5_a__c='Yes';
            rcsrList.rcsr.R6_2_Address_c__PostalCode__s='411011';
            rcsrList.rcsr.R6_4__c='44801';
            rcsrList.rcsr.Authorized_to_Sign_Checks__c='Test';
            rcsrList.rcsr.Banks__c='Test';
            rcsrList.rcsr.R10A_West_Virginia__c='1000';
            rcsrList.rcsr.R11A_Compensation2__c=100000;
            rcsrList.rcsr.R11D__c='Yes';
            rcsrList.rcsr.R13_Amount3__c=100000;
            rcsrList.rcsr.X15_1_Articles_of_Incorporation_Changes__c='Yes';
            rcsrList.rcsr.Primary_Address__City__s='Pune';
            rcsrList.rcsr.Mailing_Address__PostalCode__s='411011';
            rcsrList.rcsr.X6_1_If_Yes__c='Yes';
            //rcsrList.rcsr.R6_3_Phone_Number__c=8888888888;
            rcsrList.rcsr.Budget_Approval__c='10000';
            rcsrList.rcsr.X9_Changes__c='Yes';
            rcsrList.rcsr.R11A_Name3__c='Test 3';
            rcsrList.rcsr.R12_A__c='Yes';
            rcsrList.rcsr.R14_Name__c='14 Name';
            rcsrList.rcsr.X15_2_Bylaws_Changes__c='Yes';
            rcsrList.rcsr.Primary_Address__StateCode__s='MH';
            //rcsrList.rcsr.Phone__c=8888888888;
            rcsrList.rcsr.R6_1_Name__c='Test Renewal CSR';
            rcsrList.rcsr.R6_1_4__c='Yes';
            rcsrList.rcsr.R6_6__c='Yes';
            rcsrList.rcsr.Custody_of_Financial_Records__c='10000';
            rcsrList.rcsr.R10A_Minnesota__c='1000';
            rcsrList.rcsr.R11A_Name__c='11A Name';
            rcsrList.rcsr.R11A_Title3__c='Test';
            rcsrList.rcsr.R12_Aa__c='10000';
            rcsrList.rcsr.R13_Name__c='13 Name';
            rcsrList.rcsr.R14_Title__c='test';
            rcsrList.rcsr.X16_Changes__c='Yes';
            rcsrList.rcsr.Primary_Address__PostalCode__s='411011';
            //rcsrList.rcsr.Fax__c=8888888888;
            rcsrList.rcsr.R6_2_Address_c__CountryCode__s='IN';
            rcsrList.rcsr.R6_1_5__c='Tesrt';
            rcsrList.rcsr.Methods_of_Solicitation__c='Test';
            rcsrList.rcsr.Custody_of_Funds__c='10000';
            rcsrList.rcsr.R10A_North_Dakota__c='1000';
            rcsrList.rcsr.R11A_Title__c='11A Name';
            rcsrList.rcsr.R11A_Compensation3__c=100000;
            rcsrList.rcsr.R12B_Name__c='12B Name';
            rcsrList.rcsr.R13_Amount__c=10000;
            rcsrList.rcsr.R14_Email__c='test@test.com';
            rcsrList.rcsr.X17_Changes__c='Yes';
            rcsrList.rcsr.Mailing_Address__CountryCode__s='IN';
            rcsrList.rcsr.Email__c='test@test.com';
            rcsrList.rcsr.R6_2_Address_c__Street__s='Pune';
            rcsrList.rcsr.R6_1_6__c='10000';
            rcsrList.rcsr.X7_Changes__c='Yes';
            rcsrList.rcsr.Distribution_of_Funds__c='10000';
            rcsrList.rcsr.R10A_Ohio__c='1000';
            rcsrList.rcsr.R11A_Compensation__c=1000;
            rcsrList.rcsr.R11B__c='Yes';
            rcsrList.rcsr.R12B_Amount__c=100001;
            rcsrList.rcsr.R13_Name2__c='Test 3';
            rcsrList.rcsr.R14_Name_2__c='Test 2';
            rcsrList.rcsr.X18_Changes__c='Yes';
            rcsrList.rcsr.Mailing_Address__Street__s='Pune';
            rcsrList.rcsr.Website__c='test.com';
            rcsrList.rcsr.R6_2_Address_c__City__s='Pune';
            rcsrList.rcsr.R6_2__c='10000';
            rcsrList.rcsr.Employees_of_the_organization__c='Yes';
            rcsrList.rcsr.Fund_Raising_Activities__c='1000';
            rcsrList.rcsr.R10A_Oregon__c='1000';
            rcsrList.rcsr.R11A_Name2__c='Test 2';
            rcsrList.rcsr.R11Ba__c='10000';
            rcsrList.rcsr.R12B_Name2__c='Test 2';
            rcsrList.rcsr.R13_Amount2__c=100000;
            rcsrList.rcsr.R14_Title_2__c='Test';
            //rcsrList.rcsr.Name='Test Renewal CSR';
            
            
            Attachment attach=new Attachment();       
            attach.Name='Unit Test Attachment';
            Blob bodyBlob=Blob.valueOf('Unit Test Attachment Body');
            attach.body=bodyBlob;
            attach.parentId=rcsrList.rcsr.id;
            rcsrList.getrfile();
            rcsrList.getrfile1();
            rcsrList.getrfile2();
            rcsrList.getrfile3();
            rcsrList.getrfile4();
            rcsrList.getrfile5();
            rcsrList.getrfile6();
            rcsrList.getrfile7();
            rcsrList.getrfile8();
            rcsrList.getrfile9();
            rcsrList.getrfile10();
            rcsrList.getrfile11();
            rcsrList.getrfile12();
            rcsrList.getrfile13();
            rcsrList.getrfile14();
            rcsrList.getrfile15();
            rcsrList.getrfile16();
            rcsrList.getrfile17();

            rcsrList.rfile=attach;
            rcsrList.rfile1=attach;
            rcsrList.rfile2=attach;
            rcsrList.rfile3=attach;
            rcsrList.rfile4=attach;
            rcsrList.rfile5=attach;
            rcsrList.rfile6=attach;
            rcsrList.rfile7=attach;
            rcsrList.rfile8=attach;
            rcsrList.rfile9=attach;
            rcsrList.rfile10=attach;
            rcsrList.rfile11=attach;
            rcsrList.rfile12=attach;
            rcsrList.rfile13=attach;
            rcsrList.rfile14=attach;
            rcsrList.rfile15=attach;
            rcsrList.rfile16=attach;
            rcsrList.rfile17=attach;
            
            rcsrList.Saveto();
            Test.StopTest();
        }
    }
    
    
    @isTest 
	static void testCsrenwal()
    {
        user u1 =[select id,name,profileid,profile.Name from user where email='test1231@noemail.com' limit 1];
        Test.startTest();
        system.runAs(u1){
       Renewal_CSR__c rcsrList= [SELECT Authorized_to_Sign_Checks__c, Banks__c, Budget_Approval__c, CreatedById, CreatedDate, Currently_providing_services__c, 
         Custody_of_Financial_Records__c, Custody_of_Funds__c, Distribution_of_Funds__c, Email__c, Employees_of_the_organization__c, Fax__c, 
         Fund_Raising_Activities__c, Government_Grants__c, Id, IsDeleted, LastActivityDate, LastModifiedById, LastModifiedDate, LastReferencedDate,
         LastViewedDate, Mailing_Address__City__s, Mailing_Address__CountryCode__s, Mailing_Address__GeocodeAccuracy__s, Mailing_Address__Latitude__s, 
         Mailing_Address__Longitude__s, Mailing_Address__PostalCode__s, Mailing_Address__StateCode__s, Mailing_Address__Street__s, 
         Mailing_Address__c, Methods_of_Solicitation__c, Name, Organization_Documents__c, Other_Names__c, OwnerId, Phone__c, 
         Primary_Address__City__s, Primary_Address__CountryCode__s, Primary_Address__GeocodeAccuracy__s, Primary_Address__Latitude__s, 
         Primary_Address__Longitude__s, Primary_Address__PostalCode__s, Primary_Address__StateCode__s, Primary_Address__Street__s, 
         Primary_Address__c, Programs__c, Purpose__c, R10A_Minnesota__c, R10A_North_Dakota__c, R10A_Ohio__c, R10A_Oregon__c, R10A_Utah__c, 
         R10A_West_Virginia__c, R10B__c, R11A_Compensation2__c, R11A_Compensation3__c, R11A_Compensation__c, R11A_Name2__c, R11A_Name3__c, 
         R11A_Name__c, R11A_Title2__c, R11A_Title3__c, R11A_Title__c, R11A__c, R11B__c, R11Ba__c, R11C__c, R11D__c, R12B_Amount2__c, 
         R12B_Amount3__c, R12B_Amount__c, R12B_Name2__c, R12B_Name3__c, R12B_Name__c, R12_A__c, R12_Aa__c, R12_B__c, R13_Amount2__c, 
         R13_Amount3__c, R13_Amount__c, R13_Name2__c, R13_Name3__c, R13_Name__c, R14_Email_2__c, R14_Email__c, R14_Name_2__c, R14_Name__c, 
         R14_Title_2__c, R14_Title__c, R5_a__c, R5_b__c, R6_1_4__c, R6_1_5__c, R6_1_6__c, R6_1_Name__c, R6_2_Address_c__City__s, 
         R6_2_Address_c__CountryCode__s, R6_2_Address_c__GeocodeAccuracy__s, R6_2_Address_c__Latitude__s, R6_2_Address_c__Longitude__s, 
         R6_2_Address_c__PostalCode__s, R6_2_Address_c__StateCode__s, R6_2_Address_c__Street__s, R6_2_Address_c__c, R6_2__c,client__r.Update_Ongoing_Status__c, 
         R6_3_Phone_Number__c, R6_4__c, R6_5__c, R6_6__c, R6_7__c, Signatures__c, SystemModstamp, Use_of_Funds__c, Volunteers__c,client__r.Fiscal_Year__c, 
         Website__c, X15_1_Articles_of_Incorporation_Changes__c, X15_2_Bylaws_Changes__c, X16_Changes__c, X17_Changes__c, X18_Changes__c,client__r.Fiscal_Year_End__c, 
         X4_Changes__c, X6_1_If_Yes__c, X7_Changes__c, X8_Changes__c, X9_Changes__c FROM Renewal_CSR__c WHERE R6_1_Name__c=:'Test Renewal CSR' limit 1];
       		rcsrList.Id=rcsrList.Id;
            rcsrList.Primary_Address__CountryCode__s='IN';
            rcsrList.Mailing_Address__City__s='Pune';
            rcsrList.X4_Changes__c='Yes';
            rcsrList.R6_2_Address_c__StateCode__s='MH';
            rcsrList.Currently_providing_services__c='Yes';
            rcsrList.Volunteers__c='Yes';
            rcsrList.X8_Changes__c='Yes';
            rcsrList.R10A_Utah__c='100001';
            rcsrList.R11A_Title2__c='Test1';
            rcsrList.R11C__c='20221';
            rcsrList.R12B_Amount2__c=1000001;
            rcsrList.R13_Name3__c='Test 31';
            rcsrList.R14_Email_2__c='test21@test.com';
            rcsrList.Primary_Address__Street__s='Pune';
            rcsrList.Mailing_Address__StateCode__s='MH';
            rcsrList.R5_a__c='No';
            rcsrList.R6_2_Address_c__PostalCode__s='411011';
            rcsrList.R6_4__c='448011';
            rcsrList.Authorized_to_Sign_Checks__c='Test1';
            rcsrList.Banks__c='Test1';
            rcsrList.R10A_West_Virginia__c='10001';
            rcsrList.R11A_Compensation2__c=1000001;
            rcsrList.R11D__c='No';
            rcsrList.R13_Amount3__c=1000001;
            rcsrList.X15_1_Articles_of_Incorporation_Changes__c='Yes';
            rcsrList.Primary_Address__City__s='Pune';
            rcsrList.Mailing_Address__PostalCode__s='411011';
            rcsrList.X6_1_If_Yes__c='No';
            //rcsrList.rcsr.R6_3_Phone_Number__c=8888888888;
            rcsrList.Budget_Approval__c='100001';
            rcsrList.X9_Changes__c='Yes';
            rcsrList.R11A_Name3__c='Test 31';
            rcsrList.R12_A__c='Yes';
            rcsrList.R14_Name__c='141 Name';
            rcsrList.X15_2_Bylaws_Changes__c='Yes';
            rcsrList.Primary_Address__StateCode__s='MH';
            //rcsrList.rcsr.Phone__c=8888888888;
            rcsrList.R6_1_Name__c='Test Renewal CSR';
            rcsrList.R6_1_4__c='Yes';
            rcsrList.R6_6__c='Yes';
            rcsrList.Custody_of_Financial_Records__c='100001';
            rcsrList.R10A_Minnesota__c='10001';
            rcsrList.R11A_Name__c='11A Name1';
            rcsrList.R11A_Title3__c='Test1';
            rcsrList.R12_Aa__c='100001';
            rcsrList.R13_Name__c='13 Name1';
            rcsrList.R14_Title__c='test1';
            rcsrList.X16_Changes__c='No';
            rcsrList.Primary_Address__PostalCode__s='411011';
            //rcsrList.rcsr.Fax__c=8888888888;
            rcsrList.R6_2_Address_c__CountryCode__s='IN';
            rcsrList.R6_1_5__c='Test';
            rcsrList.Methods_of_Solicitation__c='Test1';
            rcsrList.Custody_of_Funds__c='1000011';
            rcsrList.R10A_North_Dakota__c='100011';
            rcsrList.R11A_Title__c='11A Name1';
            rcsrList.R11A_Compensation3__c=1000001;
            rcsrList.R12B_Name__c='12B Name1';
            rcsrList.R13_Amount__c=100001;
            rcsrList.R14_Email__c='test1@test.com';
            rcsrList.X17_Changes__c='No';
            rcsrList.Mailing_Address__CountryCode__s='IN';
            rcsrList.Email__c='test1@test.com';
            rcsrList.R6_2_Address_c__Street__s='Pune';
            rcsrList.R6_1_6__c='100001';
            rcsrList.X7_Changes__c='Yes';
            rcsrList.Distribution_of_Funds__c='100001';
            rcsrList.R10A_Ohio__c='10001';
            rcsrList.R11A_Compensation__c=10001;
            rcsrList.R11B__c='Yes';
            rcsrList.R12B_Amount__c=10000;
            rcsrList.R13_Name2__c='Test 31';
            rcsrList.R14_Name_2__c='Test 21';
            rcsrList.X18_Changes__c='No';
            rcsrList.Mailing_Address__Street__s='Pune';
            rcsrList.Website__c='test.com';
            rcsrList.R6_2_Address_c__City__s='Pune';
            rcsrList.R6_2__c='100001';
            rcsrList.Employees_of_the_organization__c='No';
            rcsrList.Fund_Raising_Activities__c='10001';
            rcsrList.R10A_Oregon__c='10001';
            rcsrList.R11A_Name2__c='Test 21';
            rcsrList.R11Ba__c='100001';
            rcsrList.R12B_Name2__c='Test 21';
            rcsrList.R13_Amount2__c=1000001;
            rcsrList.R14_Title_2__c='Test1';
       		rcsrList.R12B_Name3__c='Test0';
            rcsrList.R12B_Amount3__c=100001;
            Update rcsrList;
        }
       test.stopTest();
	}
    @isTest 
	static void testCsrenwaldisplay()
    {
         Renewal_CSR__c rcsrList= [SELECT Authorized_to_Sign_Checks__c, Banks__c, Budget_Approval__c, CreatedById, CreatedDate, Currently_providing_services__c, 
         Custody_of_Financial_Records__c, Custody_of_Funds__c, Distribution_of_Funds__c, Email__c, Employees_of_the_organization__c, Fax__c, 
         Fund_Raising_Activities__c, Government_Grants__c, Id, IsDeleted, LastActivityDate, LastModifiedById, LastModifiedDate, LastReferencedDate,
         LastViewedDate, Mailing_Address__City__s, Mailing_Address__CountryCode__s, Mailing_Address__GeocodeAccuracy__s, Mailing_Address__Latitude__s, 
         Mailing_Address__Longitude__s, Mailing_Address__PostalCode__s, Mailing_Address__StateCode__s, Mailing_Address__Street__s, 
         Mailing_Address__c, Methods_of_Solicitation__c, Name, Organization_Documents__c, Other_Names__c, OwnerId, Phone__c, 
         Primary_Address__City__s, Primary_Address__CountryCode__s, Primary_Address__GeocodeAccuracy__s, Primary_Address__Latitude__s, 
         Primary_Address__Longitude__s, Primary_Address__PostalCode__s, Primary_Address__StateCode__s, Primary_Address__Street__s, 
         Primary_Address__c, Programs__c, Purpose__c, R10A_Minnesota__c, R10A_North_Dakota__c, R10A_Ohio__c, R10A_Oregon__c, R10A_Utah__c, 
         R10A_West_Virginia__c, R10B__c, R11A_Compensation2__c, R11A_Compensation3__c, R11A_Compensation__c, R11A_Name2__c, R11A_Name3__c, 
         R11A_Name__c, R11A_Title2__c, R11A_Title3__c, R11A_Title__c, R11A__c, R11B__c, R11Ba__c, R11C__c, R11D__c, R12B_Amount2__c, 
         R12B_Amount3__c, R12B_Amount__c, R12B_Name2__c, R12B_Name3__c, R12B_Name__c, R12_A__c, R12_Aa__c, R12_B__c, R13_Amount2__c, 
         R13_Amount3__c, R13_Amount__c, R13_Name2__c, R13_Name3__c, R13_Name__c, R14_Email_2__c, R14_Email__c, R14_Name_2__c, R14_Name__c, 
         R14_Title_2__c, R14_Title__c, R5_a__c, R5_b__c, R6_1_4__c, R6_1_5__c, R6_1_6__c, R6_1_Name__c, R6_2_Address_c__City__s, 
         R6_2_Address_c__CountryCode__s, R6_2_Address_c__GeocodeAccuracy__s, R6_2_Address_c__Latitude__s, R6_2_Address_c__Longitude__s, 
         R6_2_Address_c__PostalCode__s, R6_2_Address_c__StateCode__s, R6_2_Address_c__Street__s, R6_2_Address_c__c, R6_2__c,client__r.Update_Ongoing_Status__c, 
         R6_3_Phone_Number__c, R6_4__c, R6_5__c, R6_6__c, R6_7__c, Signatures__c, SystemModstamp, Use_of_Funds__c, Volunteers__c,client__r.Fiscal_Year__c, 
         Website__c, X15_1_Articles_of_Incorporation_Changes__c, X15_2_Bylaws_Changes__c, X16_Changes__c, X17_Changes__c, X18_Changes__c,client__r.Fiscal_Year_End__c, 
         X4_Changes__c, X6_1_If_Yes__c, X7_Changes__c, X8_Changes__c, X9_Changes__c FROM Renewal_CSR__c WHERE R6_1_Name__c=:'Test Renewal CSR' or 
                                   CreatedByID =: UserInfo.getUserId() limit 1];
        	
        Renewal_CSR__c cs1=new Renewal_CSR__c(); 
        PageReference pageRef = Page.listOfRenewalRecord; 
        Test.setCurrentPage(pageRef);
        ApexPages.StandardController stdController = new ApexPages.StandardController(rcsrList);
        listOfRenewalRecordCls lorrc = new listOfRenewalRecordCls();
        //List<Renewal_CSR__c> Renewals=lorrc.Renewals;
        //lorrc.Renewals{ get {return rcsrList;}}
        //List<Renewal_CSR__c> accFirsttPage=lorrc.Renewals();
        lorrc.getRenewals();
        lorrc.view();
        //lorrc.PageIndex;
        lorrc.PageNumber=1;
        lorrc.PageSize=1;
        boolean r1=lorrc.AllowMoveNext;
        boolean r2=lorrc.AllowMovePrev;
        Integer r3=lorrc.LNumber;
        Integer r4=lorrc.UNumber;
        lorrc.Next();
        lorrc.First();
        lorrc.Last();
        lorrc.Prev();
    }
    @isTest 
	static void testCsrenwaldisplayPDF()
    {
         Renewal_CSR__c rcsrList= [SELECT Authorized_to_Sign_Checks__c, Banks__c, Budget_Approval__c, CreatedById, CreatedDate, Currently_providing_services__c, 
         Custody_of_Financial_Records__c, Custody_of_Funds__c, Distribution_of_Funds__c, Email__c, Employees_of_the_organization__c, Fax__c, 
         Fund_Raising_Activities__c, Government_Grants__c, Id, IsDeleted, LastActivityDate, LastModifiedById, LastModifiedDate, LastReferencedDate,
         LastViewedDate, Mailing_Address__City__s, Mailing_Address__CountryCode__s, Mailing_Address__GeocodeAccuracy__s, Mailing_Address__Latitude__s, 
         Mailing_Address__Longitude__s, Mailing_Address__PostalCode__s, Mailing_Address__StateCode__s, Mailing_Address__Street__s, 
         Mailing_Address__c, Methods_of_Solicitation__c, Name, Organization_Documents__c, Other_Names__c, OwnerId, Phone__c, 
         Primary_Address__City__s, Primary_Address__CountryCode__s, Primary_Address__GeocodeAccuracy__s, Primary_Address__Latitude__s, 
         Primary_Address__Longitude__s, Primary_Address__PostalCode__s, Primary_Address__StateCode__s, Primary_Address__Street__s, 
         Primary_Address__c, Programs__c, Purpose__c, R10A_Minnesota__c, R10A_North_Dakota__c, R10A_Ohio__c, R10A_Oregon__c, R10A_Utah__c, 
         R10A_West_Virginia__c, R10B__c, R11A_Compensation2__c, R11A_Compensation3__c, R11A_Compensation__c, R11A_Name2__c, R11A_Name3__c, 
         R11A_Name__c, R11A_Title2__c, R11A_Title3__c, R11A_Title__c, R11A__c, R11B__c, R11Ba__c, R11C__c, R11D__c, R12B_Amount2__c, 
         R12B_Amount3__c, R12B_Amount__c, R12B_Name2__c, R12B_Name3__c, R12B_Name__c, R12_A__c, R12_Aa__c, R12_B__c, R13_Amount2__c, 
         R13_Amount3__c, R13_Amount__c, R13_Name2__c, R13_Name3__c, R13_Name__c, R14_Email_2__c, R14_Email__c, R14_Name_2__c, R14_Name__c, 
         R14_Title_2__c, R14_Title__c, R5_a__c, R5_b__c, R6_1_4__c, R6_1_5__c, R6_1_6__c, R6_1_Name__c, R6_2_Address_c__City__s, 
         R6_2_Address_c__CountryCode__s, R6_2_Address_c__GeocodeAccuracy__s, R6_2_Address_c__Latitude__s, R6_2_Address_c__Longitude__s, 
         R6_2_Address_c__PostalCode__s, R6_2_Address_c__StateCode__s, R6_2_Address_c__Street__s, R6_2_Address_c__c, R6_2__c,client__r.Update_Ongoing_Status__c, 
         R6_3_Phone_Number__c, R6_4__c, R6_5__c, R6_6__c, R6_7__c, Signatures__c, SystemModstamp, Use_of_Funds__c, Volunteers__c,client__r.Fiscal_Year__c, 
         Website__c, X15_1_Articles_of_Incorporation_Changes__c, X15_2_Bylaws_Changes__c, X16_Changes__c, X17_Changes__c, X18_Changes__c,client__r.Fiscal_Year_End__c, 
         X4_Changes__c, X6_1_If_Yes__c, X7_Changes__c, X8_Changes__c, X9_Changes__c FROM Renewal_CSR__c WHERE R6_1_Name__c=:'Test Renewal CSR' limit 1];
        	
        Renewal_CSR__c cs1=new Renewal_CSR__c(); 
        PageReference pageRef = Page.listOfRenewalRecord;
        pageRef.getParameters().put('id', rcsrList.Id);
        Test.setCurrentPage(pageRef);
        csrRenewalClientFormPDF cRCFP = new csrRenewalClientFormPDF();
        cRCFP.recordid=rcsrList.Id;
        
    }
}