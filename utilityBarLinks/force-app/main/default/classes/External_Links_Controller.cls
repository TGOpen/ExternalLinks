/* Documentation Station */

public with sharing class External_Links_Controller {
    @AuraEnabled
    public static List<Utility_Bar_Link__mdt> getExternalLinks(){
        try {
            return[SELECT MasterLabel,Link_URL__c,Open_in_console_tab__c FROM Utility_Bar_Link__mdt WHERE Active__c = TRUE ORDER BY Order__c ASC];
            
        }catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}