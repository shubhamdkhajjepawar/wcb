/*
 * Test Class Name:-TestCaretingRegistarionPageCont
 */
public class CaretingRegistarionPageCont {
    
    public Program__c pro {set;get;}
    public boolean cbTest{set;get;}
    public boolean cbTest1 {set;get;}
    public boolean cbTest2 {set;get;}
    public boolean cbTest3 {set;get;}
    public boolean cbTest4 {set;get;}
    
    public boolean cbTest5 {set;get;}
    public boolean cbTest6 {set;get;}
    public boolean cbTest7 {set;get;}
    public boolean cbTest8 {set;get;}
    public boolean cbTest9 {set;get;}
    public boolean cbTest10 {set;get;}
    public boolean cbTest11 {set;get;}
    public boolean cbTest12 {set;get;}
    public boolean cbTest13 {set;get;}
    public boolean cbTest14 {set;get;}
    public boolean cbTest15 {set;get;}
    public boolean cbTest16 {set;get;}
    public boolean cbTest17{set;get;}
    public boolean cbTest18{set;get;}
    public boolean cbTest19 {set;get;}
    public boolean cbTest20 {set;get;}
    public boolean cbTest21 {set;get;}
    public boolean cbTest22 {set;get;}
    public boolean cbTest23 {set;get;}
    public boolean cbTest24 {set;get;}
    public boolean cbTest25{set;get;}
    
    public boolean cbTest26 {set;get;}
    public boolean cbTest27 {set;get;}
    public boolean cbTest28 {set;get;}
    public boolean cbTest29 {set;get;}
    
    public boolean cbTest30 {set;get;}
    public boolean cbTest31 {set;get;}
    public boolean cbTest32 {set;get;}
    public boolean cbTest33{set;get;}
    public boolean cbTest34 {set;get;}
    public boolean cbTest35 {set;get;}
    public boolean cbTest36 {set;get;}
    public boolean cbTest37 {set;get;}
    public boolean cbTest38 {set;get;}
    public boolean cbTest39 {set;get;}
    public boolean cbTest40 {set;get;}
    public boolean cbTest41 {set;get;}
    public boolean cbTest42{set;get;}
    public boolean cbTest43{set;get;}
    public boolean cbTest44 {set;get;}
    public boolean cbTest45 {set;get;}
    public boolean cbTest46 {set;get;}
    public boolean cbTest47 {set;get;}
    public boolean cbTest48 {set;get;}
    public boolean cbTest49 {set;get;}
    public boolean cbTest50 {set;get;}
    list<Registration__c> RegList= new list<Registration__c>();
    
