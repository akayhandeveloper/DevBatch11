public class SOQLAssignment {
    public static void soql_WhereClause() {
        list<contact> lstcontact = [select id, name from contact where name like 'a%'];
        system.debug('list of contacts starting with a --> ' + lstContact);

        integer sizeOfLstcontact = lstcontact.size();
        system.debug('size of list contact ' + lstcontact.size());

    }
    public static void soql_FromMethod(){
        list<contact> lstcontact =[select id, lastname, phone from Contact order by createddate desc];

        for (Contact eachCnt : lstcontact) {
            string cntLastName = eachCnt.LastName;
            string cntphone = eachCnt.Phone;
            system.debug('contact last name is ' + cntLastName + ', contact phone is ' + cntPhone);
        }
    }    
}
