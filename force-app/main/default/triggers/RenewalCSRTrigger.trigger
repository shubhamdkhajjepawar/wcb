/*
 *Test Class: TestRenewalCSRTrigger 
 */

trigger RenewalCSRTrigger on Renewal_CSR__c (before insert,before update,after insert,after update) {
    
    System.debug('Trigger.new'+trigger.new);
    System.debug('Trigger.old'+trigger.old);
    If(Trigger.isUpdate && Trigger.isAfter){
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        /*List<User> u = [select id, contactId,Contact.AccountId,Contact.Account.Name,Contact.Account.Owner.Email from User where id = : UserInfo.getUserId()]; // added this line today
System.debug('user-->'+u);*/
        List<String> toEmail = new List<String>();
        //toEmail.add('shubham.d@cube84.com');
        /*for(User u1:u){
if(u1.Contact.Account.Owner.Email != null)
{
toEmail.add(u1.Contact.Account.Owner.Email);
}
}
system.debug('toEmail-->'+toEmail);*/
        
        for(Renewal_CSR__c rcr :[select Primary_Address__CountryCode__s,Primary_Address__Street__s,Primary_Address__City__s,Primary_Address__StateCode__s,
                                 Primary_Address__PostalCode__s,Mailing_Address__CountryCode__s,Mailing_Address__Street__s,Mailing_Address__City__s,
                                 Mailing_Address__StateCode__s,Mailing_Address__PostalCode__s,Phone__c,Fax__c,Email__c,Website__c,X4_Changes__c,
                                 R5_a__c,X6_1_If_Yes__c,R6_1_Name__c,R6_2_Address_c__CountryCode__s,R6_2_Address_c__Street__s,R6_2_Address_c__City__s,
                                 R6_2_Address_c__StateCode__s,R6_2_Address_c__PostalCode__s,R6_3_Phone_Number__c,R6_1_4__c,R6_1_5__c,R6_1_6__c,
                                 R6_2__c,Currently_providing_services__c,R6_4__c,R6_5__c,R6_6__c,Methods_of_Solicitation__c,X7_Changes__c,
                                 Employees_of_the_organization__c,Volunteers__c,Authorized_to_Sign_Checks__c,Budget_Approval__c,
                                 Custody_of_Financial_Records__c,Custody_of_Funds__c,Distribution_of_Funds__c,Fund_Raising_Activities__c,
                                 X8_Changes__c,Banks__c,X9_Changes__c,R10A_Minnesota__c,R10A_North_Dakota__c,R10A_Ohio__c,R10A_Oregon__c,
                                 R10A_Utah__c,R10A_West_Virginia__c,R10B__c,R11A_Name__c,R11A_Title__c,R11A_Compensation__c,R11A_Name2__c,
                                 R11A_Title2__c,R11A_Compensation2__c,R11A_Name3__c,R11A_Title3__c,R11A_Compensation3__c,R11B__c,R11Ba__c,
                                 R11C__c,R11D__c,R12_A__c,R12_Aa__c,R12B_Name__c,R12B_Amount__c,R12B_Name2__c,R12B_Amount2__c,R12B_Name3__c,
                                 R12B_Amount3__c,R13_Name__c,R13_Amount__c,R13_Name2__c,R13_Amount2__c,R13_Name3__c,R13_Amount3__c,R14_Name__c,
                                 R14_Title__c,R14_Email__c,R14_Name_2__c,R14_Title_2__c,R14_Email_2__c,X15_1_Articles_of_Incorporation_Changes__c,
                                 X15_2_Bylaws_Changes__c,X16_Changes__c,X17_Changes__c,X18_Changes__c,Id,OwnerId,Owner.Email,Name,LastModifiedBy.Name,
                                 LastModifiedBy.Profile.Name,CreatedBy.Profile.Name,Client__r.Owner.Email
                                 from Renewal_CSR__c where id in : trigger.new])
        {
            if(rcr.CreatedBy.Profile.Name == Label.WC_B_Customer_users || rcr.LastModifiedBy.Profile.Name ==Label.WC_B_Customer_users){
                system.debug('rcr'+rcr);
                if(rcr.Client__r.Owner.Email != null)
                {
                    toEmail.add(rcr.Client__r.Owner.Email);
                    system.debug('rcr.Client__r.Owner.Email'+rcr.Client__r.Owner.Email);
                }
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                String messageBody;
                messageBody='<HTML><body>Hi, <br/><br/>This is to inform you that following value(s) has been changed in the csr renewal checklist: <br/> ';
                //messageBody +=' <br/>' + Schema.SObjectType.Renewal_CSR__c.fields.Name.getLabel()+':'+URL.getSalesforceBaseUrl().toExternalForm() + '/' + rcr.Id;
                if(rcr.Primary_Address__CountryCode__s != trigger.oldMap.get(rcr.Id).Primary_Address__CountryCode__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Primary_Address__CountryCode__s.getLabel() +':'+   rcr.Primary_Address__CountryCode__s;
                }
                if(rcr.Primary_Address__Street__s != trigger.oldMap.get(rcr.Id).Primary_Address__Street__s)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Primary_Address__Street__s.getLabel() +':'+ rcr.Primary_Address__Street__s;
                }
                if(rcr.Primary_Address__City__s != trigger.oldMap.get(rcr.Id).Primary_Address__City__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Primary_Address__City__s.getLabel() +':'+   rcr.Primary_Address__City__s;
                }
                if(rcr.Primary_Address__StateCode__s != trigger.oldMap.get(rcr.Id).Primary_Address__StateCode__s)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Primary_Address__StateCode__s.getLabel() +':'+ rcr.Primary_Address__StateCode__s;
                }
                if(rcr.Primary_Address__PostalCode__s != trigger.oldMap.get(rcr.Id).Primary_Address__PostalCode__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Primary_Address__PostalCode__s.getLabel() +':'+   rcr.Primary_Address__PostalCode__s;
                }
                if(rcr.Mailing_Address__CountryCode__s != trigger.oldMap.get(rcr.Id).Mailing_Address__CountryCode__s)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Mailing_Address__CountryCode__s.getLabel() +':'+ rcr.Mailing_Address__CountryCode__s;
                }
                if(rcr.Mailing_Address__Street__s != trigger.oldMap.get(rcr.Id).Mailing_Address__Street__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Mailing_Address__Street__s.getLabel() +':'+   rcr.Mailing_Address__Street__s;
                }
                if(rcr.Mailing_Address__City__s != trigger.oldMap.get(rcr.Id).Mailing_Address__City__s)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Mailing_Address__City__s.getLabel() +':'+ rcr.Mailing_Address__City__s;
                }
                if(rcr.Mailing_Address__StateCode__s != trigger.oldMap.get(rcr.Id).Mailing_Address__StateCode__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Mailing_Address__StateCode__s.getLabel() +':'+   rcr.Mailing_Address__StateCode__s;
                }
                if(rcr.Mailing_Address__PostalCode__s != trigger.oldMap.get(rcr.Id).Mailing_Address__PostalCode__s)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Mailing_Address__PostalCode__s.getLabel() +':'+ rcr.Mailing_Address__PostalCode__s;
                }
                if(rcr.Phone__c != trigger.oldMap.get(rcr.Id).Phone__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Phone__c.getLabel() +':'+   rcr.Phone__c;
                }
                if(rcr.Fax__c != trigger.oldMap.get(rcr.Id).Fax__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Fax__c.getLabel() +':'+ rcr.Fax__c;
                }
                if(rcr.Email__c != trigger.oldMap.get(rcr.Id).Email__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Email__c.getLabel() +':'+   rcr.Email__c;
                }
                if(rcr.Website__c != trigger.oldMap.get(rcr.Id).Website__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Website__c.getLabel() +':'+ rcr.Website__c;
                }
                if(rcr.X4_Changes__c != trigger.oldMap.get(rcr.Id).X4_Changes__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X4_Changes__c.getLabel() +':'+   rcr.X4_Changes__c;
                }
                if(rcr.R5_a__c != trigger.oldMap.get(rcr.Id).R5_a__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R5_a__c.getLabel() +':'+ rcr.R5_a__c;
                }
                if(rcr.X6_1_If_Yes__c != trigger.oldMap.get(rcr.Id).X6_1_If_Yes__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X6_1_If_Yes__c.getLabel() +':'+   rcr.X6_1_If_Yes__c;
                }
                if(rcr.R6_1_Name__c != trigger.oldMap.get(rcr.Id).R6_1_Name__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_1_Name__c.getLabel() +':'+ rcr.R6_1_Name__c;
                }
                if(rcr.R6_2_Address_c__CountryCode__s != trigger.oldMap.get(rcr.Id).R6_2_Address_c__CountryCode__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_2_Address_c__CountryCode__s.getLabel() +':'+   rcr.R6_2_Address_c__CountryCode__s;
                }
                if(rcr.R6_2_Address_c__Street__s != trigger.oldMap.get(rcr.Id).R6_2_Address_c__Street__s)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_2_Address_c__Street__s.getLabel() +':'+ rcr.R6_2_Address_c__Street__s;
                }
                if(rcr.R6_2_Address_c__City__s != trigger.oldMap.get(rcr.Id).R6_2_Address_c__City__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_2_Address_c__City__s.getLabel() +':'+   rcr.R6_2_Address_c__City__s;
                }
                if(rcr.R6_2_Address_c__StateCode__s != trigger.oldMap.get(rcr.Id).R6_2_Address_c__StateCode__s)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_2_Address_c__StateCode__s.getLabel() +':'+ rcr.R6_2_Address_c__StateCode__s;
                }
                if(rcr.R6_2_Address_c__PostalCode__s != trigger.oldMap.get(rcr.Id).R6_2_Address_c__PostalCode__s)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_2_Address_c__PostalCode__s.getLabel() +':'+   rcr.R6_2_Address_c__PostalCode__s;
                }
                if(rcr.R6_3_Phone_Number__c != trigger.oldMap.get(rcr.Id).R6_3_Phone_Number__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_3_Phone_Number__c.getLabel() +':'+ rcr.R6_3_Phone_Number__c;
                }
                if(rcr.R6_1_4__c != trigger.oldMap.get(rcr.Id).R6_1_4__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_1_4__c.getLabel() +':'+   rcr.R6_1_4__c;
                }
                if(rcr.R6_1_5__c != trigger.oldMap.get(rcr.Id).R6_1_5__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_1_5__c.getLabel() +':'+ rcr.R6_1_5__c;
                }
                if(rcr.R6_1_6__c != trigger.oldMap.get(rcr.Id).R6_1_6__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_1_6__c.getLabel() +':'+   rcr.R6_1_6__c;
                }
                if(rcr.R6_2__c != trigger.oldMap.get(rcr.Id).R6_2__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_2__c.getLabel() +':'+ rcr.R6_2__c;
                }
                if(rcr.Currently_providing_services__c != trigger.oldMap.get(rcr.Id).Currently_providing_services__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Currently_providing_services__c.getLabel() +':'+   rcr.Currently_providing_services__c;
                }
                if(rcr.R6_4__c != trigger.oldMap.get(rcr.Id).R6_4__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_4__c.getLabel() +':'+ rcr.R6_4__c;
                }
                if(rcr.R6_5__c != trigger.oldMap.get(rcr.Id).R6_5__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_5__c.getLabel() +':'+   rcr.R6_5__c;
                }
                if(rcr.R6_6__c != trigger.oldMap.get(rcr.Id).R6_6__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R6_6__c.getLabel() +':'+ rcr.R6_6__c;
                }        
                if(rcr.Methods_of_Solicitation__c != trigger.oldMap.get(rcr.Id).Methods_of_Solicitation__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Methods_of_Solicitation__c.getLabel() +':'+   rcr.Methods_of_Solicitation__c;
                }
                if(rcr.X7_Changes__c != trigger.oldMap.get(rcr.Id).X7_Changes__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X7_Changes__c.getLabel() +':'+ rcr.X7_Changes__c;
                }
                if(rcr.Employees_of_the_organization__c != trigger.oldMap.get(rcr.Id).Employees_of_the_organization__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Employees_of_the_organization__c.getLabel() +':'+   rcr.Employees_of_the_organization__c;
                }
                if(rcr.Volunteers__c != trigger.oldMap.get(rcr.Id).Volunteers__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Volunteers__c.getLabel() +':'+ rcr.Volunteers__c;
                }
                if(rcr.Authorized_to_Sign_Checks__c != trigger.oldMap.get(rcr.Id).Authorized_to_Sign_Checks__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Authorized_to_Sign_Checks__c.getLabel() +':'+   rcr.Authorized_to_Sign_Checks__c;
                }
                if(rcr.Budget_Approval__c != trigger.oldMap.get(rcr.Id).Budget_Approval__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Budget_Approval__c.getLabel() +':'+ rcr.Budget_Approval__c;
                }
                if(rcr.Custody_of_Financial_Records__c != trigger.oldMap.get(rcr.Id).Custody_of_Financial_Records__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Custody_of_Financial_Records__c.getLabel() +':'+   rcr.Custody_of_Financial_Records__c;
                }
                if(rcr.Custody_of_Funds__c != trigger.oldMap.get(rcr.Id).Custody_of_Funds__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Custody_of_Funds__c.getLabel() +':'+ rcr.Custody_of_Funds__c;
                }
                if(rcr.Distribution_of_Funds__c != trigger.oldMap.get(rcr.Id).Distribution_of_Funds__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Distribution_of_Funds__c.getLabel() +':'+   rcr.Distribution_of_Funds__c;
                }
                if(rcr.Fund_Raising_Activities__c != trigger.oldMap.get(rcr.Id).Fund_Raising_Activities__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Fund_Raising_Activities__c.getLabel() +':'+ rcr.Fund_Raising_Activities__c;
                }
                if(rcr.X8_Changes__c != trigger.oldMap.get(rcr.Id).X8_Changes__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X8_Changes__c.getLabel() +':'+   rcr.X8_Changes__c;
                }
                if(rcr.Banks__c != trigger.oldMap.get(rcr.Id).Banks__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.Banks__c.getLabel() +':'+ rcr.Banks__c;
                }
                if(rcr.X9_Changes__c != trigger.oldMap.get(rcr.Id).X9_Changes__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X9_Changes__c.getLabel() +':'+   rcr.X9_Changes__c;
                }
                if(rcr.R10A_Minnesota__c != trigger.oldMap.get(rcr.Id).R10A_Minnesota__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R10A_Minnesota__c.getLabel() +':'+ rcr.R10A_Minnesota__c;
                }
                if(rcr.R10A_North_Dakota__c != trigger.oldMap.get(rcr.Id).R10A_North_Dakota__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R10A_North_Dakota__c.getLabel() +':'+   rcr.R10A_North_Dakota__c;
                }
                if(rcr.R10A_Ohio__c != trigger.oldMap.get(rcr.Id).R10A_Ohio__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R10A_Ohio__c.getLabel() +':'+ rcr.R10A_Ohio__c;
                }
                if(rcr.R10A_Oregon__c != trigger.oldMap.get(rcr.Id).R10A_Oregon__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R10A_Oregon__c.getLabel() +':'+   rcr.R10A_Oregon__c;
                }
                if(rcr.R10A_Utah__c != trigger.oldMap.get(rcr.Id).R10A_Utah__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R10A_Utah__c.getLabel() +':'+ rcr.R10A_Utah__c;
                }
                if(rcr.R10A_West_Virginia__c != trigger.oldMap.get(rcr.Id).R10A_West_Virginia__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R10A_West_Virginia__c.getLabel() +':'+   rcr.R10A_West_Virginia__c;
                }
                if(rcr.R10B__c != trigger.oldMap.get(rcr.Id).R10B__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R10B__c.getLabel() +':'+ rcr.R10B__c;
                }
                if(rcr.R11A_Name__c != trigger.oldMap.get(rcr.Id).R11A_Name__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Name__c.getLabel() +':'+   rcr.R11A_Name__c;
                }
                if(rcr.R11A_Title__c != trigger.oldMap.get(rcr.Id).R11A_Title__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Title__c.getLabel() +':'+ rcr.R11A_Title__c;
                }
                if(rcr.R11A_Compensation__c != trigger.oldMap.get(rcr.Id).R11A_Compensation__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Compensation__c.getLabel() +':'+   rcr.R11A_Compensation__c;
                }
                if(rcr.R11A_Name2__c != trigger.oldMap.get(rcr.Id).R11A_Name2__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Name2__c.getLabel() +':'+ rcr.R11A_Name2__c;
                }
                if(rcr.R11A_Title2__c != trigger.oldMap.get(rcr.Id).R11A_Title2__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Title2__c.getLabel() +':'+   rcr.R11A_Title2__c;
                }
                if(rcr.R11A_Compensation2__c != trigger.oldMap.get(rcr.Id).R11A_Compensation2__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Compensation2__c.getLabel() +':'+ rcr.R11A_Compensation2__c;
                }
                if(rcr.R11A_Name3__c != trigger.oldMap.get(rcr.Id).R11A_Name3__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Name3__c.getLabel() +':'+   rcr.R11A_Name3__c;
                }
                if(rcr.R11A_Title3__c != trigger.oldMap.get(rcr.Id).R11A_Title3__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Title3__c.getLabel() +':'+ rcr.R11A_Title3__c;
                }
                if(rcr.R11A_Compensation3__c != trigger.oldMap.get(rcr.Id).R11A_Compensation3__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11A_Compensation3__c.getLabel() +':'+   rcr.R11A_Compensation3__c;
                }
                if(rcr.R11B__c != trigger.oldMap.get(rcr.Id).R11B__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11B__c.getLabel() +':'+ rcr.R11B__c;
                }
                if(rcr.R11C__c != trigger.oldMap.get(rcr.Id).R11C__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11C__c.getLabel() +':'+   rcr.R11C__c;
                }
                if(rcr.R11Ba__c != trigger.oldMap.get(rcr.Id).R11Ba__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11Ba__c.getLabel() +':'+ rcr.R11Ba__c;
                }
                if(rcr.R11D__c != trigger.oldMap.get(rcr.Id).R11D__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R11D__c.getLabel() +':'+   rcr.R11D__c;
                }
                if(rcr.R12_A__c != trigger.oldMap.get(rcr.Id).R12_A__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12_A__c.getLabel() +':'+ rcr.R12_A__c;
                }
                if(rcr.R12_Aa__c != trigger.oldMap.get(rcr.Id).R12_Aa__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12_Aa__c.getLabel() +':'+   rcr.R12_Aa__c;
                }
                if(rcr.R12B_Name__c != trigger.oldMap.get(rcr.Id).R12B_Name__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12B_Name__c.getLabel() +':'+ rcr.R12B_Name__c;
                }
                if(rcr.R12B_Amount__c != trigger.oldMap.get(rcr.Id).R12B_Amount__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12B_Amount__c.getLabel() +':'+   rcr.R12B_Amount__c;
                }
                if(rcr.R12B_Name2__c != trigger.oldMap.get(rcr.Id).R12B_Name2__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12B_Name2__c.getLabel() +':'+ rcr.R12B_Name2__c;
                }
                if(rcr.R12B_Amount2__c != trigger.oldMap.get(rcr.Id).R12B_Amount2__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12B_Amount2__c.getLabel() +':'+   rcr.R12B_Amount2__c;
                }
                if(rcr.R12B_Name3__c != trigger.oldMap.get(rcr.Id).R12B_Name3__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12B_Name3__c.getLabel() +':'+ rcr.R12B_Name3__c;
                }
                if(rcr.R12B_Amount3__c != trigger.oldMap.get(rcr.Id).R12B_Amount3__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R12B_Amount3__c.getLabel() +':'+   rcr.R12B_Amount3__c;
                }
                if(rcr.R13_Name__c != trigger.oldMap.get(rcr.Id).R13_Name__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R13_Name__c.getLabel() +':'+ rcr.R13_Name__c;
                }
                if(rcr.R13_Amount__c != trigger.oldMap.get(rcr.Id).R13_Amount__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R13_Amount__c.getLabel() +':'+   rcr.R13_Amount__c;
                }
                if(rcr.R13_Name2__c != trigger.oldMap.get(rcr.Id).R13_Name2__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R13_Name2__c.getLabel() +':'+ rcr.R13_Name2__c;
                }
                if(rcr.R13_Amount2__c != trigger.oldMap.get(rcr.Id).R13_Amount2__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R13_Amount2__c.getLabel() +':'+   rcr.R13_Amount2__c;
                }
                if(rcr.R13_Name3__c != trigger.oldMap.get(rcr.Id).R13_Name3__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R13_Name3__c.getLabel() +':'+ rcr.R13_Name3__c;
                }
                if(rcr.R13_Amount3__c != trigger.oldMap.get(rcr.Id).R13_Amount3__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R13_Amount3__c.getLabel() +':'+   rcr.R13_Amount3__c;
                }
                if(rcr.R14_Name__c != trigger.oldMap.get(rcr.Id).R14_Name__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R14_Name__c.getLabel() +':'+ rcr.R14_Name__c;
                }
                if(rcr.R14_Title__c != trigger.oldMap.get(rcr.Id).R14_Title__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R14_Title__c.getLabel() +':'+   rcr.R14_Title__c;
                }
                if(rcr.R14_Email__c != trigger.oldMap.get(rcr.Id).R14_Email__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R14_Email__c.getLabel() +':'+ rcr.R14_Email__c;
                }
                if(rcr.R14_Name_2__c != trigger.oldMap.get(rcr.Id).R14_Name_2__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R14_Name_2__c.getLabel() +':'+   rcr.R14_Name_2__c;
                }
                if(rcr.R14_Title_2__c != trigger.oldMap.get(rcr.Id).R14_Title_2__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R14_Title_2__c.getLabel() +':'+ rcr.R14_Title_2__c;
                }
                if(rcr.R14_Email_2__c != trigger.oldMap.get(rcr.Id).R14_Email_2__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.R14_Email_2__c.getLabel() +':'+   rcr.R14_Email_2__c;
                }
                if(rcr.X15_1_Articles_of_Incorporation_Changes__c != trigger.oldMap.get(rcr.Id).X15_1_Articles_of_Incorporation_Changes__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X15_1_Articles_of_Incorporation_Changes__c.getLabel() +':'+ rcr.X15_1_Articles_of_Incorporation_Changes__c;
                }
                if(rcr.X15_2_Bylaws_Changes__c != trigger.oldMap.get(rcr.Id).X15_2_Bylaws_Changes__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X15_2_Bylaws_Changes__c.getLabel() +':'+   rcr.X15_2_Bylaws_Changes__c;
                }
                if(rcr.X16_Changes__c != trigger.oldMap.get(rcr.Id).X16_Changes__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X16_Changes__c.getLabel() +':'+ rcr.X16_Changes__c;
                }
                if(rcr.X17_Changes__c != trigger.oldMap.get(rcr.Id).X17_Changes__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X17_Changes__c.getLabel() +':'+   rcr.X17_Changes__c;
                }
                if(rcr.X18_Changes__c != trigger.oldMap.get(rcr.Id).X18_Changes__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Renewal_CSR__c.fields.X18_Changes__c.getLabel() +':'+ rcr.X18_Changes__c;
                }
                //
                
                
                messageBody +='<br/><br/> Thanks<br/>'+rcr.LastModifiedBy.Name;
                System.debug('messageBody-->'+messageBody);
                toEmail.add(rcr.Owner.Email);
                System.debug('rcr.Owner.Email'+rcr.Owner.Email);
                mail.setToAddresses(toEmail);
                // mail.setCcAddresses(ccEmail);
                mail.setSubject('Update in CSR Renewal Checklist');
                mail.setHTMLBody(messageBody);
                mails.add(mail);
                //ended debug code
                
            }
        }
        if(mails.size() > 0){
            Messaging.sendEmail(mails);
        }
    }
}