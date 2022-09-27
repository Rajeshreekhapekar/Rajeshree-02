trigger ondelete on Account (before delete) {
    for(Account a:[select ID from account where ID IN (select accountID from contact) AND ID IN : trigger.old])
    {
        trigger.oldMap.get(a.Id).addError('cannot delete account with related contacts.');
    }

}