public abstract class PostalCodeServiceAbstract 
{
    Account acc;
    Opportunity opp;
    Postal_Code__c pc;

    public PostalCodeServiceAbstract(Account account, Postal_Code__c postalCode) 
    {
        this.acc = account;
        this.pc = postalCode;
    }

    public PostalCodeServiceAbstract(Opportunity opportunity, Postal_Code__c postalCode) 
    {
        this.opp = opportunity;
        this.pc = postalCode;
    }

    public abstract void setAccountPostalCode();
    public abstract void setOpportunityPostalCode();

}
