@isTest
public class TestCaretingRegistarionPageCont {
    
    @isTest
    private static void saveRecord_TGN_TEST(){
        Program__c drProgram_c;
        drProgram_c=new Program__c();
        drProgram_c.Name='Test';
        insert drProgram_c;
        Test.startTest();
        ApexPages.StandardController acController = new ApexPages.StandardController(drProgram_c);
        CaretingRegistarionPageCont obj = new CaretingRegistarionPageCont(acController);
        obj.cbTest=true;
        obj.cbTest1=true;
        obj.cbTest2=true;
        obj.cbTest3=true;
        obj.cbTest4=true;
        obj.cbTest5=true;
        obj.cbTest6=true;
        obj.cbTest7=true;
        obj.cbTest8=true;
        obj.cbTest9=true;
        obj.cbTest10=true;
        obj.cbTest11=true;
        obj.cbTest12=true;
        obj.cbTest13=true;
        obj.cbTest14=true;
        obj.cbTest15=true;
        obj.cbTest16=true;
        obj.cbTest17=true;
        obj.cbTest18=true;
        obj.cbTest19=true;
        obj.cbTest20=true;
        obj.cbTest21=true;
        obj.cbTest22=true;
        obj.cbTest23=true;
        obj.cbTest24=true;
        obj.cbTest25=true;
        obj.cbTest26=true;
        obj.cbTest27=true;
        obj.cbTest28=true;
        obj.cbTest29=true;
        obj.cbTest30=true;
        obj.cbTest31=true;
        obj.cbTest32=true;
        obj.cbTest33=true;
        obj.cbTest34=true;
        obj.cbTest35=true;
        obj.cbTest36=true;
        obj.cbTest37=true;
        obj.cbTest38=true;
        obj.cbTest39=true;
        obj.cbTest40=true;
        obj.cbTest41=true;
        obj.cbTest42=true;
        obj.cbTest43=true;
        obj.cbTest44=true;
        obj.cbTest45=true;
        obj.cbTest46=true;
        obj.cbTest47=true;
        obj.cbTest48=true;
        obj.cbTest49=true;
        obj.cbTest50=true;
        /*
Registration__c rr= new Registration__c();
rr.name=drProgram_c.name+' '+'Alabama';
rr.Program__c=drProgram_c.id;
rr.Status__c='New';
rr.State__c='Alabama';*/
        
        obj.saveRecord();
        Test.stopTest();
    }
}