public with sharing class SOSLcontroller{
    public List<Opportunity> optyList{get;set;}
    public List<Contact> conList{get;set;}
    public List<Account> accList{get;set;}
    
    public String searchStr{get;set;}
     public SOSLcontroller(){
     }
    public void soslDemo_method(){
    optyList=new List<Opportunity>();
    conList=new List<Contact>();
    accList= new List<Account>();
        if(searchStr.length()>1){
            String searchStr1='*'+ searchStr +'*';
            String searchQuery='find \''+ searchStr1 +'\'IN ALL FIELDS RETURNING ACCOUNT (Id,Name,type),Contact(name,email),Opportunity(name,stageName)';
            List<List<sObject>> searchList=search.query(searchQuery);
            accList=((List<Account>)searchList[0]);
            conList=((List<contact>)searchList[1]);
            optyList=((List<Opportunity>)searchList[2]);
               if(accList.size()==0 && conList.size()==0 && optyList.size()==0)
               {
                   apexPages.addMessage(new ApexPages.message(apexPages.Severity.ERROR,'sorry,No result returned with matching string..'));
                   return;
               }
        }
        else
        {
            apexPages.addMessage(new ApexPages.message(apexPages.Severity.ERROR,'Please enter at least two charector..'));
            return;
        }
    }
}