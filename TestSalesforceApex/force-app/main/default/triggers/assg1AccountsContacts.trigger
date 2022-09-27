trigger assg1AccountsContacts on Account (after insert,after update) {
  List<contact> cont=new List<contact>();
   if(trigger.isInsert){
     for(account a:trigger.new){
        if(a.BillingCountry=='INDIA'||a.BillingCountry=='UK') {
          contact c = new contact(MailingCountry=a.BillingCountry,LastName=a.Name,AccountID=a.Id);
           cont.add(c);
        }
           if(a.BillingCountry==null) {
             contact c= new contact(MailingCountry='US',LastName=a.Name,AccountID=a.Id);
             cont.add(c);
           }
     }
         insert cont;
    }
    
    
    if(trigger.isUpdate){
        set<id> updates=new set<id>();
        for(account a:trigger.new){
          updates.add(a.id);
    }
       List<contact> contup=[select id,accountid from contact where accountid in:updates];
        
        for(account a:trigger.new){
            for(contact c1:contup){
                if(a.BillingCountry=='INDIA'||a.BillingCountry=='UK'){
                c1.MailingCountry=a.BillingCountry;
                cont.add(c1);
                }
                if(a.BillingCountry==null){
                c1.MailingCountry='US';
                cont.add(c1);
                }
            }
     }
        update cont;
}
}