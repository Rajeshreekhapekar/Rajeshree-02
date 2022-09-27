public with sharing class VIewStateController{
    public integer a{get;set;}
     private integer b{get;set;}
     transient integer c{get;set;}
    private integer d{get;set;}
     public opportunity oop{get;set;}
    
 public VIewStateController()
 {
     a=20;
     b=30;
     c=40;
     oop=new opportunity(name='test',StageName='test');
 }
       public void changeData()
    {
     if(a==20)
     {
         a=2;
     }
     if(b==30)
     {
         b=3;
     }
     if(c==40)
     {
         d=4;
     }
   
    else
    {
        d=40;
    }
}
}