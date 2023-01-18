/******************************************************************************
* Descpription: Implementation class for IServiceRequest to creating Case.
*/

public class CaseServiceRequest implements IServiceRequest{
    //validate information
    private string validateServiceRequest(ServiceRequestData data){
        string errors='';
        if(String.isBlank(data.status))
        {
            errors=(string.isBlank(errors)?'':errors+',')+'status is mandatory';
        }
        
        if(String.isBlank(data.description))
        {
            errors=(string.isBlank(errors)?'':errors+',')+'description is mandatory';
        }
        return errors;
    }
    
    private string createCase(ServiceRequestData request)
    {
        Case serviceRequestCase=new Case();            
        serviceRequestCase.Origin=request.origin;
        serviceRequestCase.Subject=request.subject;
        insert serviceRequestCase;
        return serviceRequestCase.Id;
        //Any other implementation can added here or replaced 
    }
    public string createServiceRequest(ServiceRequestData request)
    {
        string errors=validateServiceRequest(request);
        if(string.isNotBlank(errors))
        {
            throw new BaseException(errors);
        }
        return createCase(request);        
    }
}
