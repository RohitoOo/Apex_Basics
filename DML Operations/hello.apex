// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

// string tempvar = 'RohitoOo';
// System.debug('Hello World!');
// System.debug('My name is ' + tempvar);



//  // Add a contact to this account. 1
//     Contact conOne = new Contact(
//         FirstName='Joe4',
//         LastName='Smith4',
//         Phone='415.555.1212');
     
  

//     // Add a contact to this account. 2
//     Contact conTwo = new Contact(
//         FirstName='Joe5',
//         // LastName='Smith5',
//         Phone='415.555.1212');
     
//     List<Contact> contactList = new List<Contact> {conOne , conTwo};

// // All or Nothing 
// // insert contactList;

// // Continue to Save Other Records if One Fails
// // Database.insert (contactList, false) ;


// // Show Results of failed Records 
// Database.SaveResult[] sr = Database.insert(contactList, false);

// for (Database.SaveResult var : sr) {
//     System.debug(' Errors : ' + var.isSuccess());
// }




try{
Account acc = new Account(
    Name = 'Joe Fresh 1'
);

Contact cc = new Contact(
    Lastname = 'Joe Fresh 1'
);



insert acc , cc;

    System.debug('Account/Contact Inserted Successfully  :: ' );

// insert cc; 

//     System.debug('Contact Inserted Successfully  :: ' );

}catch(Exception ex){

    System.debug('Exception :: ' + ex );


}
// Account acc = new Account(
//     Name = 'Joe Fresh 1'
// );

// insert acc; 

// Account accQuery  = [Select Id from Account WHERE Name = 'Joe Fresh 1'];

// System.Savepoint spt = Database.setSavepoint();




// SAVE POINT 

Account acc = new Account(
    Website = 'Joe Fresh 00'
);

System.Savepoint spt = Database.setSavepoint();

insert acc; 

    System.debug('Account Inserted Successfully  :: ' );

try{
    Contact cc = new Contact(
        Department = 'Joe Fresh 00'
    );
    
    insert cc; 

    System.debug('Contact Inserted Successfully  :: ' );

}catch(Exception ex){

    System.debug('Exception :: ' + ex );

    Database.rollback(spt);

}