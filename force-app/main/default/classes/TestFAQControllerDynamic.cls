@isTest
public class TestFAQControllerDynamic {
    @isTest static void method1(){
        Knowledge__kav newArticle = new Knowledge__kav();
        newArticle.Title = 'test';
        newArticle.UrlName= 'test';
        newArticle.Question__c='Test WC&B';
        newArticle.Answer__c='Test WC&B';
        newArticle.Language = 'en_US';  
        insert newArticle;
        KbManagement.PublishingService.publishArticle([select id,KnowledgeArticleId from Knowledge__kav where id=:newArticle.Id].KnowledgeArticleId, true);
        FAQControllerDynamic.getFAQArticle();
        //FAQControllerDynamic.getKavMin();
    }

}