    public CaretingRegistarionPageCont(ApexPages.StandardController controller) {
        this.pro = (Program__c)controller.getRecord();
        system.debug('pro-->'+pro);
    }
    public pagereference saveRecord(){
        Program__c p=[select id,name from Program__c where id=:pro.id];
        system.debug('p-->'+p);
        if(cbTest==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Alabama';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Alabama';
            RegList.add(rr);
        }
        if(cbTest1==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Alaska';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Alaska';
            RegList.add(rr);
        }
        if(cbTest49==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'New York';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='New York';
            RegList.add(rr);
        }
        if(cbTest50==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'District of Columbia';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='District of Columbia';
            RegList.add(rr);
        }
        if(cbTest2==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Arizona';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Arizona';
            RegList.add(rr);
        }
        if(cbTest3==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Arkansas';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Arkansas';
            RegList.add(rr);
        }
        if(cbTest4==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'California';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='California';
            RegList.add(rr);
        }
        
        if(cbTest5==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Colorado';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Colorado';
            RegList.add(rr);
        }
        
        if(cbTest6==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Connecticut';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Connecticut';
            RegList.add(rr);
        }
        
        if(cbTest7==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Delaware';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Delaware';
            RegList.add(rr);
        }
        
        if(cbTest8==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Florida';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Florida';
            RegList.add(rr);
        }
        
        if(cbTest9==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Georgia';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Georgia';
            RegList.add(rr);
        }
        
        if(cbTest10==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Hawaii';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Hawaii';
            RegList.add(rr);
        }
        
        if(cbTest11==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Idaho';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Idaho';
            RegList.add(rr);
        }
        
        if(cbTest12==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Illinois';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Illinois';
            RegList.add(rr);
        }
        if(cbTest13==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Indiana';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Indiana';
            RegList.add(rr);
        }
        
        if(cbTest14==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Iowa';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Iowa';
            RegList.add(rr);
        }
        if(cbTest15==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Kansas';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Kansas';
            RegList.add(rr);
        }
        if(cbTest16==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Kentucky';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Kentucky';
            RegList.add(rr);
        }
        
        if(cbTest17==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Louisiana';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Louisiana';
            RegList.add(rr);
        }
        
        if(cbTest18==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Maine';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Maine';
            RegList.add(rr);
        }
        
        if(cbTest19==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Maryland';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Maryland';
            RegList.add(rr);
        }
        
        if(cbTest20==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Massachusetts';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Massachusetts';
            RegList.add(rr);
        }
        
        if(cbTest21==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Michigan';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Michigan';
            RegList.add(rr);
        }
        
        if(cbTest22==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Minnesota';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Minnesota';
            RegList.add(rr);
        }
        if(cbTest23==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Mississippi';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Mississippi';
            RegList.add(rr);
        }
        
        if(cbTest24==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Missouri';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Missouri';
            RegList.add(rr);
        }
        
        if(cbTest25==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Montana';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Montana';
            RegList.add(rr);
        }
        
        if(cbTest26==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Nebraska';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Nebraska';
            RegList.add(rr);
        }
        
        if(cbTest27==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Nevada';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Nevada';
            RegList.add(rr);
        }
        
        if(cbTest28==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'New Hampshire';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='New Hampshire';
            RegList.add(rr);
        }
        
        if(cbTest29==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'New Jersey';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='New Jersey';
            RegList.add(rr);
        }
        
        if(cbTest30==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'New Mexico';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='New Mexico';
            RegList.add(rr);
        }
        
        if(cbTest31==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'North Carolina';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='North Carolina';
            RegList.add(rr);
        }
        
        if(cbTest32==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'North Dakota';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='North Dakota';
            RegList.add(rr);
        }
        
        if(cbTest33==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Ohio';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Ohio';
            RegList.add(rr);
        }
        
        if(cbTest34==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Oklahoma';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Oklahoma';
            RegList.add(rr);
        }
        
        if(cbTest35==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Oregon';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Oregon';
            RegList.add(rr);
        }
        
        if(cbTest36==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'South Carolina';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='South Carolina';
            RegList.add(rr);
        }
        
        if(cbTest37==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Rhode Island';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Rhode Island';
            RegList.add(rr);
        }
        
        if(cbTest38==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'South Dakota';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='South Dakota';
            RegList.add(rr);
        }
        
        if(cbTest39==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Tennessee';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Tennessee';
            RegList.add(rr);
        }
        
        if(cbTest40==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Pennsylvania';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Pennsylvania';
            RegList.add(rr);
        }
        if(cbTest41==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Texas';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Texas';
            RegList.add(rr);
        }
        
        if(cbTest42==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Utah';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Utah';
            RegList.add(rr);
        }
        
        if(cbTest43==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Vermont';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Vermont';
            RegList.add(rr);
        }
        
        if(cbTest44==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Virginia';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Virginia';
            RegList.add(rr);
        }
        
        if(cbTest45==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Washington';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Washington';
            RegList.add(rr);
        }
        
        if(cbTest46==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'West Virginia';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='West Virginia';
            RegList.add(rr);
        }
        
        if(cbTest47==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Wisconsin';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Wisconsin';
            RegList.add(rr);
        }
        
        if(cbTest48==true)
        {
            Registration__c rr= new Registration__c();
            rr.name=p.name+' '+'Wyoming';
            rr.Program__c=pro.id;
            rr.Status__c='New';
            rr.State__c='Wyoming';
            RegList.add(rr);
        }
        
        if(RegList.size()>0)
        {
            system.debug('RegList-->'+RegList);
            insert RegList;
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Registration record created.'));
            //pagereference ref =new pagereference('https://websterchamberlainbean--cube84dev.lightning.force.com/lightning/r/Registration__c/'+pro.id+'/view');//Paste your vfpage name
            pagereference ref =new pagereference(URL.getSalesforceBaseUrl().toExternalForm()+'/lightning/r/Registration__c/'+pro.id+'/view');//Paste your vfpage name
            system.debug('ref-->'+ref);
            ref.setredirect(true);
            return ref;
        }
        if(cbTest==FALSE && cbTest1==FALSE && cbTest2==FALSE && cbTest3==FALSE && cbTest4==FALSE && cbTest5==FALSE && cbTest6==FALSE && cbTest7==FALSE && cbTest8==FALSE && 
           cbTest9==FALSE && cbTest10==FALSE && cbTest11==FALSE && cbTest12==FALSE && cbTest13==FALSE && cbTest14==FALSE && cbTest15==FALSE && cbTest16==FALSE && 
           cbTest17==FALSE && cbTest18==FALSE && cbTest19==FALSE && cbTest20==FALSE && cbTest21==FALSE && cbTest22==FALSE && cbTest23==FALSE && cbTest24==FALSE && 
           cbTest25==FALSE && cbTest26==FALSE && cbTest27==FALSE && cbTest28==FALSE && cbTest29==FALSE && cbTest30==FALSE && cbTest31==FALSE && cbTest32==FALSE && 
           cbTest33==FALSE && cbTest34==FALSE && cbTest35==FALSE && cbTest36==FALSE && cbTest37==FALSE && cbTest38==FALSE && cbTest39==FALSE && cbTest40==FALSE && 
           cbTest41==FALSE && cbTest42==FALSE && cbTest43==FALSE && cbTest44==FALSE && cbTest45==FALSE && cbTest46==FALSE && cbTest47==FALSE && cbTest48==FALSE && cbTest49==FALSE && cbTest50==FALSE)
        {
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Error,'Please select at least one state. To cancel, click the Back button.'));
            //ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Please Select check box to create a registration record'));
        }
        return null;
    }
}