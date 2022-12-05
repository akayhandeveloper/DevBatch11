public  class StringAssignment {
    public void StringLocalstring() {
        String localString = 'Thanks for the session on the string';
        system.debug(localString);

        integer lengthOflocalstr = localString.length();
        system.debug('Thanks for the session on the string  ' + lengthOflocalstr);

        string caplocalString = localString.toUpperCase();
        system.debug('in CAPS -> ' + caplocalString);

        boolean sessionContains = localString.contains('session');
        system.debug('contains session? ' + sessionContains);

        boolean sessionContains2 = localString.contains('sessions');
        system.debug('contains sessions? ' + sessionContains2);

        boolean sessionContains3 = localString.contains('SESSION');
        system.debug('contains SESSION? ' + sessionContains3);

    }
}
