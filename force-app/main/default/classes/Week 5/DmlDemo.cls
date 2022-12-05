public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create a new account record using apex code sObject
        //1. create new instance
        Account acc = new account();

        //2. set values to fields
        acc.Name = 'SoftInnovas';
        system.debug('NOT INSERTED ' + acc);

        //3. dml
        insert acc; //boom
        system.debug('INSERTED' + acc);
    }
    public static void dmlInsert_cstmObj() {
        //1. create new instance
        Salesforce_project__c spNew = new Salesforce_project__c();
        //2.set field values
        spNew.project_name__c = 'Teach DML to batch 11 ';
        spNew.description__c = 'Everybody is doing great. Keep it up. ';
        //3. dml
        insert spNew;
    }
    public static void dmlUpdateDemo_1() {
        //insert record
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        insert acc;

        //1.set new field value
        acc.Name = 'Salesforce Inc.';
        //NOW come update DML
        update acc;
        System.debug(acc);
        
    }
}
