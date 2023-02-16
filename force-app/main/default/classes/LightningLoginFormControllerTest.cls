@IsTest(SeeAllData = true)
public with sharing class LightningLoginFormControllerTest 
{

 @IsTest
 static void LightningLoginFormControllerInstantiation() 
 {
  LightningLoginFormController controller = new LightningLoginFormController();
  System.assertNotEquals(controller, null);
 }
    
    static testMethod void testRegistration() 
    {
      //  SiteRegisterController controller = new SiteRegisterController();
        string username = 'test@salesforce.com';
        string password = '123456';
        string startUrl = 'www.test.salesforce.com';
        // registerUser always returns null when the page isn't accessed as a guest user
        System.assertEquals(LightningLoginFormController.login(username, password, startUrl), null);
        
    }
    
    static testMethod void testRegistration1() 
    {
      //  SiteRegisterController controller = new SiteRegisterController();
      //  string username = 'test@salesforce.com';
        string expId = '123456';
      //  string startUrl = 'www.test.salesforce.com';
        // registerUser always returns null when the page isn't accessed as a guest user
        System.assertNotEquals(LightningLoginFormController.setExperienceId(expId), null);
        
    }
    
    static testMethod void testRegistration2() 
    {
        System.assertEquals(LightningLoginFormController.getForgotPasswordUrl() , null);
    }

 @IsTest
 static void testIsUsernamePasswordEnabled() 
 {
  System.assertEquals(true, LightningLoginFormController.getIsUsernamePasswordEnabled());
 }

 @IsTest
 static void testIsSelfRegistrationEnabled() 
 {
  System.assertEquals(false, LightningLoginFormController.getIsSelfRegistrationEnabled());
 }

 @IsTest
 static void testGetSelfRegistrationURL() 
 {
  System.assertEquals(null, LightningLoginFormController.getSelfRegistrationUrl());
 }

 @IsTest
 static void testAuthConfig() 
 {
  Auth.AuthConfiguration authConfig = LightningLoginFormController.getAuthConfig();
  System.assertNotEquals(null, authConfig);
 }
}