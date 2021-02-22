global class QueueableApexClass implements System.Queueable {
    public void execute(System.QueueableContext context) {

        System.debug('Inside the Queueable Apex Class :: ');
        List<Account> acc = new List<Account>([Select Id, Name from Account Limit 50]);
        System.debug('Accounts Query :: ' + acc );

    }
}


// QueueableApexClass queueClass = new QueueableApexClass();
// Id jobId = System.enqueueJob(queueClass);
// System.debug('jobId ' + jobId);
