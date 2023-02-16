/*
 Test Class Name:-TestCSRTrigger
 */

trigger CSRTrigger on Charitable_Solicitation_Registration1__c (before insert,before update,after insert,after update) {
    
    System.debug('Trigger.new'+trigger.new);
    System.debug('Trigger.old'+trigger.old);
    /*if(Trigger.isUpdate && Trigger.isBefore)
    {
        csrTriggerHandler.blockcsrnewediting(Trigger.new, Trigger.oldMap);
    }*/
    If(Trigger.isUpdate && Trigger.isAfter){
        csrTriggerHandler.sendEmailwhencsrnewupdate(Trigger.new, Trigger.oldMap);
        /*List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
          List<String> toEmail = new List<String>();
        /*List<User> u = [select id, contactId,Contact.AccountId,Contact.Account.Name,Contact.Account.Owner.Email from User where id = : UserInfo.getUserId()]; // added this line today
System.debug('user-->'+u);*/
        
        //toEmail.add('shubham.d@cube84.com');
        /*for(User u1:u){
if(u1.Contact.Account.Owner.Email != null)
{
toEmail.add(u1.Contact.Account.Owner.Email);
}
}
system.debug('toEmail-->'+toEmail);
        
        for(Charitable_Solicitation_Registration1__c csrList : [select Id, Name,Mailing_Address1__c,Street_Address1__c,Phone_No__c,Fax_No__c,
                                                                Website__c,Email__c,Other_Names__c,Total_Revenue__c,Program_Service_Expenses__c,
                                                                Management_General_Expenses__c,Fundraising_Expenses__c,Total_Expenses__c,Purpose__c,
                                                                Programs__c,Use_of_Funds__c,Oversight_of_fundraisings__c,Employees_of_the_organization__c,
                                                                Volunteers__c,X16_a_Currently_Registered__c,X16_b_State_Violation_History__c,
                                                                X16_c_Formerly_Registered__c,X17__c,California__c,Illinois__c,Massachusetts__c,X21_a__c,
                                                                X21_b__c,X21_c__c,PFR_List__c,X20_c_PFR_Gross_Receipts_Compensation__c,X20_d__c,
                                                                Board_of_Directors_Officers_Trustees__c,Board_meetings__c,Compensation_Information__c,
                                                                Control_persons__c,X10_year_Employment_History__c,Company_Name__c,Term_of_Employment__c,
                                                                X27_a__c,X27_b__c,Criminal_acts__c,Funds_Custody__c,Funds_Distribution__c,
                                                                Signatory_authority__c,Financial_records_Custody__c,Budget_approval__c,Banks__c,
                                                                Accountant_Auditor__c,Nonprofit_donors__c,Signatures__c,Registered_Agent__c,
                                                                Separate_Corporate_Registrations__c,Sources_of_support__c,Worship_services__c,
                                                                Illinois_E_3a__c,Illinois_E_3b__c,Illinois_E_3c__c,New_York__c,Maryland__c,New_York1__c,
                                                                Ohio__c,Oklahoma__c,Oregon__c,South_Carolina__c,OwnerId,Owner.Email,LastModifiedBy.Name, 
                                                                CreatedBy.Profile.Name,LastModifiedBy.Profile.Name,Client__r.Owner.Email 
                                                                from Charitable_Solicitation_Registration1__c where id in:Trigger.new])
        {
            if(csrList.CreatedBy.Profile.Name == Label.WC_B_Customer_users || csrList.LastModifiedBy.Profile.Name ==Label.WC_B_Customer_users){
                if(csrList.Client__r.Owner.Email != null)
                {
                    toEmail.add(csrList.Client__r.Owner.Email);
                    system.debug('csrList.Client__r.Owner.Email'+csrList.Client__r.Owner.Email);
                }
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                String messageBody;
                messageBody='<HTML><body>Hi, <br/><br/>This is to inform you that following value(s) has been changed in the csr initial checklist: <br/> ';
                if(csrList.Name != trigger.oldMap.get(csrList.Id).Name)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Name.getLabel() +':'+   csrList.Name;
                }
                if(csrList.Phone_No__c != trigger.oldMap.get(csrList.Id).Phone_No__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Phone_No__c.getLabel() +':'+ csrList.Phone_No__c;
                }
                if(csrList.Other_Names__c != trigger.oldMap.get(csrList.Id).Other_Names__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Other_Names__c.getLabel() +':'+ csrList.Other_Names__c;
                }
                if(csrList.Email__c != trigger.oldMap.get(csrList.Id).Email__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Email__c.getLabel() +':'+ csrList.Email__c;
                }
                if(csrList.Mailing_Address1__c != trigger.oldMap.get(csrList.Id).Mailing_Address1__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Mailing_Address1__c.getLabel() +':'+ csrList.Mailing_Address1__c;
                }
                if(csrList.Street_Address1__c != trigger.oldMap.get(csrList.Id).Street_Address1__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Street_Address1__c.getLabel() +':'+ csrList.Street_Address1__c;
                }
                if(csrList.Fax_No__c != trigger.oldMap.get(csrList.Id).Fax_No__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Fax_No__c.getLabel() +':'+ csrList.Fax_No__c;
                }
                if(csrList.Website__c != trigger.oldMap.get(csrList.Id).Website__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Website__c.getLabel() +':'+ csrList.Website__c;
                }
                if(csrList.Total_Revenue__c != trigger.oldMap.get(csrList.Id).Total_Revenue__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Total_Revenue__c.getLabel() +':'+ csrList.Total_Revenue__c;
                }
                if(csrList.Program_Service_Expenses__c != trigger.oldMap.get(csrList.Id).Program_Service_Expenses__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Program_Service_Expenses__c.getLabel() +':'+ csrList.Program_Service_Expenses__c;
                }
                if(csrList.Management_General_Expenses__c != trigger.oldMap.get(csrList.Id).Management_General_Expenses__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Management_General_Expenses__c.getLabel() +':'+ csrList.Management_General_Expenses__c;
                }
                if(csrList.Fundraising_Expenses__c != trigger.oldMap.get(csrList.Id).Fundraising_Expenses__c)
                {
                    messageBody+= ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Fundraising_Expenses__c.getLabel() +':'+ csrList.Fundraising_Expenses__c;
                }
                if(csrList.Total_Expenses__c != trigger.oldMap.get(csrList.Id).Total_Expenses__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Total_Expenses__c.getLabel() +':'+   csrList.Total_Expenses__c;
                }
                if(csrList.Purpose__c != trigger.oldMap.get(csrList.Id).Purpose__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Purpose__c.getLabel() +':'+   csrList.Purpose__c;
                }
                if(csrList.Programs__c != trigger.oldMap.get(csrList.Id).Programs__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Programs__c.getLabel() +':'+   csrList.Programs__c;
                }
                if(csrList.Use_of_Funds__c != trigger.oldMap.get(csrList.Id).Use_of_Funds__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Use_of_Funds__c.getLabel() +':'+   csrList.Use_of_Funds__c;
                }
                if(csrList.Oversight_of_fundraisings__c != trigger.oldMap.get(csrList.Id).Oversight_of_fundraisings__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Oversight_of_fundraisings__c.getLabel() +':'+   csrList.Oversight_of_fundraisings__c;
                }
                if(csrList.Employees_of_the_organization__c != trigger.oldMap.get(csrList.Id).Employees_of_the_organization__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Employees_of_the_organization__c.getLabel() +':'+   csrList.Employees_of_the_organization__c;
                }
                if(csrList.Volunteers__c != trigger.oldMap.get(csrList.Id).Volunteers__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Volunteers__c.getLabel() +':'+   csrList.Volunteers__c;
                }
                if(csrList.X16_a_Currently_Registered__c != trigger.oldMap.get(csrList.Id).X16_a_Currently_Registered__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X16_a_Currently_Registered__c.getLabel() +':'+   csrList.X16_a_Currently_Registered__c;
                }
                if(csrList.X16_b_State_Violation_History__c != trigger.oldMap.get(csrList.Id).X16_b_State_Violation_History__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X16_b_State_Violation_History__c.getLabel() +':'+   csrList.X16_b_State_Violation_History__c;
                }
                if(csrList.X16_c_Formerly_Registered__c != trigger.oldMap.get(csrList.Id).X16_c_Formerly_Registered__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X16_c_Formerly_Registered__c.getLabel() +':'+   csrList.X16_c_Formerly_Registered__c;
                }
                if(csrList.X17__c != trigger.oldMap.get(csrList.Id).X17__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X17__c.getLabel() +':'+   csrList.X17__c;
                }
                if(csrList.California__c != trigger.oldMap.get(csrList.Id).California__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.California__c.getLabel() +':'+   csrList.California__c;
                }
                if(csrList.Illinois__c != trigger.oldMap.get(csrList.Id).Illinois__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Illinois__c.getLabel() +':'+   csrList.Illinois__c;
                }
                if(csrList.Massachusetts__c != trigger.oldMap.get(csrList.Id).Massachusetts__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Massachusetts__c.getLabel() +':'+   csrList.Massachusetts__c;
                }
                if(csrList.X21_a__c != trigger.oldMap.get(csrList.Id).X21_a__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X21_a__c.getLabel() +':'+   csrList.X21_a__c;
                }
                if(csrList.X21_b__c != trigger.oldMap.get(csrList.Id).X21_b__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X21_b__c.getLabel() +':'+   csrList.X21_b__c;
                }
                if(csrList.X21_c__c != trigger.oldMap.get(csrList.Id).X21_c__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X21_c__c.getLabel() +':'+   csrList.X21_c__c;
                }
                if(csrList.PFR_List__c != trigger.oldMap.get(csrList.Id).PFR_List__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.PFR_List__c.getLabel() +':'+   csrList.PFR_List__c;
                }
                if(csrList.X20_c_PFR_Gross_Receipts_Compensation__c != trigger.oldMap.get(csrList.Id).X20_c_PFR_Gross_Receipts_Compensation__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X20_c_PFR_Gross_Receipts_Compensation__c.getLabel() +':'+   csrList.X20_c_PFR_Gross_Receipts_Compensation__c;
                }
                if(csrList.X20_d__c != trigger.oldMap.get(csrList.Id).X20_d__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X20_d__c.getLabel() +':'+   csrList.X20_d__c;
                }
                if(csrList.Board_of_Directors_Officers_Trustees__c != trigger.oldMap.get(csrList.Id).Board_of_Directors_Officers_Trustees__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Board_of_Directors_Officers_Trustees__c.getLabel() +':'+   csrList.Board_of_Directors_Officers_Trustees__c;
                }
                if(csrList.Board_meetings__c != trigger.oldMap.get(csrList.Id).Board_meetings__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Board_meetings__c.getLabel() +':'+   csrList.Board_meetings__c;
                }
                if(csrList.Compensation_Information__c != trigger.oldMap.get(csrList.Id).Compensation_Information__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Compensation_Information__c.getLabel() +':'+   csrList.Compensation_Information__c;
                }
                if(csrList.Control_persons__c != trigger.oldMap.get(csrList.Id).Control_persons__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Control_persons__c.getLabel() +':'+   csrList.Control_persons__c;
                }
                if(csrList.X10_year_Employment_History__c != trigger.oldMap.get(csrList.Id).X10_year_Employment_History__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X10_year_Employment_History__c.getLabel() +':'+   csrList.X10_year_Employment_History__c;
                }
                if(csrList.Company_Name__c != trigger.oldMap.get(csrList.Id).Company_Name__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Company_Name__c.getLabel() +':'+   csrList.Company_Name__c;
                }
                if(csrList.Term_of_Employment__c != trigger.oldMap.get(csrList.Id).Term_of_Employment__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Term_of_Employment__c.getLabel() +':'+   csrList.Term_of_Employment__c;
                }
                if(csrList.X27_a__c != trigger.oldMap.get(csrList.Id).X27_a__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X27_a__c.getLabel() +':'+   csrList.X27_a__c;
                }
                if(csrList.X27_b__c != trigger.oldMap.get(csrList.Id).X27_b__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.X27_b__c.getLabel() +':'+   csrList.X27_b__c;
                }
                if(csrList.Criminal_acts__c != trigger.oldMap.get(csrList.Id).Criminal_acts__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Criminal_acts__c.getLabel() +':'+   csrList.Criminal_acts__c;
                }
                if(csrList.Funds_Custody__c != trigger.oldMap.get(csrList.Id).Funds_Custody__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Funds_Custody__c.getLabel() +':'+   csrList.Funds_Custody__c;
                }
                if(csrList.Funds_Distribution__c != trigger.oldMap.get(csrList.Id).Funds_Distribution__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Funds_Distribution__c.getLabel() +':'+   csrList.Funds_Distribution__c;
                }
                if(csrList.Signatory_authority__c != trigger.oldMap.get(csrList.Id).Signatory_authority__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Signatory_authority__c.getLabel() +':'+   csrList.Signatory_authority__c;
                }
                if(csrList.Financial_records_Custody__c != trigger.oldMap.get(csrList.Id).Financial_records_Custody__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Financial_records_Custody__c.getLabel() +':'+   csrList.Financial_records_Custody__c;
                }
                if(csrList.Budget_approval__c != trigger.oldMap.get(csrList.Id).Budget_approval__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Budget_approval__c.getLabel() +':'+   csrList.Budget_approval__c;
                }
                if(csrList.Banks__c != trigger.oldMap.get(csrList.Id).Banks__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Banks__c.getLabel() +':'+   csrList.Banks__c;
                }
                if(csrList.Accountant_Auditor__c != trigger.oldMap.get(csrList.Id).Accountant_Auditor__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Accountant_Auditor__c.getLabel() +':'+   csrList.Accountant_Auditor__c;
                }
                if(csrList.Nonprofit_donors__c != trigger.oldMap.get(csrList.Id).Nonprofit_donors__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Nonprofit_donors__c.getLabel() +':'+   csrList.Nonprofit_donors__c;
                }
                if(csrList.Signatures__c != trigger.oldMap.get(csrList.Id).Signatures__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Signatures__c.getLabel() +':'+   csrList.Signatures__c;
                }
                if(csrList.Registered_Agent__c != trigger.oldMap.get(csrList.Id).Registered_Agent__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Registered_Agent__c.getLabel() +':'+   csrList.Registered_Agent__c;
                }
                if(csrList.Separate_Corporate_Registrations__c != trigger.oldMap.get(csrList.Id).Separate_Corporate_Registrations__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Separate_Corporate_Registrations__c.getLabel() +':'+   csrList.Separate_Corporate_Registrations__c;
                }
                if(csrList.Sources_of_support__c != trigger.oldMap.get(csrList.Id).Sources_of_support__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Sources_of_support__c.getLabel() +':'+   csrList.Sources_of_support__c;
                }
                if(csrList.Worship_services__c != trigger.oldMap.get(csrList.Id).Worship_services__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Worship_services__c.getLabel() +':'+   csrList.Worship_services__c;
                }
                if(csrList.Illinois_E_3a__c != trigger.oldMap.get(csrList.Id).Illinois_E_3a__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Illinois_E_3a__c.getLabel() +':'+   csrList.Illinois_E_3a__c;
                }
                if(csrList.Illinois_E_3b__c != trigger.oldMap.get(csrList.Id).Illinois_E_3b__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Illinois_E_3b__c.getLabel() +':'+   csrList.Illinois_E_3b__c;
                }
                if(csrList.Illinois_E_3c__c != trigger.oldMap.get(csrList.Id).Illinois_E_3c__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Illinois_E_3c__c.getLabel() +':'+   csrList.Illinois_E_3c__c;
                }
                if(csrList.New_York__c != trigger.oldMap.get(csrList.Id).New_York__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.New_York__c.getLabel() +':'+   csrList.New_York__c;
                }
                if(csrList.Maryland__c != trigger.oldMap.get(csrList.Id).Maryland__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Maryland__c.getLabel() +':'+   csrList.Maryland__c;
                }
                if(csrList.New_York1__c != trigger.oldMap.get(csrList.Id).New_York1__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.New_York1__c.getLabel() +':'+   csrList.New_York1__c;
                }
                if(csrList.Ohio__c != trigger.oldMap.get(csrList.Id).Ohio__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Ohio__c.getLabel() +':'+   csrList.Ohio__c;
                }
                if(csrList.Oklahoma__c != trigger.oldMap.get(csrList.Id).Oklahoma__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Oklahoma__c.getLabel() +':'+   csrList.Oklahoma__c;
                }
                if(csrList.Oregon__c != trigger.oldMap.get(csrList.Id).Oregon__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.Oregon__c.getLabel() +':'+   csrList.Oregon__c;
                }
                if(csrList.South_Carolina__c != trigger.oldMap.get(csrList.Id).South_Carolina__c)
                {
                    messageBody += ' <br/>'+ Schema.SObjectType.Charitable_Solicitation_Registration1__c.fields.South_Carolina__c.getLabel() +':'+   csrList.South_Carolina__c;
                }
                messageBody +='<br/><br/> Thanks<br/>'+csrList.LastModifiedBy.Name;
                System.debug('messageBody-->'+messageBody);
                toEmail.add(csrList.Owner.Email);
                System.debug('csrList.Owner.Email'+csrList.Owner.Email);
                mail.setToAddresses(toEmail);
                // mail.setCcAddresses(ccEmail);
                mail.setSubject('Update in CSR Initial Checklist');
                mail.setHTMLBody(messageBody);
                mails.add(mail);
                //ended debug code
                
            }
        }
        if(mails.size() > 0){
            Messaging.sendEmail(mails);
        }*/
    }
}