public class ContactTriggerHelper {
    
    public static void addNumberToLastName(List<Contact> newContacts) {
        for (Integer i = 0; i < newContacts.size(); i++) {
            newContacts[i].LastName = newContacts[i].LastName + i;
        }
    }

    public static void updateContctEmail(Map<Id, Contact> newContactsById) {
        List<Contact> contacts = [SELECT Email FROM Contact WHERE Id =: newContactsById.keySet()];
        for (Contact contact : contacts) {
            contact.Email = 'triggerTest@gmail.com';
        }

        update contacts;
    } 
}
