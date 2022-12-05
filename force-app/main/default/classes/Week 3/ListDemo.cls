public class ListDemo {
    public static string cadidatesList(integer i) {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('list of candidates ' + listCandidates);
        string returnValue = ''; //listCandidates[i]; // 5 index did not found

        //check size of list
        integer sizeOfList = listCandidates.size(); //4
        if(i>= 0 && i< sizeOfList){
            returnValue = listCandidates[i]; //getting value from index i
        } else {
            returnValue = 'No values found.';
        }
        return returnValue;
    }    

        public static void randomIntegerList() {
            List<Integer> listInteger = new List<Integer>();
            listInteger.add(10); //index = 0 (index=order)
            listInteger.add(15); //index = 1 
            listInteger.add(21); //index = 2 
            listInteger.add(12); //index = 3 
            listInteger.add(18); //index = 4 
            

            integer index3Value = listInteger.get(3); //get value at index 3 first way.
            //OR
            integer index3Value2 = listInteger[3];  //get value at index 3 second way.

            system.debug('index 3 value is ' + index3Value);
            system.debug('list of random integer ' + listInteger);


        //1. Creating empty list string
        //collection        creating     new        instance of List Class
            //datatype    variable name    

    }

    public static void allCats() {
        List<cat> listCats = new list<cat>();
        //how to add cats in this list
        Cat sfcat2 = new Cat('Leo', 'Orange');
        Cat sfcat3 = new Cat('Luna', 'Brown');
        Cat batch11Cat = new Cat('fluffykins ', 'white'); 
        listCats.add(sfcat2);
        listCats.add(sfcat3);
        listCats.add(batch11Cat); // we add 'instance' of cat class
        listCats.add(sfcat2);
        system.debug('cat list ' + listCats);
        
    }
}
