SetDemo.citySet();
SetDemo.randomIntegerSet();

List<Integer> listInteger = new List<Integer>();
listInteger.add(10); //index = 0 (index=order)
listInteger.add(15); //index = 1 
listInteger.add(21); //index = 2 
listInteger.add(12); //index = 3 
listInteger.add(18); //index = 4 
listInteger.add(15); //index = 5

system.debug('list => ' + listInteger);
Set<Integer> setInt = SetDemo.setFromList(listInteger);
system.debug('set => ' + setInt);

Set<String> cities = new Set<String>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Nairobi');
cities.add('Berlin');
cities.add('Tokyo');
cities.add('Lisbon');
Set<String> upperCaseSet = SetDemo.capitalizeSet(cities);
system.debug ('caps cities = ' + upperCaseSet);



