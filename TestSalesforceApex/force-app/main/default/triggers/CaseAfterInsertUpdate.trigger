trigger CaseAfterInsertUpdate on Case (before insert) {
   List<account> updateacclist=new List<account>();
    List<ID> accID =new List<ID>();
    for(case c:trigger.new){
        accID.add(c.accountID);
    }
    Map<ID,account> accUpdateMap=new Map<ID,account>();
    for(account acc:[select id,account_last_survey__c from account where ID IN:accID])
    {
        accUpdateMap.put(acc.ID, acc);
    }
    for(case c:trigger.new)
    {
        account updateacc=accUpdateMap.get(c.accountID);
        updateacc.account_last_survey__c=c.last_survey__c;
        updateacclist.add(updateacc);
    }

try{
    update updateacclist;
    }
catch(exception ex){
    system.debug('could not update last survey'+ex.getcause());
  }
}