trigger AccountTrigger on Account (before insert, before update, after update, after insert) 
{
    Account.TriggerHandler handler = new AccountTriggerHandler(Trigger.isExecuting, Trigger.size);
    
     if( Trigger.isInsert){
         
         if(Trigger.isBefore) {
          handler.onBeforeInsert(trigger.New);
        System.debug('handler.onBeforeInsert ::: ');

         }
         else {
             
        handler.OnAfterInsert(trigger.New);
         }
         
    }
    
    else if(Trigger.isUpdate ){
        
        if(Trigger.isBefore){
                    handler.OnBeforeUpdate(trigger.New, trigger.Old, Trigger.NewMap, Trigger.OldMap);

        }
         else {
        handler.OnAfterUpdate(trigger.New, trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
        
    }
   
  
    
}