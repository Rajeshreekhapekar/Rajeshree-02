public class ControllerPassPAramNew{
    public Account account{get;set;}
    public ControllerPassPAramNew()
    {
        if(account==null)
        {
        account=[select name from Account where id ='0015i000009PQUKAA4'];
        }
        }
    public PageReference save(){
        update account;
        PageReference pageref = page.MySecondpage;
         pageref.setRedirect(true);
         pageref.getparameters().put('id',account.id);
        return pageref;
    }
    public PageReference GoToNewPage(){
        PageReference pageref = page.MySecondpage;
        pageref.setRedirect(true);
         pageref.getparameters().put('id',account.id);
        return pageref; 
    }
 }