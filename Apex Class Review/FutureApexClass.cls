global class FutureApexClass {
    public void FutureApexClass() {

        // String primitiveValue = ' Input to Future Method';
        // List<String> listofPrimitiveValue = new List<String>{primitiveValue};

        // Account accountRec = [Select Id, Name from Account Limit 1][0]; 
        // System.debug(' accountList : ' + accountRec )

        // Future Methods does not support Non-Primitive Values AS the state may change over time 

        futureMethod1();

        futureMethod2();

        // futureMethod3();

    }

    @future
    public static void futureMethod1(){
        System.debug('Inside futureMethod1 :: ');
    }

    @future
    public static void futureMethod2(){
        System.debug('Inside futureMethod2 :: ');
    }

    @future
    public static void futureMethod3(){
        System.debug('Inside futureMethod3 :: ');
    }
}
