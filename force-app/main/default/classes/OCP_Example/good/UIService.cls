/**
 * @description       : SOLID . Open Close Principle (OPC) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class UIService
{
	private static Map<String, Type> objectClassMap = new Map<String, Type>{
        'AccountMarker' => MapMarkerAccount.class,
		'ContactMarker' => MapMarkerContact.class
		
	};
	public static List<SObject> getRecList(String objectType, String uiType){
		System.debug('UIService->IDispWrapp.getRecList');
		System.debug('UIService-objectType: '+ objectType);
		System.debug('UIService-uiType: '+ uiType);
		IDispWrapp interfaceHandler = (IDispWrapp)objectClassMap.get(objectType+uiType).newInstance();
		return interfaceHandler.getRecList();
	}
	public static List<Object> wrRecUIList(List<SObject> sObjectRecordList, String uiType){
		System.debug('UIService->IDispWrapp.wrRecUIList');
		IDispWrapp interfaceHandler = (IDispWrapp)objectClassMap.get(sObjectRecordList[0].getSObjectType() + '' + uiType).newInstance();
		return interfaceHandler.wrRecUIList(sObjectRecordList);
	}
}