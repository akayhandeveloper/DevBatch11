public class PrimitiveDataTypeDemo3 {
    //we can have some method name in different classes
    public void printNewDateTime(){

        //3. create datetime using YEAR,MONTH, DAY, HOUR, MINUTE,SECOND.
        Datetime dt3 = Datetime.newInstance(2021, 5, 9, 5, 40, 6);
        system.debug('dt3 is ' + dt3);

        Datetime dt4_1 = Datetime.newInstance(30000);
        system.debug('dt4_1 is ' + dt4_1);

        Long longTime = 5589664125569L;// millisecinds from 1970 Jan 1 000000.
        datetime dt4 = datetime.newInstance(longtime);
        system.debug('dt4 is ' + dt4);

        Datetime dt6 = Datetime.now();
        system.debug('dt 6 current datetime is ' + dt6);

        Datetime dt5 = Datetime.newInstanceGMT(1998, 8, 4, 5, 1, 4);
        system.debug('dt 5 is ' + dt5);

    }
}
