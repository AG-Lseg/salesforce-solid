Example #1 
ServiceRequestData request=new ServiceRequestData();
request.srType='Case Creation';
request.status='New';
request.description='Case Created';

IServiceRequest srRequest=new ServiceRequestFactory().getServiceRequest(request.srType);
string srNo=srRequest.createServiceRequest(request);    

Example #2 
ServiceRequestData request=new ServiceRequestData();
request.srType='Address Change Request';
request.ShippingStreet='New';
request.ShippingState='NJ';
request.ShippingCity='New Jersy';
request.ShippingCity='Somerset';
request.ShippingPostalCode='33343';

IServiceRequest srRequest=new ServiceRequestFactory().getServiceRequest(request.srType);
string srNo=srRequest.createServiceRequest(request);
