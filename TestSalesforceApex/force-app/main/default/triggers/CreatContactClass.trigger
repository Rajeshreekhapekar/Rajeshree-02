trigger CreatContactClass on Account (after insert) {
    if(Trigger.isInsert)
    {
        CreateContactUtility.CreatContacts(Trigger.New);
    }
}