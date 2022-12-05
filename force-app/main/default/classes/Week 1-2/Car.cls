//created a class
public class Car {
    public string carColor = '';
    private integer maxSpeed = 150;
    public string carName = '';


    //created a method
    public void switchOn(){
        //local variables
        datetime switchOnTime = datetime.now();
        //This is method body.
        system.debug('starting the car');
    }

    public void drive(){
        system.debug('driving ' + carName + ' of color ' + carColor);
    }

    public void driveAtMaxSpeed(){
        string drivingDescription = 'Driving ' + carName + ' at ' +  maxSpeed + ' km/hr';
        system.debug(drivingDescription);
    }
}

//SAVE CLASS
//right click. >sfdx deploy.

//class, we deploy
//anonymous apex, we execute.
