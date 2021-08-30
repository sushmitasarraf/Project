public with sharing class Information {
    @AuraEnabled(cacheable=true)
    public static user getUserInfo(String userId) {
        return [SELECT ID, FirstName, LastName, Name, Title, Profile.Name,  Email From User WHERE ID =: userId LIMIT 1];
    }

    @AuraEnabled
    public static List<Contact> displayRecord(String accId){
        List<Contact> ConList = new List<Contact>();
        for (Contact con : [SELECT Name,AccountId from Contact WHERE AccountId=:accId]) {
            ConList.add(con);            
       }
       return ConList;
    }
}   