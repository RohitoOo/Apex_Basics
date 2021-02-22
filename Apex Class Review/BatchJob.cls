global class BatchJob implements Database.Batchable<Sobject> {

    // Start 
    global Database.QueryLocator   start(Database.BatchableContext bc){
        // global.Database.QueryLocator | Iterable<sobject>     start(Database.BatchableContext bc){
            return Database.getQueryLocator('Select Id, Name from Account');

    }

    // Execute 

    global void  execute(Database.BatchableContext bc, List<Lead> scope){
        
    }

    // Finish 

    global void  finish(Database.BatchableContext bc){
        
    }


    
}
