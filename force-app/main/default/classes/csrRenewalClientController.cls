/*
 *Test Class: TestRenewalCSRTrigger 
 */

public class csrRenewalClientController {
    Public transient  Attachment rfile;
    Public transient  Attachment rfile1;
    Public transient  Attachment rfile2;
    Public transient  Attachment rfile3;
	Public transient  Attachment rfile4;
    Public transient  Attachment rfile5;
    Public transient  Attachment rfile6;
    Public transient  Attachment rfile7;
    Public transient  Attachment rfile8;
    Public transient  Attachment rfile9;
    Public transient  Attachment rfile10;
    Public transient  Attachment rfile11;
    Public transient  Attachment rfile12;
    Public transient  Attachment rfile13;
    Public transient  Attachment rfile14;
    Public transient  Attachment rfile15;
    Public transient  Attachment rfile16;
    Public transient  Attachment rfile17;
     /*Public transient  Attachment rfile18;
    Public transient  Attachment rfile19;
    Public transient  Attachment rfile20;*/
    
    public  Renewal_CSR__c rcsr{get; set;}
    //public Account accId {get; set;}
    public  List<Attachment> allFileList {get; set;}
    public csrRenewalClientController(ApexPages.StandardController controller){
        //this.accId = (Account)controller.getRecord();
        try{
        rcsr = [SELECT Authorized_to_Sign_Checks__c, Banks__c, Budget_Approval__c, CreatedById, CreatedDate, Currently_providing_services__c, 
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
         X4_Changes__c, X6_1_If_Yes__c, X7_Changes__c, X8_Changes__c, X9_Changes__c FROM Renewal_CSR__c where CreatedById=:UserInfo.getUserId() and
         client__r.Fiscal_Year_End__c = THIS_YEAR order by CreatedDate DESC Limit 1];
         }
        catch (Exception e) {
        rcsr =new Renewal_CSR__c();
        }
        system.debug('Renewal_CSR__c-->'+rcsr);
        //system.debug('accId-->'+accId);
        
    }
    Public Attachment getrfile1()
    {
        rfile1 = new Attachment();
        return rfile1;
    }
    Public Attachment getrfile()
    {
        rfile = new Attachment();
        return rfile;
    }
    Public Attachment getrfile2()
    {
        rfile2 = new Attachment();
        return rfile2;
    }
    Public Attachment getrfile3()
    {
        rfile3 = new Attachment();
        return rfile3;
    }
    Public Attachment getrfile4()
    {
        rfile4 = new Attachment();
        return rfile4;
    }
    Public Attachment getrfile5()
    {
        rfile5 = new Attachment();
        return rfile5;
    }
    Public Attachment getrfile6()
    {
        rfile6 = new Attachment();
        return rfile6;
    }
    Public Attachment getrfile7()
    {
        rfile7 = new Attachment();
        return rfile7;
    }
    Public Attachment getrfile8()
    {
        rfile8 = new Attachment();
        return rfile8;
    }
    Public Attachment getrfile9()
    {
        rfile9 = new Attachment();
        return rfile9;
    }
    Public Attachment getrfile10()
    {
        rfile10 = new Attachment();
        return rfile10;
    }
    Public Attachment getrfile11()
    {
        rfile11 = new Attachment();
        return rfile11;
    }
    Public Attachment getrfile12()
    {
        rfile12 = new Attachment();
        return rfile12;
    }
    Public Attachment getrfile13()
    {
        rfile13 = new Attachment();
        return rfile13;
    }
    Public Attachment getrfile14()
    {
        rfile14 = new Attachment();
        return rfile14;
    }
    Public Attachment getrfile15()
    {
        rfile15 = new Attachment();
        return rfile15;
    }
    Public Attachment getrfile16()
    {
        rfile16 = new Attachment();
        return rfile16;
    }
    Public Attachment getrfile17()
    {
        rfile17 = new Attachment();
        return rfile17;
    }
    /*Public Attachment getrfile18()
    {
        rfile18 = new Attachment();
        return rfile18;
    }
    Public Attachment getrfile19()
    {
        rfile15 = new Attachment();
        return rfile19;
    }
    Public Attachment getrfile20()
    {
        rfile20 = new Attachment();
        return rfile20;
    }*/
    public void Saveto()
    {
        Renewal_CSR__c rcsrList =new Renewal_CSR__c();
        User u = [select id, contactId,Contact.AccountId,Contact.Account.Name from User where id = : UserInfo.getUserId()]; // added this line today
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        
        
        
        System.debug('rcsr.Primary_Address__CountryCode__s'+rcsr.Primary_Address__CountryCode__s);
        System.debug('rcsr.Primary_Address__Street__s'+rcsr.Primary_Address__Street__s);
        System.debug('rcsr.Primary_Address__City__s'+rcsr.Primary_Address__City__s);
        System.debug('rcsr.Primary_Address__StateCode__s '+rcsr.Primary_Address__StateCode__s );
        System.debug('rcsr.Primary_Address__PostalCode__s '+rcsr.Primary_Address__PostalCode__s );
        System.debug('rcsr.Mailing_Address__CountryCode__s'+rcsr.Mailing_Address__CountryCode__s);
        System.debug('rcsr.Mailing_Address__Street__s'+rcsr.Mailing_Address__Street__s);
        System.debug('rcsr.Mailing_Address__City__s'+rcsr.Mailing_Address__City__s);
        System.debug('rcsr.Mailing_Address__StateCode__s '+rcsr.Mailing_Address__StateCode__s );
        System.debug('rcsr.Mailing_Address__PostalCode__s '+rcsr.Mailing_Address__PostalCode__s );
        System.debug('rcsr.Phone__c'+rcsr.Phone__c);
        System.debug('rcsr.Fax__c '+rcsr.Fax__c );
        System.debug('rcsr.Email__c '+rcsr.Email__c );
        System.debug('rcsr.Website__c '+rcsr.Website__c );
        System.debug('rcsr.X4_Changes__c '+rcsr.X4_Changes__c );
       // System.debug('rcsr.R5_a__c'+rcsr.R5_a__c);
        //System.debug('rcsr.R5_b__c'+rcsr.R5_b__c);
        System.debug('rcsr.R6_1_Name__c'+rcsr.R6_1_Name__c);
        System.debug('rcsr.R6_2_Address_c__CountryCode__s'+rcsr.R6_2_Address_c__CountryCode__s);
        System.debug('rcsr.R6_2_Address_c__Street__s'+rcsr.R6_2_Address_c__Street__s);
        System.debug('rcsr.R6_2_Address_c__City__s'+rcsr.R6_2_Address_c__City__s);
        System.debug('rcsr.R6_2_Address_c__StateCode__s  '+rcsr.R6_2_Address_c__StateCode__s  );
        System.debug('rcsr.R6_2_Address_c__PostalCode__s  '+rcsr.R6_2_Address_c__PostalCode__s  );
        System.debug('rcsr.R6_3_Phone_Number__c'+rcsr.R6_3_Phone_Number__c);
        System.debug('rcsr.R6_1_4__c'+rcsr.R6_1_4__c);
        System.debug('rcsr.R6_1_5__c'+rcsr.R6_1_5__c);
        System.debug('rcsr.R6_1_6__c'+rcsr.R6_1_6__c);
        System.debug('rcsr.R6_2__c'+rcsr.R6_2__c);
        System.debug('rcsr.Currently_providing_services__c'+rcsr.Currently_providing_services__c);
        System.debug('rcsr.R6_4__c'+rcsr.R6_4__c);
        System.debug('rcsr.R6_5__c'+rcsr.R6_5__c);
        System.debug('rcsr.R6_6__c'+rcsr.R6_6__c);
        //System.debug('rcsr.R6_7__c'+rcsr.R6_7__c);
        System.debug('rcsr.Methods_of_Solicitation__c'+rcsr.Methods_of_Solicitation__c);
        System.debug('rcsr.X7_Changes__c'+rcsr.X7_Changes__c);
        System.debug('rcsr.Employees_of_the_organization__c'+rcsr.Employees_of_the_organization__c);
        System.debug('rcsr.Volunteers__c'+rcsr.Volunteers__c);
        System.debug('rcsr.Authorized_to_Sign_Checks__c'+rcsr.Authorized_to_Sign_Checks__c);
        System.debug('rcsr.Budget_Approval__c'+rcsr.Budget_Approval__c);
        System.debug('rcsr.Custody_of_Financial_Records__c'+rcsr.Custody_of_Financial_Records__c);
        System.debug('rcsr.Custody_of_Funds__c'+rcsr.Custody_of_Funds__c);
        System.debug('rcsr.Distribution_of_Funds__c'+rcsr.Distribution_of_Funds__c);
        System.debug('rcsr.Fund_Raising_Activities__c'+rcsr.Fund_Raising_Activities__c);
        System.debug('rcsr.X8_Changes__c'+rcsr.X8_Changes__c);
        System.debug('rcsr.Banks__c'+rcsr.Banks__c);
        System.debug('rcsr.X9_Changes__c'+rcsr.X9_Changes__c);
        System.debug('rcsr.R10A_Minnesota__c'+rcsr.R10A_Minnesota__c);
        System.debug('rcsr.R10A_North_Dakota__c'+rcsr.R10A_North_Dakota__c);
        System.debug('rcsr.R10A_Ohio__c'+rcsr.R10A_Ohio__c);
        System.debug('rcsr.R10A_Oregon__c'+rcsr.R10A_Oregon__c);
        System.debug('rcsr.R10A_Utah__c'+rcsr.R10A_Utah__c);
        System.debug('rcsr.R10A_West_Virginia__c'+rcsr.R10A_West_Virginia__c);
        System.debug('rcsr.R10B__c'+rcsr.R10B__c);
        System.debug('rcsr.R11A_Name__c'+rcsr.R11A_Name__c);
        System.debug('rcsr.R11A_Title__c'+rcsr.R11A_Title__c);
        System.debug('rcsr.R11A_Compensation__c'+rcsr.R11A_Compensation__c);
        System.debug('rcsr.R11B__c'+rcsr.R11B__c);
        System.debug('rcsr.R11Ba__c'+rcsr.R11Ba__c);
        System.debug('rcsr.R11C__c'+rcsr.R11C__c);
        System.debug('rcsr.R11D__c'+rcsr.R11D__c);
        System.debug('rcsr.R12_A__c'+rcsr.R12_A__c);
        System.debug('rcsr.R12_Aa__c'+rcsr.R12_Aa__c);
        System.debug('rcsr.R12B_Name__c'+rcsr.R12B_Name__c);
        System.debug('rcsr.R12B_Amount__c'+rcsr.R12B_Amount__c);
        System.debug('rcsr.R13_Name__c'+rcsr.R13_Name__c);
        System.debug('rcsr.R13_Amount__c'+rcsr.R13_Amount__c);
        System.debug('rcsr.R14_Name__c'+rcsr.R14_Name__c);
        System.debug('rcsr.R14_Title__c'+rcsr.R14_Title__c);
        System.debug('rcsr.R14_Email__c'+rcsr.R14_Email__c);
        System.debug('rcsr.X15_1_Articles_of_Incorporation_Changes__c'+rcsr.X15_1_Articles_of_Incorporation_Changes__c);
        System.debug('rcsr.X15_2_Bylaws_Changes__c'+rcsr.X15_2_Bylaws_Changes__c);
        System.debug('rcsr.X16_Changes__c'+rcsr.X16_Changes__c);
        System.debug('rcsr.X17_Changes__c'+rcsr.X17_Changes__c);
        System.debug('rcsr.X18_Changes__c'+rcsr.X18_Changes__c);
        
        
        
        
        if(rcsr != NULL)
        {
            if(rcsr.Id != null && rcsr.client__r.Fiscal_Year__c <= String.valueOf(rcsr.CreatedDate.year()))
            {
                system.debug('Id is present'+rcsr.Id);
                System.debug('rcsr.client__r.Fiscal_Year__c'+rcsr.client__r.Fiscal_Year__c);
                System.debug('String.valueOf(rcsr.CreatedDate.year())'+String.valueOf(rcsr.CreatedDate.year()));
                rcsrList.Id=rcsr.Id;
            }
            
            rcsrList.Primary_Address__CountryCode__s=rcsr.Primary_Address__CountryCode__s;
            rcsrList.Primary_Address__Street__s=rcsr.Primary_Address__Street__s;
            rcsrList.Primary_Address__City__s=rcsr.Primary_Address__City__s;
            rcsrList.Primary_Address__StateCode__s =rcsr.Primary_Address__StateCode__s ;
            rcsrList.Primary_Address__PostalCode__s =rcsr.Primary_Address__PostalCode__s ;
            rcsrList.Mailing_Address__CountryCode__s=rcsr.Mailing_Address__CountryCode__s;
            rcsrList.Mailing_Address__Street__s=rcsr.Mailing_Address__Street__s;
            rcsrList.Mailing_Address__City__s=rcsr.Mailing_Address__City__s;
            rcsrList.Mailing_Address__StateCode__s =rcsr.Mailing_Address__StateCode__s ;
            rcsrList.Mailing_Address__PostalCode__s =rcsr.Mailing_Address__PostalCode__s ;
            rcsrList.Phone__c=rcsr.Phone__c;
            rcsrList.Fax__c =rcsr.Fax__c ;
            rcsrList.Email__c =rcsr.Email__c ;
            rcsrList.Website__c =rcsr.Website__c ;
            rcsrList.X4_Changes__c =rcsr.X4_Changes__c ;
            rcsrList.R5_a__c=rcsr.R5_a__c;
            //rcsrList.R5_b__c=rcsr.R5_b__c;
            rcsrList.R6_1_Name__c=rcsr.R6_1_Name__c;
            rcsrList.R6_2_Address_c__CountryCode__s=rcsr.R6_2_Address_c__CountryCode__s;
            rcsrList.R6_2_Address_c__Street__s=rcsr.R6_2_Address_c__Street__s;
            rcsrList.R6_2_Address_c__City__s=rcsr.R6_2_Address_c__City__s;
            rcsrList.R6_2_Address_c__StateCode__s  =rcsr.R6_2_Address_c__StateCode__s  ;
            rcsrList.R6_2_Address_c__PostalCode__s  =rcsr.R6_2_Address_c__PostalCode__s  ;
            rcsrList.R6_3_Phone_Number__c=rcsr.R6_3_Phone_Number__c;
            rcsrList.R6_1_4__c=rcsr.R6_1_4__c;
            rcsrList.R6_1_5__c=rcsr.R6_1_5__c;
            rcsrList.R6_1_6__c=rcsr.R6_1_6__c;
            rcsrList.R6_2__c=rcsr.R6_2__c;
            rcsrList.Currently_providing_services__c=rcsr.Currently_providing_services__c;
            rcsrList.R6_4__c=rcsr.R6_4__c;
            rcsrList.R6_5__c=rcsr.R6_5__c;
            rcsrList.R6_6__c=rcsr.R6_6__c;
            //rcsrList.R6_7__c=rcsr.R6_7__c;
            rcsrList.Methods_of_Solicitation__c=rcsr.Methods_of_Solicitation__c;
            rcsrList.X7_Changes__c=rcsr.X7_Changes__c;
            rcsrList.Employees_of_the_organization__c=rcsr.Employees_of_the_organization__c;
            rcsrList.Volunteers__c=rcsr.Volunteers__c;
            rcsrList.Authorized_to_Sign_Checks__c=rcsr.Authorized_to_Sign_Checks__c;
            rcsrList.Budget_Approval__c=rcsr.Budget_Approval__c;
            rcsrList.Custody_of_Financial_Records__c=rcsr.Custody_of_Financial_Records__c;
            rcsrList.Custody_of_Funds__c=rcsr.Custody_of_Funds__c;
            rcsrList.Distribution_of_Funds__c=rcsr.Distribution_of_Funds__c;
            rcsrList.Fund_Raising_Activities__c=rcsr.Fund_Raising_Activities__c;
            rcsrList.X8_Changes__c=rcsr.X8_Changes__c;
            rcsrList.Banks__c=rcsr.Banks__c;
            rcsrList.X9_Changes__c=rcsr.X9_Changes__c;
            rcsrList.R10A_Minnesota__c=rcsr.R10A_Minnesota__c;
            rcsrList.R10A_North_Dakota__c=rcsr.R10A_North_Dakota__c;
            rcsrList.R10A_Ohio__c=rcsr.R10A_Ohio__c;
            rcsrList.R10A_Oregon__c=rcsr.R10A_Oregon__c;
            rcsrList.R10A_Utah__c=rcsr.R10A_Utah__c;
            rcsrList.R10A_West_Virginia__c=rcsr.R10A_West_Virginia__c;
            rcsrList.R10B__c=rcsr.R10B__c;
            rcsrList.R11A_Name__c=rcsr.R11A_Name__c;
            rcsrList.R11A_Title__c=rcsr.R11A_Title__c;
            rcsrList.R11A_Compensation__c=rcsr.R11A_Compensation__c;
            rcsrList.R11A_Name2__c=rcsr.R11A_Name2__c;
            rcsrList.R11A_Title2__c=rcsr.R11A_Title2__c;
            rcsrList.R11A_Compensation2__c=rcsr.R11A_Compensation2__c;
            rcsrList.R11A_Name3__c=rcsr.R11A_Name3__c;
            rcsrList.R11A_Title3__c=rcsr.R11A_Title3__c;
            rcsrList.R11A_Compensation3__c=rcsr.R11A_Compensation3__c;
            rcsrList.R11B__c=rcsr.R11B__c;
            rcsrList.R11Ba__c=rcsr.R11Ba__c;
            rcsrList.R11C__c=rcsr.R11C__c;
            rcsrList.R11D__c=rcsr.R11D__c;
            rcsrList.R12_A__c=rcsr.R12_A__c;
            rcsrList.R12_Aa__c=rcsr.R12_Aa__c;
            rcsrList.R12B_Name__c=rcsr.R12B_Name__c;
            rcsrList.R12B_Amount__c=rcsr.R12B_Amount__c;
            rcsrList.R12B_Name2__c=rcsr.R12B_Name2__c;
            rcsrList.R12B_Amount2__c=rcsr.R12B_Amount2__c;
            rcsrList.R12B_Name3__c=rcsr.R12B_Name3__c;
            rcsrList.R12B_Amount3__c=rcsr.R12B_Amount3__c;
            rcsrList.R13_Name__c=rcsr.R13_Name__c;
            rcsrList.R13_Amount__c=rcsr.R13_Amount__c;
             rcsrList.R13_Name2__c=rcsr.R13_Name2__c;
            rcsrList.R13_Amount2__c=rcsr.R13_Amount2__c;
             rcsrList.R13_Name3__c=rcsr.R13_Name3__c;
            rcsrList.R13_Amount3__c=rcsr.R13_Amount3__c;
            rcsrList.R14_Name__c=rcsr.R14_Name__c;
            rcsrList.R14_Title__c=rcsr.R14_Title__c;
            rcsrList.R14_Email__c=rcsr.R14_Email__c;
            rcsrList.X15_1_Articles_of_Incorporation_Changes__c=rcsr.X15_1_Articles_of_Incorporation_Changes__c;
            rcsrList.X15_2_Bylaws_Changes__c=rcsr.X15_2_Bylaws_Changes__c;
            rcsrList.X16_Changes__c=rcsr.X16_Changes__c;
            rcsrList.X17_Changes__c=rcsr.X17_Changes__c;
            rcsrList.X18_Changes__c=rcsr.X18_Changes__c;
			rcsrList.X6_1_If_Yes__c =  rcsr.X6_1_If_Yes__c;
            rcsrList.R14_Name_2__c=rcsr.R14_Name_2__c;
            rcsrList.R14_Title_2__c=rcsr.R14_Title_2__c;
            rcsrList.R14_Email_2__c=rcsr.R14_Email_2__c;
            //added new code
            if(u.Contact.AccountId != null)
            {
                rcsrList.Client__c = u.Contact.AccountId;
            }
            
            upsert rcsrList;
            //insert rcsrList;
            
        }
        
        
        if(rcsrList != NULL){
            
            system.debug('rcsrList------'+rcsrList);
            system.debug('Id---'+rcsrList.Id);
            System.debug('rfile.Name-->'+rfile.Name);
            System.debug('rfile1.Name-->'+rfile1.Name);
            System.debug('rfile2.Name-->'+rfile2.Name);
            System.debug('rfile3.Name-->'+rfile3.Name);
            
            System.debug('rfile.Body-->'+rfile.Body);
            System.debug('rfile1.Body-->'+rfile1.Body);
            System.debug('rfile2.Body-->'+rfile2.Body);
            System.debug('rfile3.Body-->'+rfile3.Body);
           
            
            // String accid =csrList[0].Id;
            List<Attachment> attachmentList = new List<Attachment>();
            if(rfile != NULL)
            {
                Attachment att = new Attachment(parentid = rcsrList.Id, name=rfile.name, body = rfile.body);
                if(att.Name !=null || att.Body !=null)
                {
                    attachmentList.add(att);}
            }
            if(rfile1 != NULL)
            {
                Attachment att1 = new Attachment(parentid = rcsrList.Id, name=rfile1.name, body = rfile1.body);
                if(att1.Name !=null || att1.Body !=null)
                {
                    attachmentList.add(att1);}
            }
            if(rfile2 != NULL)
            {
                Attachment att2 = new Attachment(parentid = rcsrList.Id, name=rfile2.name, body = rfile2.body);
                if(att2.Name !=null || att2.Body !=null)
                {
                    attachmentList.add(att2);}
            }
            if(rfile3 != NULL)
            {
                Attachment att3 = new Attachment(parentid = rcsrList.Id, name=rfile3.name, body = rfile3.body);
                if(att3.Name !=null || att3.Body !=null)
                {
                    attachmentList.add(att3);}
            }
            if(rfile4 != NULL)
            {
                Attachment att4 = new Attachment(parentid = rcsrList.Id, name=rfile4.name, body = rfile4.body);
                if(att4.Name !=null || att4.Body !=null)
                {
                    attachmentList.add(att4);}
            }
            if(rfile5 != NULL)
            {
                Attachment att5 = new Attachment(parentid = rcsrList.Id, name=rfile5.name, body = rfile5.body);
                if(att5.Name !=null || att5.Body !=null)
                {
                    attachmentList.add(att5);}
            }
            if(rfile6 != NULL)
            {
                Attachment att6 = new Attachment(parentid = rcsrList.Id, name=rfile6.name, body = rfile6.body);
                if(att6.Name !=null || att6.Body !=null)
                {
                    attachmentList.add(att6);}
            }
            if(rfile7 != NULL)
            {
                Attachment att7 = new Attachment(parentid = rcsrList.Id, name=rfile7.name, body = rfile7.body);
                if(att7.Name !=null || att7.Body !=null)
                {
                    attachmentList.add(att7);}
            }
            if(rfile8 != NULL)
            {
                Attachment att8 = new Attachment(parentid = rcsrList.Id, name=rfile8.name, body = rfile8.body);
                if(att8.Name !=null || att8.Body !=null)
                {
                    attachmentList.add(att8);}
            }
            if(rfile9 != NULL)
            {
                Attachment att9 = new Attachment(parentid = rcsrList.Id, name=rfile9.name, body = rfile9.body);
                if(att9.Name !=null || att9.Body !=null)
                {
                    attachmentList.add(att9);}
            }
            if(rfile10 != NULL)
            {
                Attachment att10 = new Attachment(parentid = rcsrList.Id, name=rfile10.name, body = rfile10.body);
                if(att10.Name !=null || att10.Body !=null)
                {
                    attachmentList.add(att10);}
            }
            if(rfile11 != NULL)
            {
                Attachment att11 = new Attachment(parentid = rcsrList.Id, name=rfile11.name, body = rfile11.body);
                if(att11.Name !=null || att11.Body !=null)
                {
                    attachmentList.add(att11);}
            }
            if(rfile12 != NULL)
            {
                Attachment att12 = new Attachment(parentid = rcsrList.Id, name=rfile12.name, body = rfile12.body);
                if(att12.Name !=null || att12.Body !=null)
                {
                    attachmentList.add(att12);}
            }
            if(rfile13 != NULL)
            {
                Attachment att13 = new Attachment(parentid = rcsrList.Id, name=rfile13.name, body = rfile13.body);
                if(att13.Name !=null || att13.Body !=null)
                {
                    attachmentList.add(att13);}
            }
            if(rfile14 != NULL)
            {
                Attachment att14 = new Attachment(parentid = rcsrList.Id, name=rfile14.name, body = rfile14.body);
                if(att14.Name !=null || att14.Body !=null)
                {
                    attachmentList.add(att14);}
            }
            if(rfile15 != NULL)
            {
                Attachment att15 = new Attachment(parentid = rcsrList.Id, name=rfile15.name, body = rfile15.body);
                if(att15.Name !=null || att15.Body !=null)
                {
                    attachmentList.add(att15);}
            }
            if(rfile16 != NULL)
            {
                Attachment att16 = new Attachment(parentid = rcsrList.Id, name=rfile16.name, body = rfile16.body);
                if(att16.Name !=null || att16.Body !=null)
                {
                    attachmentList.add(att16);}
            }
            if(rfile17 != NULL)
            {
                Attachment att17 = new Attachment(parentid = rcsrList.Id, name=rfile17.name, body = rfile17.body);
                if(att17.Name !=null || att17.Body !=null)
                {
                    attachmentList.add(att17);}
            }
            /*if(rfile18 != NULL)
            {
                Attachment att18= new Attachment(parentid = rcsrList.Id, name=rfile18.name, body = rfile18.body);
                if(att18.Name !=null || att18.Body !=null)
                {
                    attachmentList.add(att18);}
            }
            if(rfile19 != NULL)
            {
                Attachment att19 = new Attachment(parentid = rcsrList.Id, name=rfile19.name, body = rfile19.body);
                if(att19.Name !=null || att19.Body !=null)
                {
                    attachmentList.add(att19);}
            }
            if(rfile20 != NULL)
            {
                Attachment att20 = new Attachment(parentid = rcsrList.Id, name=rfile20.name, body = rfile20.body);
                if(att20.Name !=null || att20.Body !=null)
                {
                    attachmentList.add(att20);}
            }*/
            
            
            if(attachmentList.size()>0)
            { 
                insert attachmentList;
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Initial record created.'));
                system.debug('attachmentList'+attachmentList);
                system.debug('rcsrList.id'+rcsrList.Id);
                    Renewal_CSR__c c=[select id,name,Client__r.Owner.Email,Owner.Email,LastModifiedBy.Name from Renewal_CSR__c where id =:rcsrList.Id limit 1];
                    system.debug('c.Client__r.Owner.Email'+c.Client__r.Owner.Email);
                    system.debug('c.Owner.Email'+c.Owner.Email);
                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    List<String> sendTo = new List<String>();
      				if(c.Client__r.Owner.Email != null)
                    {
                        sendTo.add(c.Client__r.Owner.Email);
                    }
                    sendTo.add(c.Owner.Email);
      				mail.setToAddresses(sendTo);
      				mail.setSubject('File added in Renwal Checklist');
      				String body ='<HTML><body>Hi, <br/><br/>This is to inform you that file has been added in csr Renwal checklist <br/> ';
      				body +='<br/><br/> Thanks<br/>'+c.LastModifiedBy.Name;
                	mail.setHtmlBody(body);
					mails.add(mail);
     				Messaging.sendEmail(mails);
                    
            }
        }
    }
}