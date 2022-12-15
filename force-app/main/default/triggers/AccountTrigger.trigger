trigger AccountTrigger on Account (before insert, before update, after insert,  after update) {
    
    if ( trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
        /*
        //we move for part to AccounttriggerHandler class.
        for(account eachAcc : trigger.new) {
            boolean updateDesc = false;

            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                //just update field
                updateDesc = true;
                //eachAcc.Description = 'Account is now active. Enjoy buddy!!';
            }
            //if account is updated
               //check if active field is changed from not yes to yes
               //then update description
               if (Trigger.isUpdate) {
                //get old account using OldMAP
                Account oldAccount = Trigger.OldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = Trigger.NewMap.get(eachAcc.Id);
                //oldAccount.Active__c != newAccount.Active__c
                if (eachAcc.Active__c == 'Yes' &&
                   oldAccount.Active__c != newAccount.Active__c ) {
                    //eachAcc.Description = 'Account is NOW ACTIVE. You must Enjoy!';
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is NOW ACTIVE. You must Enjoy!';
            }
        }
        */
    }
    
    
    /*
    IF(Trigger.isAfter && Trigger.isUpdate) {
        System.debug('AFTER UPDATE TRIGGER');

        map<id, account> accTriggerOldMap = trigger.oldMap;// map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap;// map of old records, id is key
        set<id> accountIds = accTriggerNewMap.keySet();//all the IDs
        integer countWebsite = 0;

        for(Id eachId : accountIds) {
            //get new account value from NewMap - id is same in newmap and old map
            account newAcc =  accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            System.debug('** newWebsite --> ' + newWebsite);

            //get Old account value from OldMap
            account oldAcc =  accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            System.debug('** oldWebsite -->' + oldWebsite);

            if (newWebsite != oldWebsite) {
                System.debug('Account is ' + newAcc.Name + ', website changed to  ' + newWebsite);
                countwebsite++;
            }
        }
        System.debug('website updated for # of accounts => ' + countWebsite);
    }
    */


    /*
    List<Account> accTriggerOld = trigger.old;//list old records
    List<Account> accTriggerNew = trigger.new;//list new records

    map<id, account> accTriggerOldMap = trigger.oldMap;// map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap;// map of old records, id is key

    if (Trigger.isAfter && Trigger.isUpdate) {

        //old account name and new account name using ONE for loop.
        
        //get set of id using map.
        set<id> accountIds = accTriggerNewMap.keySet();
        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('NEW Acc Name is ' +  newacc.Name);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('Old Acc Name is ' +  oldacc.Name);
        }
    }
    */

/*
    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old => ' + accTriggerOld);
        system.debug('before insert new => ' + accTriggernew);
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old => ' + accTriggerOld);
        system.debug('after insert new => ' + accTriggernew);
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old => ' + accTriggerOld);
        system.debug('before update new => ' + accTriggernew);
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old => ' + accTriggerOld);
        system.debug('after update new => ' + accTriggernew);
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    }
    */

    /*
    List<Account> accTriggerOld = trigger.old; //OLD(previous) values of records
    for(account oldAcc: trigger.old){
        System.debug('Old acc id = ' + oldAcc.id + ', Old accname = ' + oldAcc.Name);
    }
    List<Account> accTriggerNew = trigger.new;//New values of records
    for(account newAcc: trigger.new){
        System.debug('New acc id = ' + newAcc.id + ', New accname = ' + newAcc.Name);
    }
    */
    

    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('account before insert trigger.old -->   ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('account after insert trigger.old -->   ' + trigger.old);
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('account before insert trigger.old -->   ' + trigger.old);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('account after insert trigger.old -->   ' + trigger.old);
    }
    */

    /*
    list<account> accTriggerNew = trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('BEFORE newly UPDATE record =====> ' + accTriggerNew);
        System.debug('BEFORE newly UPDATE accounts size == ' + accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            System.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + ', each acc name is  ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('AFTER newly UPDATE record =====> ' + accTriggerNew);
        System.debug('AFTER newly UPDATE accounts size == ' + accTriggerNew.size());
        for (account eachAcc : accTriggerNew) {
            System.debug('AFTER UPDATE each acc id is ' + eachAcc.Id + ', each acc name is  ' + eachacc.Name);
        }
    }
    */

    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('BEFORE newly inserted record =====> ' + accTriggerNew);
        System.debug('BEFORE newly inserted accounts size == ' + accTriggerNew.size())
        for (account eachAcc : accTriggerNew) {
            System.debug('BEFORE each acc id is ' + eachAcc.Id + ', each acc name is  ' + eachacc.Name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('AFTER newly inserted record =====> ' + accTriggerNew);
        System.debug('AFTER newly inserted accounts size == ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            System.debug('AFTER each acc id is ' + eachAcc.Id + ', each acc name is  ' + eachacc.Name);
        }
    }*/
    
    
    /*
    //insert
    if (trigger.isInsert && trigger.isAfter){
    System.debug('account after insert trigger called.');
}
     if (trigger.isInsert && trigger.isBefore) {
        System.debug('account before insert trigger called.');
     }

     //update
     if (trigger.isUpdate && trigger.isBefore) {
        System.debug('account before UPDATE trigger called.');
     }
     if (trigger.isUpdate && trigger.isAfter){
        System.debug('account after UPDATE trigger called.');
    }
     */       
    
    
    /*
    //before insert
    if (Trigger.isInsert) {
    System.debug('account before insert trigger called.');//ehen will this code run? when we create a record.
}
    if (Trigger.isUpdate){
    System.debug('account before UPDATE trigger called.');
    }
*/

    /*
    trigger AccountTrigger on Account (before insert, after insert) {
    if(Trigger.isBefore){
    system.debug('account before insert trigger called.');
    }
    if(Trigger.isAfter){
    system.debug('account after insert trigger called.');
    }
    */

}