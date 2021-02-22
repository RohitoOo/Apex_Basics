global class BatchJobScheduled implements Schedulable {

    global void execute (SchedulableContext sc) {
        // Code to Execute at a specific Time Period 

        System.debug('In the execute method of Scheduled Job');
    }
}


// Evoke a schedule job 

// String cronExp = '20 30 8 10 2 ?'; 
// String jobId = System.schedule('Batch Job Name :: ', cronExp, new BatchJobScheduled() );

// Evoke Batch Job from a Schedule Job 


// BatchJobScheduled batchSchedule = new BatchJobScheduled();

// Cron Job Run Schedule February 22nd 9:23AM 2021 

// String sch = '21 23 9 22 2 ?'; 

// String jobID = System.schedule('Batch Schedule Job' , sch , batchSchedule);