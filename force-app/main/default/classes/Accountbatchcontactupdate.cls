global class Accountbatchcontactupdate implements database.Batchable<sobject> {
    global database.querylocator start(database.BatchableContext bc)     {
        string query='select id,name,email__c,phone from account';
        		//query=query+'where name=\''+name+'\' AND industry=\''+industry+'\'';
        return database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, list<account> acclist)     {
        list<messaging.SingleEmailMessage> email=new list<messaging.SingleEmailMessage>();
        integer phonecount=0,emailcount=0;
        for(account a:acclist)    {
            if(a.phone=='7702200697')  {
                phonecount+=1;
            }
            if(a.email__c=='malligirihariips@gmail.com') {
                emailcount+=1;
            }
        }
        
        messaging.SingleEmailMessage mail=new messaging.SingleEmailMessage();
        List<string> accemail=new list<string>();
        accemail.add('malligirihariips@gmail.com');
        mail.setToAddresses(accemail);
        mail.setSenderDisplayName('account batch class ');
        mail.setInReplyTo('malligirisfdc505@gmail.com');
        string body='The total number of email:'+emailcount;
        body+='the total number of phone:'+phonecount;
        mail.setHtmlBody(body);
        mail.setSubject('The Account Email and phone count is ');
        email.add(mail);
        messaging.sendEmail(email);
    }
    global void finish (database.BatchableContext bc) {
        system.debug('batch job id is:'+bc.getJobId());
        Asyncapexjob jobdetails=[select id,status,totaljobitems,jobitemsprocessed,numberofErrors,createdby.email from Asyncapexjob where id=:bc.getjobid()];
        // MessagingUtility.SendReminderNotificationToContacts(jobdetails,'count the phone and email');
    }
}