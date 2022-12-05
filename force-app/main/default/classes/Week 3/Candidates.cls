public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates = 0;

    //constructor will be called as soon as we create new instance
    public Candidates(){
        countCandidates++;
    }

    public Candidates(string n, string g){
        this();
        this.name = n;
        this.Gender = g;
    }

    public void printCandidate(){
        system.debug('Name is ' + Name);
        system.debug('Gender is ' + Gender);
        system.debug('Company name is ' + CompanyName);
    }

    public static void printCandidateInfo(){
        //we can access only static members inside static method
        system.debug('company name is ' + CompanyName);
        //we cannot access non-static members inside static method
        //system.debug('name is ' + Name);
    }
}
