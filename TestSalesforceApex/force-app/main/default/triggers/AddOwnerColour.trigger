trigger AddOwnerColour on Account (before insert,before update) {
    set<ID> owner = new set<ID>();
      for(account a:trigger.new)
        owner.add(a.ownerID);
    Map<ID,User> owd=new Map<ID,User>([select Owner_Favorite_Color__c from user where ID IN:owner]);
      for(account a:trigger.new)
          a.Favorite_Color__c=owd.get(a.ownerID).Owner_Favorite_Color__c;
}