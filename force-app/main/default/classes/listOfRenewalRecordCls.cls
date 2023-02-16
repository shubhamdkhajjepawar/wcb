/*
 * Test Class Name:-TestRenewalCSRTrigger
 */ 
public with sharing class listOfRenewalRecordCls {
    //public List<Renewal_CSR__c> csrrelst=new List<Renewal_CSR__c>();
     public string csrid {get;set;}
    
    // Pagination code start
    public integer PageSize {get;set;}
    public integer PageNumber {get;set;}
    public integer RecordCount {get;set;}
   	public listOfRenewalRecordCls() {
        PageSize = 5;
        PageNumber = 1;   
        RecordCount = [select Count() from Renewal_CSR__c where CreatedByID =: UserInfo.getUserId()];
    }
    public integer PageIndex {
        get { return (PageNumber - 1); }
    }    
      
    public integer PageCount {
        get { return getPageCount(); }
    }
      
    public integer Offset {
        get { return (PageSize * PageIndex); }
    }
    // Pagination code end
    
    /*public List<Renewal_CSR__c> Renewals{
        //csrrelst=[select Id,name,CreatedDate,CreatedByID from Renewal_CSR__c]; //where CreatedByID =: UserInfo.getUserId()];
        ///return csrrelst;
         //try {
          get{ return [select Id,name,CreatedDate,CreatedByID from Renewal_CSR__c where CreatedByID =: UserInfo.getUserId() 
                       order by CreatedDate DESC Limit :PageSize offset :Offset
                      ]; }//where CreatedByID =: UserInfo.getUserId()];
         /*}
        catch (QueryException e) {
            ApexPages.addMessages(e);   
            return null;
        }*/
    //}
    public Renewal_CSR__c[] getRenewals(){
    
        try
        {
            Renewal_CSR__c[] objRenList = [select Id,name,CreatedDate,CreatedByID from Renewal_CSR__c where CreatedByID =: UserInfo.getUserId() 
                       order by CreatedDate DESC Limit :PageSize offset :Offset];
                                      
            return objRenList;
        }
        catch (QueryException e) {
            ApexPages.addMessages(e);   
            return null;
        }
    }
    
    // Pagination code ended
    public PageReference view() {
    //public Void view() {
      
        // Add the account to the database. 
        // Send the user to the detail page for the new account.
       	//Renewal_CSR__c csrlist=[select Id,name,CreatedDate,CreatedByID from Renewal_CSR__c where id=:csrid limit 1];
       System.debug('csrid'+csrid);
        //System.debug('Csrrelst'+csrrelst);
        //PageReference pageRef = new PageReference('/apex/csrRenewalClinetFormPDFIn?Id='+csrrelst[0].Id);
        PageReference pageRef = new PageReference('/apex/csrRenewalClinetFormPDFIn?Id='+csrid);
        //PageReference pageRef = new PageReference('/apex/csrRenewalClinetFormPDFIn');
        system.debug('');
        pageRef.setRedirect(true); 
        return pageRef;
    }
    
    // Pagination code start
    public integer LNumber {
        get { return RecordCount == 0 ? 0 : (Offset + 1); }
    }
  
    public integer UNumber {
        get { 
            integer iUNum = ((LNumber + PageSize) - 1);
            return (iUnum > RecordCount) ? RecordCount : iUNum; 
        }
    }
      
    public boolean AllowMoveNext {
        get{ return ((PageIndex + 1) < PageCount); } } public boolean AllowMovePrev { get{ return (PageIndex > 0); }
    }
      
    public void Prev() {
        PageNumber--;
  
        if (PageNumber <= 0) { PageNumber = 1; } } public void Next() { PageNumber++; if (PageNumber > PageCount) {
            PageNumber = PageCount;
        }
                                                                       
    }
      
    public void Last() {
        PageNumber = PageCount;
        
        
    }
  
    public void First() {
        PageNumber = 1;
        
    }
      
    private integer getPageCount() {
        integer iPageCount = 1;
  
        if (RecordCount != 0 && PageSize != 0) {
            iPageCount = (RecordCount/PageSize) + ((Math.mod(RecordCount, PageSize)) > 0 ? 1 : 0);
        }
        return iPageCount;
    } 
}