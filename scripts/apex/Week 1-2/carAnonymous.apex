// create object of car class.
//we also call it INSTANCE of class.

//ClassName
car tesla = new car(); 
tesla.carName = 'model s';
tesla.carColor = 'Black';
//local variables
datetime s = tesla.switchOn();
// new instance created, and stored in a variable named 'tesla'
tesla.switchOn();
system.debug('tesla car color -> ' + tesla.carColor);
system.debug('tesla -> ' + tesla);
tesla.drive();
tesla.driveAtMaxSpeed();
system.debug('tesla done');

car    bmw =     new car();
bmw.carName =  'xyz';
bmw.carColor = 'white';
bmw.switchOn();
system.debug('bmw car color -> ' + bmw.carColor);
system.debug('bmw -> ' + bmw);
bmw.drive();
bmw.driveAtMaxSpeed();
system.debug('bmw done');

car toyota = new car();
toyota.switchOn();
toyota.drive();