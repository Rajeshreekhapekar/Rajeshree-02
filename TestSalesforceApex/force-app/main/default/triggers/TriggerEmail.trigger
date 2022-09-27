trigger TriggerEmail on Contact (before insert) {
    for(contact c: trigger.new)
    {
      if(c.department == Null) 
      {
          Trigger.newMap.get(c.AccountId).addError('Could not update Last Survey');
      }
    }
}