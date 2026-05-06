public class PostalCodeServeiceAPG extends PostalCodeServiceAbstract 
{

    public PostalCodeServeiceAPG(Account account, Postal_Code__c postalCode) 
    {
        super(account, postalCode);
    }

    public PostalCodeServeiceAPG(Opportunity opportunity, Postal_Code__c postalCode ) 
    {
        super(opportunity, postalCode);
    }

    public override void setAccountPostalCode() 
    {      
    }

    public override void setOpportunityPostalCode() 
    {   this.opp.Postal_Code__c = this.pc.Id;
    }

}
