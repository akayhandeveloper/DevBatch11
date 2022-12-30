public class ContactTriggerHandler {

    //1.Don't allow user to update contact if Lead Source is 'Partner Referral'
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
            Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

                //validation
                for (contact eachContact : conTriggerNew) {
                    Contact oldContact = conTriggerOldMap.get(eachContact.id);
                    if (oldContact.LeadSource == 'Partner Referral') {
                        eachContact.addError('Cannot update Partner Referral contact');
                    }
                }
   }

    //2. Don't allow user to update Lead Source
    public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
            Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {

                for (contact eachContact : conTriggerNew) {
                    contact oldContact = conTriggerOldMap.get(eachContact.id);
                    if (eachContact.LeadSource != oldContact.LeadSource) {
                        eachContact.LeadSource.addError('Cannot update lead source. Please user!');
                    }
                }
    }
}