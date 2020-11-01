public class ContactTriggerHandler implements TriggerHandler {
    
    public static void beforeInsert(List<sObject> newRecords) {
        ContactTriggerHelper.addNumberToLastName((List<Contact>) newRecords);
    }

    public static void afterInsert(Map<Id, sObject> newRecordsById) {
        ContactTriggerHelper.updateContctEmail((Map<Id, Contact>) newRecordsById);
    }

    public static void beforeUpdate(Map<Id, sObject> oldRecordsById, Map<Id, sObject> newRecordsById) {

    }

    public static void afterUpdate(Map<Id, sObject> oldRecordsById, Map<Id, sObject> newRecordsById) {

    }

    public static void beforeDelete(Map<Id, sObject> oldRecordsById) {

    }

    public static void afterDelete(Map<Id, sObject> newRecordsById) {

    }

    public static void afterUndelete(Map<Id, sObject> newRecordsById) {

    }
}
