public class SBQQExternalIdGenerator {
    public static void createSBQQExtIds(){
        List<string> cpqObjs = new List<String>{
            'SBQQ__BlockPrice__c',
            'SBQQ__PriceSchedule__c',
            'SBQQ__Dimension__c',
            'SBQQ__UpgradeSource__c',
            'SBQQ__DiscountSchedule__c',
            'SBQQ__ProductFeature__c',
            'SBQQ__ConfigurationAttribute__c',
            'SBQQ__PriceRule__c',
            'SBQQ__ProductAction__c',
            'SBQQ__ProductRule__c',
            'SBQQ__SummaryVariable__c',
            'SBQQ__PriceCondition__c',
            'SBQQ__LookupQuery__c',
            'SBQQ__ConfigurationRule__c',
            'SBQQ__ErrorCondition__c',
            'SBQQ__TemplateContent__c',
            'SBQQ__TemplateSection__c',
            'SBQQ__RelatedContent__c',
            'SBQQ__LineColumn__c',
            'SBQQ__QuoteTemplate__c',
            'SBQQ__SearchIndex__c',
            'SBQQ__QuoteTerm__c',
            'SBQQ__Localization__c',
            'SBQQ__ProductOption__c',
            'SBQQ__TermCondition__c'
            //'Product2',
            //'Pricebook2',
            //'PricebookEntry',
        };
        for (String cpqObj : cpqObjs){
            MetadataUtility.generateExtIdTextField(
                cpqObj,
                'ExtId__c',
                'External Id value for use with Copado Data Deployer or other external systems',
                'ExtId'
			);
        	system.debug(cpqObj + 'done!');
            } 
    }
}