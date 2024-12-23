/*
 * 
 Name: Class_A 
 2023 
 purpose: test for whether salesforce is a tightly coupled language or not
 @authour : malli giri 
 @user story : US12344
 @sprint : Sprint 1
*/
//parser : will parse the language :syntax error , spelling mistakes 
//compiler : duplicate variables , undefineed variables ,

public Virtual  class Class_A  {
    //name should contians capital letter in starting letter..

   
    public static  string studentName;
    //variables should be start with small letter and the secondhalf letter should start with Capital letter...
    //variable : this value may change in run time 
    public static string COUNTRY_NAME='INDIA';
    //constant should have all capital letter separating with _
    
    public   void firstMethod(string name) {
        // method should start with small letter and the second half should start with capital letter 
        studentName=name;
        system.debug('this is the first method');
        classb cb=new classb();
        cb.secondmethod();
        thirdmethod();
    }
    
    public   void thirdMethod() {
        // method should start with small letter and the second half should start with capital letter 
        system.debug('this is the third method');
        System.debug(studentName);
       // classB.secondmethod();
    }
}
// tightly coupled language: if class A can access all the data in the class B , then these two class are tightly coupled ....