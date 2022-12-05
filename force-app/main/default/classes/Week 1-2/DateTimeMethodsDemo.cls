public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        //1. Today's date
        date dttoday = date.today();

        //2. My birthdate
        date myBdate = date.newInstance(1985, 02, 18);

        //calculate month difference in between two dates
        integer ageInMonths = myBdate.monthsBetween(dttoday);
        system.debug('My age in months is ' + ageInMonths);
    }
        public void calculateAgeInDays() {
        //1. Today's date
        date dttoday = date.today();

        //2. My birthdate
        date myBdate = date.newInstance(1985, 02, 18);

        //age in days
        integer ageInDays = myBdate.daysBetween(dttoday);
        system.debug('My age in days is ' + ageInDays);
}

    public void publicSubscriptionEndDate(){
        date publicSubscriptionStartDate = date.today();

        date publicSubscriptionEndDate = publicSubscriptionStartDate.addDays(1000);
        system.debug('subscription end date = ' + publicSubscriptionEndDate);

        integer endDateYear = publicSubscriptionEndDate.year();
        system.debug('subscription end date YEAR is ' + endDateYear);

        integer endDateMonth = publicSubscriptionEndDate.month();
        system.debug('subscription end date MONTH is ' + endDateMonth);

    }

    public void printOfferEndDate(){
        Datetime dtNow = datetime.now();

        Datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer end date & time is ' + dtOfferEnd);

        Datetime dateOfferEnd = dtOfferEnd.date();
        system.debug('date of offer end ' + dtOfferEnd);

    }

    public void birthDateToMilliSeconds(){
        datetime birthdate = datetime.newInstance(1985, 02, 18, 2, 30, 5);
        long longBirthDate = birthDate.getTime();
        system.debug('long birth date => ' + longBirthDate);
    }
}
