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
    public static void dmlUpdateDemo_3(){
        //1. soql returns account bcz LIMIT 1
        account acc = [select id, name from account where name = 'SoftInnovas' limit 1];
        acc.Name = 'SoftInnovas Inc.';
        update acc;
        system.debug('update acc ' + acc);
    }
    public static void dmlInsertDemo_4(){
        //1. soql to get ONE acocunt
        account acc = [select name from account where name = 'SoftInnovas Inc.' limit 1];
        //2. create contact's instance
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.accountId = acc.Id;
        insert cnt;
        system.debug('contact record : ' + cnt);
    }
    public static void dmlInsertDemo_55() {
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by CreatedDate desc limit 1];

        //we want to create related ticket
        Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
        stNew.Subject__c = 'Learn Apex dmls';
        stNew.Priority__c = 'High';
        stNew.Status__c = 'New';
        stNew.Requested_by_date__c = date.newInstance(2022, 12, 5);
        stNew.Salesforce_Project__c = sp.Id;
        insert stNew;
        system.debug('st is ' + stNew);
    }
    public static void dmlInsertDemo_5(){
        Salesforce_Project__c sp = [select id, name from salesforce_project__c order by CreatedDate desc limit 1];
        //we want to create related tickets
        Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
        stNew.Subject__c = 'Learn Apex dmls';
        stNew.Priority__c = 'High';
        stNew.Status__c = 'New';
        stNew.Requested_by_date__c = date.newInstance(2022, 12, 6);
        stNew.Salesforce_Project__c = sp.Id;
        insert stNew;
        System.debug('st is  ' + stNew);
    }
    public static void dmlInsertMultiple_right() {
        List<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
        //System.debug(listAcc);  
    }
    public static void dmlInsertMultiple_right2() {
        List<account> listAcc = new list<account>();

        for (Integer i = 0; i < 155; i++) {
            account acc = new account();
            acc.name = 'SoftInnovas v ' + i;
            listAcc.add(acc);
        }
        //check if the list is not empty 
        if (!listAcc.isEmpty()){
            insert listAcc;//execute this Only if LIST is not EMPTY
        }
    }
    public static void dmlUpdatetMultiple_right1() {
        List<account> listAcc = [select id, name, active__c from account];

        List<Account> updateAccount = new List<Account>();

        for(account acc : listAcc){
            if(acc.Active__c =='Yes'){
                acc.Name = acc.Name + 'via B.0';
                updateAccount.add(acc);
            }
        }
        if(!updateAccount.isEmpty()){
            update updateAccount;
        }
    }
    
}
