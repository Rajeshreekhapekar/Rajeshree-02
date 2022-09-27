public class ControllXtentionClass {
    private final Account acct ;
    public ControllXtentionClass(ApexPages.StandardController stdController )
  {
        acct=(Account)stdController.getRecord() ;
        
  }
    public String getGreeting()
    {
      return 'hello'+ acct.name +'('+ acct.id +')' ;
   }

}