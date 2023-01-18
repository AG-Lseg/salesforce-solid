/******************************************************************************
* Descpription: Implementation class for IServiceRequest to change account's address.
*/

public class AddressChangeServiceRequest implements IServiceRequest{
    //validate information
    private string validateServiceRequest(ServiceRequestData data){
        string errors='';
        if(String.isBlank(data.addressLine1))
        {
            errors=(string.isBlank(errors)?'':errors+',')+'addressLine1 is mandatory';
        }
        
        if(String.isBlank(data.state))
        {
            errors=(string.isBlank(errors)?'':errors+',')+'state is mandatory';
        }
        return errors;
    }
    
    private string updateAddress(ServiceRequestData request)
    {
        List<Account> accounts=[Select Id,ShippingStreet,ShippingCity,ShippingState,ShippingPostalCode from Account where Id=:request.accountId];
        if(accounts!=null && accounts.size()>0)
        {
            Account account=accounts[0];
            account.ShippingStreet=request.addressLine1;
            account.ShippingCity=request.city;
            account.ShippingState=request.state;
            account.ShippingPostalCode=request.zip;
            update account;
            return account.Id;
        }
        //Any other implementation can added here or replaced 
        return '';
    }
    public string createServiceRequest(ServiceRequestData request)
    {
        string errors=validateServiceRequest(request);
        if(string.isNotBlank(errors))
        {
            throw new BaseException(errors);
        }
        return updateAddress(request);        
    }
}
