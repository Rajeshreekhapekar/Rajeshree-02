public class MyControllCLass {
    public id account{get;set;}

    public MyControllCLass(){
        account acct=[select id,name from account];
        account=acct.Name;
    }
}