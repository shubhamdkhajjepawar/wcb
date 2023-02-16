/*
 Test Class Name:-TestCSRTrigger
 */

public class csrNewClientController {
    
    Public transient  Attachment myfile;
    Public transient  Attachment myfile1;
    Public transient  Attachment myfile2;
    Public transient  Attachment myfile3;
    Public transient  Attachment myfile4;
    Public transient  Attachment myfile5;
    Public transient  Attachment myfile6;
    Public transient  Attachment myfile7;
    Public transient  Attachment myfile8;
    Public transient  Attachment myfile9;
    Public transient  Attachment myfile10;
    Public transient  Attachment myfile11;
    Public transient  Attachment myfile12;
    
    
    Public transient  Attachment myfile13;
    Public transient  Attachment myfile14;
    Public transient  Attachment myfile15;
    Public transient  Attachment myfile16;
    Public transient  Attachment myfile17;
    Public transient  Attachment myfile18;
    Public transient  Attachment myfile19;
    Public transient  Attachment myfile20;
    Public transient  Attachment myfile21;
    Public transient  Attachment myfile22;
    Public transient  Attachment myfile23;
    Public transient  Attachment myfile24;
    Public transient  Attachment myfile25;
    Public transient  Attachment myfile26;
    Public transient  Attachment myfile27;
    Public transient  Attachment myfile28;
    /*Public transient  Attachment myfile29;
Public transient  Attachment myfile30;
Public transient  Attachment myfile31;
Public transient  Attachment myfile32;
Public transient  Attachment myfile33;*/
    
    
    
    public  List<Attachment> allFileList {get; set;}
    public   Charitable_Solicitation_Registration1__c csr{get; set;}
    //public Account accId {get; set;}
    Public String onstatus;
    //list<Charitable_Solicitation_Registration__c> RegList= new list<Charitable_Solicitation_Registration__c>();
    public csrNewClientController(ApexPages.StandardController controller){
        try{
            
             csr = [SELECT Id, OwnerId, IsDeleted, Name, CreatedDate, CreatedById, LastModifiedDate, LastModifiedById, SystemModstamp, 
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
                   FROM Charitable_Solicitation_Registration1__c WHERE CreatedById=:UserInfo.getUserId() order by CreatedDate DESC Limit 1];
           
        } catch (Exception e) {
            // add your message to the user or
            csr =new Charitable_Solicitation_Registration1__c();
        }
        
        //this.accId = (Account)controller.getRecord();
        
        
        /* myfile = new Attachment();
myfile1 = new Attachment();
allFileList = new List<Attachment>() ;*/
        system.debug('Charitable_Solicitation_Registration1__c-->'+csr);
        //system.debug('accId-->'+accId);
    }
    /*public csrNewClientController(){
csr =new Charitable_Solicitation_Registration__c();
system.debug('Charitable_Solicitation_Registration__c-->'+csr);
}*/
    
    /*id userId = UserInfo.getUserId();
User u = [select id, contactId,Contact.AccountId,Contact.Account.Name from User where id = : '00553000000gFNjAAM'];
id getContactId = u.contactId;
system.debug('getContactId' + getContactId);
Id getAccountId=u.Contact.AccountId;
system.debug('u.Contact.AccountId' + u.Contact.AccountId);
String getAccountName=u.Contact.Account.Name;
system.debug('u.Contact.Account.Name' + u.Contact.Account.Name);   */
    
    
    
    // Public Attachment myfile;
    Public Attachment getmyfile()
    {
        myfile = new Attachment();
        return myfile;
    }
    
