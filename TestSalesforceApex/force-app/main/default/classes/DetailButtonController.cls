public  class DetailButtonController {
    private ApexPages.StandardController stdController1;
    public String greeting{get;set;}
    public DetailButtonController(ApexPages.StandardController standardController)
    {
       stdController1= standardController;
     }
    
    public PageReference doSomethig()
    {
       
        contact record = (contact) stdController1.getRecord();
        greeting='hello'+ ' '+ record.ID;
        return null;
    }
}