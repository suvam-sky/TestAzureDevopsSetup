public with sharing class BoatDataService {
    // public BoatDataService() {

    // }

        @AuraEnabled(cacheable=true)
        public static List<BoatType__c> getBoatTypes(){
            try {
                return [SELECT Name, Id FROM BoatType__c WITH SECURITY_ENFORCED ORDER BY Name];
            } catch (Exception e) {
                throw new AuraHandledException(e.getMessage());
            }
        }

        @AuraEnabled(cacheable=true)
        public static List<Boat__c> getBoats(String boatTypeId) {
            // Without an explicit boatTypeId, the full list is desired
            String query = 'SELECT '
                        + 'Name, Description__c, Geolocation__Latitude__s, '
                        + 'Geolocation__Longitude__s, Picture__c, Contact__r.Name, '
                        + 'BoatType__c, BoatType__r.Name, Length__c, Price__c '
                        + 'FROM Boat__c';
            if (String.isNotBlank(boatTypeId)) {
                query += ' WHERE BoatType__c = :boatTypeId';
            }
            return Database.query(query);
        }

}