@isTest
public class External_Links_Controller_TEST {

    static testMethod void testGetExternalLinks() {
    
    //Call Method
    List<Utility_Bar_Link__mdt> results = External_Links_Controller.getExternalLinks();

    Assert.IsNotNull(results[0].Link_URL__c,'expected URL to not be null');
    System.assert(results.size() >= 1,'expected to recieve 1 or more values');
}
}