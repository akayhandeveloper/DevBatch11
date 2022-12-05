public class StringDemoClass {
    public  void StringMethod1() {
        String sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of session description is ' + lengthOfStr);

        string capSessionDescription = sessionDescription.toUpperCase();
        system.debug('in CAPS -> ' + capSessionDescription);

        //3. check if string contain 'apex'
        boolean apexContains = sessionDescription.contains('apex');//'learning string methods in apex language';
        system.debug('contains apex?????? ' + apexContains);

        //3.2 check if string contain 'apex'
        boolean apexContains2 = sessionDescription.contains('Apex');
        system.debug('contains Apex?????? ' + apexContains2);

        //3.3 check if string contain 'apex'
        boolean apexContains22 = sessionDescription.containsIgnoreCase('Apex');
        system.debug('contains ignore Case Apex?????? ' + apexContains22);


        //if string contains SalesForce.
        boolean sfContains = sessionDescription.contains('SalesForce');
        system.debug('contains SalesForce?????? ' + sfContains);


 }
}
