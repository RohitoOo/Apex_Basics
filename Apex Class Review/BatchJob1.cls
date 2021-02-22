global class BatchJob1 implements Database.Batchable<Sobject>{
    private Integer magicNum = 0;
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select Id, Name from Account');
    }
    
    global void execute(Database.BatchableContext bc, List<Account> scope){
        System.debug('Im the execute Method');
        for(Integer i = 0 ; i < 5 ; i++){
            magicNum = i ;
        }

    }

    global void finish(Database.BatchableContext bc){
        System.debug('Im the finish method');
        System.debug('MAGIC NUM ::' + magicNum);

     
    }

   
}