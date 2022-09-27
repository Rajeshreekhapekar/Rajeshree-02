public class practicePagination {
    private integer totalRace=0;
    private integer offsetsize=0;
    private integer limitsize=5;
    public boolean aaa;
    public boolean previous;

    public practicePagination()
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
    public boolean gethasNext()
    {
       aaa = offsetsize > totalRace;
        return aaa;
     }
    public boolean gethasPrevious()
    {
       previous = offsetsize ==0;
        return previous;
     }

}