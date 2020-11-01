public class ContactTriggerHelper {
    
    public static void addNumberToLastName(List<Contact> newContacts) {
        for (Integer i = 0; i < newContacts.size(); i++) {
            newContacts[i].LastName = newContacts[i].LastName + i;
        }
    }

    public static void updateContctEmail(Map<Id, Contact> newContactsById) {
        for (Id key : newContactsById.keySet()) {
            for (Contact contact : newContactsById.get(key)) {
                contact.Email = 'triggerTest@gmail.com';
            }
        }

        update newContactsById.values();
    } 
}
