public class ContactTriggerHelper {
    
    public static void addNumberToLastName(List<Contact> newContacts) {
        for (Integer i = 0; i < newContacts.size(); i++) {
            newContacts[i].LastName = newContacts[i].LastName + i;
        }
    }
}
