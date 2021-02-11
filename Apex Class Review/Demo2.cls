public class Demo2 {

    // INSTANCE Member VARIALBE 
    public String helloWorldString;

    // STATIC Member VARIABLE 
    private static final String DEFAULT_STRING; 

    // Static Initializer Code 
    static{
        DEFAULT_STRING = 'Hello World';
    }

    // Constructor 
    public Demo2() {
        this(DEFAULT_STRING);
    }

    // Overloaded Contructor 
    public Demo2(String stringToDisplay)
    {
        this.helloWorldString = stringToDisplay;
    }

    // Method 

    public  void printOutput(){
        System.debug(' Display Text : ' + helloWorldString);
    }

    // Static Method 

    public  static void printOutput1(){
        System.debug(' Display Text from Static Method');
    }


} 
