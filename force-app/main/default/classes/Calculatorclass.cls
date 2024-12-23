public class Calculatorclass {
    
    // class level declaring variables 
    public integer firstNumber,secondNumber;
    public Decimal results;
    //creating the constructor for initiating the values for the variables whole class
    
    public Calculatorclass(integer firstnumber, integer secondnumber) {
        //this key word is used for values assginment for the class level variables 
       this.firstNumber=firstnumber;
       this.secondNumber=secondnumber;
        addition();
        substraction();
        multiplication();
        divison();
         
        
    }
    //if we pass the parameters using the constructor the whole class and its methods can access these values.
    //whereas if we pass the parameters into a single method it won't allows those values to another method ...
    public void addition() {
        //addtion of two numbers 
        results=firstnumber+secondNumber;
        system.debug('the Addtion results'+results);
    }
    
    public void Substraction() {
        //substraction of two numbers
        results=firstnumber-secondNumber;
        system.debug('the Substraction results'+results);
    }
    public void multiplication() {
        //method level variables 
        integer num1=5;
        //multiplication of two numbers 
        results=firstnumber*secondNumber;
        system.debug('the multiplication results'+results); 
    }
    public void divison() {
        //division of two numbers
        results=firstnumber/secondNumber;
        system.debug('the divison results'+results);
    }
    
}