@RestResource (urlMapping='/Account/*')
global with sharing class RestWebservice {
    @HttpPost
    global static String doPost(String name,String phone,String website){
      Account account =new Account();
        account.Name=name;
        account.Phone=phone;
        account.Website=website;
        insert account;
        return account.id;
    }
    
    
     @HttpGet
      global static Account doGet(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
         Account result=[select Id,name,phone,website from Account Where Id= :accountID];
        return result;
    }
    
    @HttpPut
    global Static String doPut(String name,String phone,String website){
       RestRequest req=RestContext.request;
       String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
       Account account=new account(Id=accountId);
        account.Name=name;
        account.Phone=phone;
        account.Website=website;
        update account;
        return account.Id;
    }
    
    @HttpDelete
    global static void doDelete(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account=[select Id from account where Id=:accountId];
        delete account;
    }
    
 }