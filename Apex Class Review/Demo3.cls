public class Demo3 {

    public void mainValueMethod (){
        String websiteUrl = 'www.rohito.com';

        System.debug('Before value call ' + websiteUrl); 
        passByValueCall(websiteUrl);
        System.debug('After value call ' + websiteUrl); 
    }

    private void passByValueCall(String websiteUrlValue) {  // Pass by Value Call
        websiteUrlValue = 'www.salesforce.com';
    }

    public void mainReferenceMethod(){

        // NON PRIMITIVE TYPE / COMPLEX TYPE 
        Account a = new Account(); 
        a.Name = ' Test Account';
        a.Website = 'www.rohito.com';

        System.debug('Before reference call ' + a ); 
        passByRefCall(a); 
        System.debug(' After reference call ' + a ); 
    }
    public void passByRefCall(Account a ) { // PASS BY REFERENCE CALL 

        a.Website = 'www.salesforce.com';
        // Comments

    }
}
