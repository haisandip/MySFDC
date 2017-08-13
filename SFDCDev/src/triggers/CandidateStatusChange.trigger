trigger CandidateStatusChange on Candidate__c (before insert) {

    system.debug('count' + getCount());
    
    public integer getCount ()
    {
        return 0;
    }
    
}