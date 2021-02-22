// Apex Interface - Stateful 

// Maintain State of Variable Across Batches 

global class BatchJobStateful implements Database.Batchable<Sobject>, Database.Stateful{
    private Integer magicNum = 0;
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select Id, Name from Account');
    }
    
    global void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('Im the execute Method :: ' + magicNum );
        for(Integer i = 1 ; i <= 5 ; i++){
            magicNum++ ;
        }

    }

    global void finish(Database.BatchableContext bc){
        System.debug('Im the finish method');
        System.debug('MAGIC NUM ::' + magicNum);

     
    }

   
}