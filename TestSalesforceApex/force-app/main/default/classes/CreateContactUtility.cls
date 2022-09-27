public with sharing class CreateContactUtility {
    public static void CreatContacts(List<Account> lstAccounts)
    {
      system.debug('Account :'+ lstAccounts); 
        List<Contact> lstContacts=new List<Contact>();
        if(lstAccounts.size()>0)
        {
            for(Account acc:lstAccounts)
            {
                Contact cont = new Contact(LastName=acc.Name,AccountID=acc.Id);
                lstContacts.add(cont);
            }
            insert lstContacts;
        }
    }
 }