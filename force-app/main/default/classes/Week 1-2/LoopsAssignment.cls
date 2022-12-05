public class LoopsAssignment {
    public void print_na_numbers(integer n) {
            for (Integer i = 0; i < n; i++) {
                system.debug(i);
            }
        }
        public void print_N_even_numbers(integer a, integer b){
            for (Integer i = 1; i <= 100; i++) {
                integer remainder = math.mod(i, 2); 
                if (remainder ==0){
                    system.debug(i);
                } 
            }        
        }
}
// another way for even numbers between 1-100
/*
public void printEven(){
    for(Integer i=0; i<100; i++){
        if (Math.mod(i,2) == 0){
            system.debug(i);
        }
    }
}
*/