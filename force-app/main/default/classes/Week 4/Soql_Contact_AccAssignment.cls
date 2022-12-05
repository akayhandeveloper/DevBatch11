public class Soql_Contact_AccAssignment {
    public static void contact_to_account() {
        List<Contact> lstcontact = [select id, name, Account.Id, Account.Name from Contact];
        //List<Contact> lstcontact = new List<Contact>();
        //lstcontact = [select id, name, Account.Id, Account.Name from Contact];
        system.debug('contacts--> ' + Lstcontact);

        for (Contact eachContact : lstcontact) {
            system.debug('eachContact--> ' + eachContact);
            string accId = eachContact.Account.Id;
            string accName = eachContact.Account.Name;
            string conName = eachContact.Name;
            string conId = eachContact.Id;
            System.debug('Account Id --> ' + accId);
            //System.debug('Account Id --> ' + eachContact.Account.Id);
            System.debug('Account Name --> ' + accName);
            System.debug('Contact Id --> ' + conId);
            System.debug('Contact Name --> ' + conName);
        }
    }
    public static void parentToChild(){
        list<account> lstaccount = [Select id, name, (select id,name from Contacts) from Account];
        //inner query oldugu icin Contacts dedik with s.
        system.debug(lstaccount);
        //Run the above the over the for loop and display the Contact id and Contact name.
        for (account eachAccount : lstaccount) {
            System.debug(eachAccount);
            System.debug('The account anme is ' + eachAccount.name);
            list<contact> lstcontact = eachAccount.Contacts;
            for (contact eachContact : lstcontact) {
                System.debug('The contact name for the above account is ' + eachContact.name + ' and its ID is ' + eachContact.id);
            }
        }
    }
}
