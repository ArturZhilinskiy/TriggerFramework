public class TriggerDispatcher {
    private static Boolean isFirstCall = true;
    public static void run(TriggerHandler handler, System.TriggerOperation operationType) {

        switch on operationType {
            when BEFORE_INSERT {
                handler.beforeInsert(Trigger.new);
            }
            when AFTER_INSERT {
                handler.afterInsert(Trigger.newMap);
            }
            when BEFORE_UPDATE {
                handler.beforeUpdate(Trigger.oldMap, Trigger.newMap);
            }
            when AFTER_UPDATE {
                if (isFirstCall == true) {
                    isFirstCall = false;
                    handler.afterUpdate(Trigger.oldMap, Trigger.newMap);
                }
            }
            when BEFORE_DELETE {
                handler.beforeDelete(Trigger.oldMap);
            }
            when AFTER_DELETE {
                handler.afterDelete(Trigger.oldMap);
            }
            when AFTER_UNDELETE {
                handler.afterUnDelete(Trigger.newMap);
            }
        }

    }

}
