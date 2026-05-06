public with sharing class PostalCodeService 
{   
    public static void setPostalCodes(Map<String, List<SObject>> postalCodeMap)
    {   
        for(Postal_Code__c p : [select Id, Name from Postal_Code__c where Name IN :postalCodeMap.keySet()])
        {
            List<SObject> records = postalCodeMap.get(p.Name);

            for(SObject record : records)
            {   if(record instanceof Opportunity)
                {   Opportunity opp = (Opportunity)record;
                    PostalCodeServiceAbstract service;

                    if(opp.Business_Unit_Name__c == 'OMG'){ service = new PostalCodeServeiceAMAT(opp, p);}
                    else if(opp.Business_Unit_Name__c == 'Precast'){ service = new PostalCodeServeiceIPG(opp, p);}
                    else if(opp.Business_Unit_Name__c == 'APG'){ service = new PostalCodeServeiceAPG(opp, p);}
                    else{}

                    service.setOpportunityPostalCode();
                }         
                else if(record instanceof Account)
                {   Account acc = (Account)record;
                    if(acc.Business_Unit_Name__c == 'OMG'){ service = new PostalCodeServeiceAMAT(acc, p);}
                    else if(acc.Business_Unit_Name__c == 'Precast'){ service = new PostalCodeServeiceIPG(acc, p);}
                    else if(acc.Business_Unit_Name__c == 'APG'){ service = new PostalCodeServeiceAPG(acc, p);}
                    else{}

                    service.setAccountPostalCode();
                }
            }
        }
    }

}
