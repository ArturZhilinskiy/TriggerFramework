interface TriggerHandler {
    void beforeInsert(List<sObject> newRecords);
    void afterInsert(Map<Id, sObject> newRecordsById);
    void beforeUpdate(Map<Id, sObject> oldRecordsById, Map<Id, sObject> newRecordsById);
    void afterUpdate(Map<Id, sObject> oldRecordsById, Map<Id, sObject> newRecordsById);
    void beforeDelete(Map<Id, sObject> oldRecordsById);
    void afterDelete(Map<Id, sObject> newRecordsById);
    void afterUndelete(Map<Id, sObject> newRecordsById);
}