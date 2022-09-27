@RestResource (urlMapping='/Contact/*')
global with sharing class WebServiceAssg {
   @HttpGet
      global static contact doGet(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        contact result=[select Id,name from contact];
        return result;
    } 

}