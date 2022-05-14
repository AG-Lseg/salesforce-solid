/**
 * @description       : SOLID . Open Close Principle (OPC) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class MapController {
    
    @AuraEnabled
    public static List<Object> getDataUI(String objectApiName, String uiType){
        try {
            System.debug('MapController->UIService');
            System.debug('MapController-objectApiName: ' + objectApiName);
            System.debug('MapController-uiType: '+ uiType);
            List<sObject> objList = UIService.getRecList(objectApiName, uiType);
            return UIService.wrRecUIList(objList, uiType);
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
