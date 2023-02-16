/*
 * Test class Name:-TestRenewalCSRTrigger
 */ 

public class csrRenewalClientFormPDF {
    
    public string recordid {get; set;}
    public  Renewal_CSR__c rcsr{get; set;}
    //public Account accId {get; set;}
    //public List<Renewal_CSR__c> rcsrlst=new List<Renewal_CSR__c>();
    //public List<Renewal_CSR__c> rcsr {get; set;}
    //public csrRenewalClientFormPDF(ApexPages.StandardController controller)
    public csrRenewalClientFormPDF()
    {
        recordid = ApexPages.currentPage().getParameters().get('Id');
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
                X4_Changes__c, X6_1_If_Yes__c, X7_Changes__c, X8_Changes__c, X9_Changes__c FROM Renewal_CSR__c where  id=:recordid limit 1]; //where CreatedById=:UserInfo.getUserId() and client__r.Fiscal_Year_End__c = THIS_YEAR order by CreatedDate DESC Limit 1];
        System.debug('recordId'+recordId);
    }
    
}