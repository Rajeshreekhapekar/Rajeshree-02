public class Paginition1 {
    private integer totalRace=0;
    private integer offsetsize=0;
    private integer limitsize=5;
    
    public Paginition1()
    {
        totalRace=[select count() from account];
     }
    public List<account> getacclist()
    {
        List<account> acc=Database.Query('SELECT Name,Website,AnnualRevenue,Description,Type FROM account LIMIT '+limitsize+' OFFSET '+offsetsize+' ');
     return acc;
    }
    public void previous()
        {
            offsetsize = offsetsize-limitsize;
        }
    public void next()
        {
             offsetsize = offsetsize+limitsize;
        }

     public boolean gethasPrevious(){
    if(offsetsize==0)
   {
       return false;
    }
    else
    {
        return true;
    }
          
}
    public boolean gethasNext(){
    if((offsetsize+limitsize) > totalRace)
    {
       return false;
    }
    else
    {
        return true;
    }
}
}