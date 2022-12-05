List<String> listSample = new List<String>();
listSample.add('will this work?');

string s = '';
s.toLowerCase();

ListDemo.allCats();

string valueAt0 = ListDemo.cadidatesList(0);
system.debug(valueAt0);

string valueAt2 = ListDemo.cadidatesList(2);
system.debug(valueAt2);

string valueAt5 = ListDemo.cadidatesList(5);
system.debug(valueAt5);

//ListDemo.candidatesList();
ListDemo.randomIntegerList();

List<String> listStr = new list<string>();
if(listStr.isEmpty()){
    system.debug('LISTis EMPTY.OKAY?');
}

List<Integer> listInteger = new List<Integer>();
listInteger.add(10); //index = 0 (index=order)
listInteger.add(15); //index = 1 
listInteger.add(21); //index = 2 
listInteger.add(12); //index = 3 
listInteger.add(18); //index = 4 
listInteger.add(15); //index = 5
system.debug('before sort -> ' + listInteger);
listInteger.sort();
system.debug('after sort -> ' + listInteger);