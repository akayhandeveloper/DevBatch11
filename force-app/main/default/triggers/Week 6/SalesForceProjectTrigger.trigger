trigger SalesForceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
         //call trigger handler to CREATE salesforce ticket.
         SalesForceProjectTriggerHandler.createDefaultTicket(Trigger.New);

         //call future method,
         system.debug('calling future method NOW.');
         Map<id, Salesforce_Project__c> spNewMap = trigger.newMap;
         SalesForceProjectTriggerHandler.spUpdateDescription(spNewMap.keySet());
         system.debug('called future method. DONE.');

    }
    if (Trigger.isBefore && trigger.isUpdate) {
        //call validation method here.
        //SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //a
        SalesForceProjectTriggerHandler.spStatusCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
   
}