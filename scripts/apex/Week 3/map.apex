// map (collection)
   // key datatype
      //value datatype     variable name       new instance of same type of map
Map<string, string>         mapCntCurrency =    new Map<string,string>();    

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Spain', 'Euro');
mapCntCurrency.put('Netherland', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('El Salvador', 'Bitcoin');

system.debug(mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Turkey';
string countryCurreny = mapCntCurrency.get(country);
system.debug('India currency is ' + IndiaCurrency);
system.debug(country + ' currency is ' + countryCurreny);

// get all countries (keys)
Set<String> countrySet = mapCntCurrency.keySet();
system.debug('country set ---> ' + countrySet);

List<String> currencyList = mapCntCurrency.values();
system.debug('currency list ---> ' + currencyList);

Set<String> countries = mapCntCurrency.keySet();
for(string eachCountry: countries){
   system.debug('* each country is ' + eachCountry);
   //can we get currency (or value) from the country
   //How?
   //Fetch currency using .get(key) method
   string eachCurrency = mapCntCurrency.get(eachCountry);
   system.debug('* each currency is ' + eachCurrency);
   system.debug('**** Country is ' + eachCountry + ', its Currency is ' + eachCurrency);

}
