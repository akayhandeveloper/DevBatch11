public class Collections1 {
    public static string listaAssignment(integer x) {
        List<String> LstMonth = new list<string>{'January', 'February', 'March', 'April', 'May', 'June', 'July','August', 'September', 'October', 'November', 'December'};
        string output_month = '';
        integer sizeOfMonth = LstMonth.size();
        if (x<sizeOfMonth && x>=0) {
            output_month = LstMonth[x-1];
        }else{
            output_month = 'Not a valid month';
        }
        return output_month;
    }
        public void Gezegen(){
        List<String> Gezegenler = new list<string>{'Dunya', 'Venus', 'Mars', 'Merkur', 'Saturn', 'Jupiter'};
        Boolean empty = Gezegenler.isempty();
        system.debug(Gezegenler);
        system.debug(empty);
        }
}