    Public Attachment getmyfile1()
    {
        myfile1 = new Attachment();
        return myfile1;
    }
    Public Attachment getmyfile2()
    {
        myfile2 = new Attachment();
        return myfile2;
    }
    Public Attachment getmyfile3()
    {
        myfile3 = new Attachment();
        return myfile3;
    }
    Public Attachment getmyfile4()
    {
        myfile4 = new Attachment();
        return myfile4;
    }
    Public Attachment getmyfile5()
    {
        myfile5 = new Attachment();
        return myfile5;
    }
    Public Attachment getmyfile6()
    {
        myfile6 = new Attachment();
        return myfile6;
    }
    Public Attachment getmyfile7()
    {
        myfile7 = new Attachment();
        return myfile7;
    }
    Public Attachment getmyfile8()
    {
        myfile8 = new Attachment();
        return myfile8;
    }
    Public Attachment getmyfile9()
    {
        myfile9 = new Attachment();
        return myfile9;
    }
    Public Attachment getmyfile10()
    {
        myfile10 = new Attachment();
        return myfile10;  
    }
    Public Attachment getmyfile11()
    {
        myfile11 = new Attachment();
        return myfile11;  
    }
    Public Attachment getmyfile12()
    {
        myfile12 = new Attachment();
        return myfile12;  
    }
    Public Attachment getmyfile13()
    {
        myfile13 = new Attachment();
        return myfile13;  
    }
    Public Attachment getmyfile14()
    {
        myfile14 = new Attachment();
        return myfile14;  
    }
    Public Attachment getmyfile15()
    {
        myfile15 = new Attachment();
        return myfile15;  
    }
    Public Attachment getmyfile16()
    {
        myfile16 = new Attachment();
        return myfile16;  
    }
    Public Attachment getmyfile17()
    {
        myfile17 = new Attachment();
        return myfile17;  
    }
    Public Attachment getmyfile18()
    {
        myfile18 = new Attachment();
        return myfile18;  
    }
    Public Attachment getmyfile19()
    {
        myfile19 = new Attachment();
        return myfile19;  
    }
    Public Attachment getmyfile20()
    {
        myfile20 = new Attachment();
        return myfile20;  
    }
    Public Attachment getmyfile21()
    {
        myfile21 = new Attachment();
        return myfile21;  
    }
    Public Attachment getmyfile22()
    {
        myfile22 = new Attachment();
        return myfile22;  
    }
    Public Attachment getmyfile23()
    {
        myfile23 = new Attachment();
        return myfile23;  
    }
    Public Attachment getmyfile24()
    {
        myfile24 = new Attachment();
        return myfile24;  
    }
    Public Attachment getmyfile25()
    {
        myfile25 = new Attachment();
        return myfile25;  
    }
    Public Attachment getmyfile26()
    {
        myfile26 = new Attachment();
        return myfile26;  
    }
    Public Attachment getmyfile27()
    {
        myfile27 = new Attachment();
        return myfile27;  
    }
    Public Attachment getmyfile28()
    {
        myfile28 = new Attachment();
        return myfile28;  
    }
    /*Public Attachment getmyfile29()
{
myfile29 = new Attachment();
return myfile29;  
}
Public Attachment getmyfile30()
{
myfile30 = new Attachment();
return myfile30;  
}
Public Attachment getmyfile31()
{
myfile31 = new Attachment();
return myfile31;  
}
Public Attachment getmyfile32()
{
myfile32 = new Attachment();
return myfile32;  
}
Public Attachment getmyfile33()
{
myfile33 = new Attachment();
return myfile33;  
}*/
    
