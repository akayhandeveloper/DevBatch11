//listMethods;
List<String> listMethods = new List<String> {'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'};

system.debug('Week days ==> ' + listMethods);

listMethods.add('Sunday');
system.debug(listMethods);

system.debug(listMethods.contains('thursday'));

integer sizeOfWeekdays = listMethods.size();
system.debug(sizeOfWeekdays);

string lastDay = listMethods.get(sizeOfWeekdays-1);
system.debug(lastDay.toUpperCase());

string fourthDay = listMethods.get(3);
system.debug(fourthDay.toLowerCase());


List<string> weekendDays = new List<String>{'Sunday', 'Saturday'};
Boolean isEqual = weekendDays.equals(listMethods);
system.debug(isEqual);

list<String> wholeWeek = new List<String>();
wholeWeek.addAll(listMethods);
wholeWeek.addAll(weekendDays);
system.debug(wholeWeek);


//setMethods;
Set<String> setMethods = new Set<String>{'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'};

setMethods.add('Sunday');
system.debug(setMethods);

system.debug(setMethods.contains('thursday'));

integer sizeOfWeek = setMethods.size();
system.debug(sizeOfWeek);

set<string> weekendDays1 = new set<String>{'Sunday', 'Saturday'};
Boolean isEqual1 = weekendDays1.equals(setMethods);
system.debug(isEqual1);

set<String> wholeWeek1 = new set<String>();
wholeWeek1.addAll(setMethods);
wholeWeek1.addAll(weekendDays1);
system.debug(wholeWeek1);