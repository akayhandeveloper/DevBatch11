List<Integer> listInteger = new List<Integer>();
listInteger.add(10); //index = 0 (index=order)
listInteger.add(15); //index = 1 
listInteger.add(21); //index = 2 
listInteger.add(12); //index = 3 
listInteger.add(18); //index = 4 
listInteger.add(15); //index = 5

integer sum = Calculator3.add(listInteger);
system.debug('sum => ' + sum);