    public void Saveto()
        //public PageReference  Saveto()
    {
        User u = [select id, contactId,Contact.AccountId,Contact.Account.Name from User where id = : UserInfo.getUserId()]; // added this line today
        Boolean isSuccess = true;
        Charitable_Solicitation_Registration1__c csrList= new Charitable_Solicitation_Registration1__c();
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        //String accid = System.currentPagereference().getParameters().get('id');
        if(csr != NULL){
            if(csr.Id != null)
            {
                system.debug('Id is present'+csr.Id);
                csrList.Id=csr.Id;
            }
            csrList.Name=csr.Name;
            csrList.Phone_No__c=csr.Phone_No__c;
            csrList.Fax_No__c=csr.Fax_No__c;
            csrList.Website__c=csr.Website__c;
            csrList.Email__c=csr.Email__c;
            csrList.X27_a__c=csr.X27_a__c;
            csrList.X27_b__c=csr.X27_b__c;
            csrList.Mailing_Address1__c=csr.Mailing_Address1__c;
            csrList.Street_Address1__c=csr.Street_Address1__c;
            csrList.Total_Revenue__c=csr.Total_Revenue__c;
            csrList.Program_Service_Expenses__c=csr.Program_Service_Expenses__c;
            csrList.Management_General_Expenses__c=csr.Management_General_Expenses__c;
            csrList.Fundraising_Expenses__c=csr.Fundraising_Expenses__c;
            csrList.Total_Expenses__c=csr.Total_Expenses__c;
            csrList.Other_Names__c=csr.Other_Names__c;
            //csrList.Bylaws__c=csr.Bylaws__c;
            csrList.Purpose__c=csr.Purpose__c;
            csrList.Programs__c=csr.Programs__c;
            csrList.Use_of_Funds__c=csr.Use_of_Funds__c;
            csrList.Oversight_of_fundraisings__c=csr.Oversight_of_fundraisings__c;
            csrList.Employees_of_the_organization__c=csr.Employees_of_the_organization__c;
            csrList.Volunteers__c=csr.Volunteers__c;
            csrList.X17__c=csr.X17__c;
            csrList.California__c=csr.California__c;
            csrList.Illinois__c=csr.Illinois__c;
            csrList.Massachusetts__c=csr.Massachusetts__c;
            //csrList.Compliance__c=csr.Compliance__c;
            csrList.Board_of_Directors_Officers_Trustees__c=csr.Board_of_Directors_Officers_Trustees__c;
            csrList.Board_meetings__c=csr.Board_meetings__c;
            csrList.Compensation_Information__c=csr.Compensation_Information__c;
            csrList.Control_persons__c=csr.Control_persons__c;
            csrList.X10_year_Employment_History__c=csr.X10_year_Employment_History__c;
            csrList.Company_Name__c=csr.Company_Name__c;
            csrList.Term_of_Employment__c=csr.Term_of_Employment__c;
            csrList.Criminal_acts__c=csr.Criminal_acts__c;
            csrList.Funds_Custody__c=csr.Funds_Custody__c;
            csrList.Funds_Distribution__c=csr.Funds_Distribution__c;
            csrList.Signatory_authority__c=csr.Signatory_authority__c;
            csrList.Financial_records_Custody__c=csr.Financial_records_Custody__c;
            csrList.Budget_approval__c=csr.Budget_approval__c;
            csrList.Banks__c=csr.Banks__c;
            csrList.Accountant_Auditor__c=csr.Accountant_Auditor__c;
            csrList.Nonprofit_donors__c=csr.Nonprofit_donors__c;
            csrList.Signatures__c=csr.Signatures__c;
            csrList.Registered_Agent__c=csr.Registered_Agent__c;
            csrList.Separate_Corporate_Registrations__c=csr.Separate_Corporate_Registrations__c;
            csrList.Sources_of_support__c=csr.Sources_of_support__c;
            csrList.Worship_services__c=csr.Worship_services__c;
            csrList.Illinois_E_3a__c=csr.Illinois_E_3a__c;
            csrList.Illinois_E_3b__c=csr.Illinois_E_3b__c;
            csrList.Illinois_E_3c__c=csr.Illinois_E_3c__c;
            csrList.New_York__c=csr.New_York__c;
            csrList.Maryland__c=csr.Maryland__c;
            csrList.New_York1__c=csr.New_York1__c;
            csrList.Ohio__c=csr.Ohio__c;
            csrList.Oklahoma__c=csr.Oklahoma__c;
            csrList.Oregon__c=csr.Oregon__c;
            csrList.South_Carolina__c=csr.South_Carolina__c;
            csrList.X21_c__c=csr.X21_c__c;
            csrList.X21_b__c=csr.X21_b__c;
            csrList.X21_a__c=csr.X21_a__c;
            csrList.PFR_List__c=csr.PFR_List__c;
            csrList.X20_d__c=csr.X20_d__c;
            csrList.X20_c_PFR_Gross_Receipts_Compensation__c=csr.X20_c_PFR_Gross_Receipts_Compensation__c;
            csrList.X16_a_Currently_Registered__c=csr.X16_a_Currently_Registered__c;
            csrList.X16_b_State_Violation_History__c=csr.X16_b_State_Violation_History__c;
            csrList.X16_c_Formerly_Registered__c=csr.X16_c_Formerly_Registered__c;
            //added new code
            if(u.Contact.AccountId != null)
            {
                csrList.Client__c = u.Contact.AccountId;
            }
            
            upsert csrList; 
            System.debug('csrList'+csrList);
            //insert csrList;
             
        }
        
        
        if(csrList != NULL){
            
            system.debug('csrList------'+csrList);
            system.debug('Id---'+csrList.Id);
            System.debug('myfile.Name-->'+myfile.Name);
            System.debug('myfile1.Name-->'+myfile1.Name);
            System.debug('myfile2.Name-->'+myfile2.Name);
            System.debug('myfile3.Name-->'+myfile3.Name);
            System.debug('myfile4.Name-->'+myfile4.Name);
            System.debug('myfile5.Name-->'+myfile5.Name);
            System.debug('myfile6.Name-->'+myfile6.Name);
            System.debug('myfile7.Name-->'+myfile7.Name);
            System.debug('myfile8.Name-->'+myfile8.Name);
            System.debug('myfile9.Name-->'+myfile9.Name);
            System.debug('myfile10.Name-->'+myfile10.Name);
            System.debug('myfile11.Name-->'+myfile11.Name);
            System.debug('myfile.Body-->'+myfile.Body);
            System.debug('myfile1.Body-->'+myfile1.Body);
            System.debug('myfile2.Body-->'+myfile2.Body);
            System.debug('myfile3.Body-->'+myfile3.Body);
            System.debug('myfile4.Body-->'+myfile4.Body);
            System.debug('myfile5.Body-->'+myfile5.Body);
            System.debug('myfile6.Body-->'+myfile6.Body);
            System.debug('myfile7.Body-->'+myfile7.Body);
            System.debug('myfile8.Body-->'+myfile8.Body);
            System.debug('myfile9.Body-->'+myfile9.Body);
            System.debug('myfile10.Body-->'+myfile10.Body);
            System.debug('myfile11.Body-->'+myfile11.Body);
            System.debug('myfile12.Body-->'+myfile12.Body);
            // String accid =csrList[0].Id;
            List<Attachment> attachmentList = new List<Attachment>();
            if(myfile != NULL)
            {
                Attachment att = new Attachment(parentid = csrList.Id, name=myfile.name, body = myfile.body);
                if(att.Name !=null || att.Body !=null)
                {
                    attachmentList.add(att);}
            }
            if(myfile1 != NULL)
            {
                Attachment att1 = new Attachment(parentid = csrList.Id, name=myfile1.name, body = myfile1.body);
                if(att1.Name !=null || att1.Body !=null)
                {
                    attachmentList.add(att1);}
            }
            if(myfile2 != NULL)
            {
                Attachment att2 = new Attachment(parentid = csrList.Id, name=myfile2.name, body = myfile2.body);
                if(att2.Name !=null || att2.Body !=null)
                {
                    attachmentList.add(att2);}
            }
            if(myfile3 != NULL)
            {
                Attachment att3 = new Attachment(parentid = csrList.Id, name=myfile3.name, body = myfile3.body);
                if(att3.Name !=null || att3.Body !=null)
                {
                    attachmentList.add(att3);}
            }
            if(myfile4 != NULL)
            {
                Attachment att4 = new Attachment(parentid = csrList.Id, name=myfile4.name, body = myfile4.body);
                if(att4.Name !=null || att4.Body !=null)
                {
                    attachmentList.add(att4);}
            }
            if(myfile5 != NULL)
            {
                Attachment att5 = new Attachment(parentid = csrList.Id, name=myfile5.name, body = myfile5.body);
                if(att5.Name !=null || att5.Body !=null)
                {
                    attachmentList.add(att5);}
            }
            if(myfile6 != NULL)
            {
                Attachment att6 = new Attachment(parentid = csrList.Id, name=myfile6.name, body = myfile6.body);
                if(att6.Name !=null || att6.Body !=null)
                {
                    attachmentList.add(att6);}
            }
            if(myfile7 != NULL)
            {
                Attachment att7 = new Attachment(parentid = csrList.Id, name=myfile7.name, body = myfile7.body);
                if(att7.Name !=null || att7.Body !=null)
                {
                    attachmentList.add(att7);}
            }
            if(myfile8 != NULL)
            {
                Attachment att8 = new Attachment(parentid = csrList.Id, name=myfile8.name, body = myfile8.body);
                if(att8.Name !=null || att8.Body !=null)
                {
                    attachmentList.add(att8);}
            }
            if(myfile9 != NULL)
            {
                Attachment att9 = new Attachment(parentid = csrList.Id, name=myfile9.name, body = myfile9.body);
                if(att9.Name !=null || att9.Body !=null)
                {
                    attachmentList.add(att9);}
            }
            if(myfile10 != NULL)
            {
                Attachment att10 = new Attachment(parentid = csrList.Id, name=myfile10.name, body = myfile10.body);
                if(att10.Name !=null || att10.Body !=null)
                { attachmentList.add(att10);}
            }
            
            if(myfile11 != NULL)
            {
                Attachment att11 = new Attachment(parentid = csrList.Id, name=myfile11.name, body = myfile11.body);
                if(att11.Name !=null || att11.Body !=null)
                { attachmentList.add(att11);}
            }
            if(myfile12 != NULL)
            {
                Attachment att12 = new Attachment(parentid = csrList.Id, name=myfile12.name, body = myfile12.body);
                if(att12.Name !=null || att12.Body !=null)
                { attachmentList.add(att12);}
            }
            if(myfile13 != NULL)
            {
                Attachment att13 = new Attachment(parentid = csrList.Id, name=myfile13.name, body = myfile13.body);
                if(att13.Name !=null || att13.Body !=null)
                { attachmentList.add(att13);}
            }
            if(myfile14 != NULL)
            {
                Attachment att14 = new Attachment(parentid = csrList.Id, name=myfile14.name, body = myfile14.body);
                if(att14.Name !=null || att14.Body !=null)
                { attachmentList.add(att14);}
            }
            if(myfile15 != NULL)
            {
                Attachment att15 = new Attachment(parentid = csrList.Id, name=myfile15.name, body = myfile15.body);
                if(att15.Name !=null || att15.Body !=null)
                { attachmentList.add(att15);}
            }
            if(myfile16 != NULL)
            {
                Attachment att16 = new Attachment(parentid = csrList.Id, name=myfile16.name, body = myfile16.body);
                if(att16.Name !=null || att16.Body !=null)
                { attachmentList.add(att16);}
            }
            if(myfile17 != NULL)
            {
                Attachment att17 = new Attachment(parentid = csrList.Id, name=myfile17.name, body = myfile17.body);
                if(att17.Name !=null || att17.Body !=null)
                { attachmentList.add(att17);}
            }
            if(myfile18 != NULL)
            {
                Attachment att18 = new Attachment(parentid = csrList.Id, name=myfile18.name, body = myfile18.body);
                if(att18.Name !=null || att18.Body !=null)
                { attachmentList.add(att18);}
            }
            if(myfile19 != NULL)
            {
                Attachment att19 = new Attachment(parentid = csrList.Id, name=myfile19.name, body = myfile19.body);
                if(att19.Name !=null || att19.Body !=null)
                { attachmentList.add(att19);}
            }
            if(myfile20 != NULL)
            {
                Attachment att20 = new Attachment(parentid = csrList.Id, name=myfile20.name, body = myfile20.body);
                if(att20.Name !=null || att20.Body !=null)
                { attachmentList.add(att20);}
            }
            if(myfile21 != NULL)
            {
                Attachment att21 = new Attachment(parentid = csrList.Id, name=myfile21.name, body = myfile21.body);
                if(att21.Name !=null || att21.Body !=null)
                { attachmentList.add(att21);}
            }
            if(myfile22 != NULL)
            {
                Attachment att22 = new Attachment(parentid = csrList.Id, name=myfile22.name, body = myfile22.body);
                if(att22.Name !=null || att22.Body !=null)
                { attachmentList.add(att22);}
            }
            if(myfile23 != NULL)
            {
                Attachment att23 = new Attachment(parentid = csrList.Id, name=myfile23.name, body = myfile23.body);
                if(att23.Name !=null || att23.Body !=null)
                { attachmentList.add(att23);}
            }
            if(myfile24 != NULL)
            {
                Attachment att24 = new Attachment(parentid = csrList.Id, name=myfile24.name, body = myfile24.body);
                if(att24.Name !=null || att24.Body !=null)
                { attachmentList.add(att24);}
            }
            if(myfile25 != NULL)
            {
                Attachment att25 = new Attachment(parentid = csrList.Id, name=myfile25.name, body = myfile25.body);
                if(att25.Name !=null || att25.Body !=null)
                { attachmentList.add(att25);}
            }
            if(myfile26 != NULL)
            {
                Attachment att26 = new Attachment(parentid = csrList.Id, name=myfile26.name, body = myfile26.body);
                if(att26.Name !=null || att26.Body !=null)
                { attachmentList.add(att26);}
            }
            if(myfile27 != NULL)
            {
                Attachment att27 = new Attachment(parentid = csrList.Id, name=myfile27.name, body = myfile27.body);
                if(att27.Name !=null || att27.Body !=null)
                { attachmentList.add(att27);}
            }
            if(myfile28 != NULL)
            {
                Attachment att28 = new Attachment(parentid = csrList.Id, name=myfile28.name, body = myfile28.body);
                if(att28.Name !=null || att28.Body !=null)
                { attachmentList.add(att28);}
            }
            /*if(myfile29 != NULL)
{
Attachment att29 = new Attachment(parentid = csrList.Id, name=myfile29.name, body = myfile29.body);
if(att29.Name !=null || att29.Body !=null)
{ attachmentList.add(att29);}
}
if(myfile30 != NULL)
{
Attachment att30 = new Attachment(parentid = csrList.Id, name=myfile30.name, body = myfile30.body);
if(att30.Name !=null || att30.Body !=null)
{ attachmentList.add(att30);}
}
if(myfile31 != NULL)
{
Attachment att31 = new Attachment(parentid = csrList.Id, name=myfile31.name, body = myfile31.body);
if(att31.Name !=null || att31.Body !=null)
{ attachmentList.add(att31);}
}
if(myfile32 != NULL)
{
Attachment att32 = new Attachment(parentid = csrList.Id, name=myfile32.name, body = myfile32.body);
if(att32.Name !=null || att32.Body !=null)
{ attachmentList.add(att32);}
}
if(myfile33 != NULL)
{
Attachment att33 = new Attachment(parentid = csrList.Id, name=myfile33.name, body = myfile33.body);
if(att33.Name !=null || att33.Body !=null)
{ attachmentList.add(att33);}
}*/
            
            
            
            
            if(attachmentList.size()>0)
            { 
                try {
                    
                    insert attachmentList;
                    system.debug('attachmentList'+attachmentList);
                    system.debug('csrList.id'+csrList.Id);
                    Charitable_Solicitation_Registration1__c c=[select id,name,Client__r.Owner.Email,Owner.Email,LastModifiedBy.Name from Charitable_Solicitation_Registration1__c where id =:csrList.Id limit 1];
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
      				mail.setSubject('File added in Initial Checklist');
      				String body ='<HTML><body>Hi, <br/><br/>This is to inform you that file has been added in csr initial checklist <br/> ';
      				body +='<br/><br/> Thanks<br/>'+c.LastModifiedBy.Name;
                	mail.setHtmlBody(body);
					mails.add(mail);
     				Messaging.sendEmail(mails);
                    
                } catch (DMLException e) {
                    
                    //isSuccess = false;
                    ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error uploading file'));
                    
                }
                
                
            }
            /*if(isSuccess){
ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Initial record created.'));

pagereference ref =new pagereference(URL.getSalesforceBaseUrl().toExternalForm()+'/n/CSR_New_Client_Questionnaire');//Paste your vfpage name
system.debug('ref-->'+ref);
ref.setredirect(true);
return ref;
}*/
        } 
        //return null;
    }
}