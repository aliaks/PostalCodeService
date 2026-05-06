public class PostalCodeServeiceIPG extends PostalCodeServiceAbstract 
{

    public PostalCodeServeiceIPG(Account account, Postal_Code__c postalCode) 
    {
        super(account, postalCode);
    }

    public PostalCodeServeiceIPG(Opportunity opportunity, Postal_Code__c postalCode ) 
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
