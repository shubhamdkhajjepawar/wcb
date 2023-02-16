/*
 * Test Class Name:-TestFAQControllerDynamic
*/
public class FAQControllerDynamic {
    
    @AuraEnabled(cacheable=true) 
    public static knowledgeDataTableWrapper getFAQArticle(){
     //   system.debug('type'+knowtype);
        knowledgeDataTableWrapper objDT =  new knowledgeDataTableWrapper();  
        Map<string,List<Knowledge__Kav>> mapknowledgerecords = new Map<string,List<Knowledge__Kav>>();
        for (Knowledge__Kav k:[select Question__c,Answer__c,Title  FROM Knowledge__kav where  PublishStatus='Online']){
            mapknowledgerecords.put(k.Question__c, new  List <Knowledge__Kav> { k });
        }
           /* if (mapknowledgerecords.containsKey(k.Type__c)){
                mapknowledgerecords.get(k.Type__C). add(k);
                
            }
            else{
                mapknowledgerecords.put(k.Type__C, new  List <Knowledge__Kav> { k });
            }

        }
        for(string key:mapknowledgerecords.keyset()){
            system.debug('key'+key);
            system.debug('value'+mapknowledgerecords.get(key));
        }*/
        
        if(mapknowledgerecords.size()>0){
            objDT.mapknowledgeList=mapknowledgerecords;
        }
        return objDT;

    }
    public class knowledgeDataTableWrapper{
        
        @AuraEnabled
        public  Map<string,List<Knowledge__Kav>>  mapknowledgeList {get;set;} 
    }
    
   /* @AuraEnabled(cacheable=true)
	public static List<Knowledge__Kav> getKavMin()
    {
		List<Knowledge__Kav> ls = [select id,title,PublishStatus,Answer__c from Knowledge__Kav where PublishStatus='Online'
                               ];     
        return ls;
    }*/
}