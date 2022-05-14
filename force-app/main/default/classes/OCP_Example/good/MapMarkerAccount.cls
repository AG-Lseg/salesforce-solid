/**
 * @description       : SOLID . Open Close Principle (OPC) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class MapMarkerAccount implements IDispWrapp
{
	public List<SObject> getRecList(){
		System.debug('Account-MapMarkerAccount.getRecList');
		List<Account> accountRecordList = [
            SELECT Id, Name, Description, BillingCity, BillingCountry, BillingState, BillingStreet, BillingPostalCode
            FROM Account
            WHERE BillingCity != NULL AND BillingCountry != NULL AND BillingState != NULL AND BillingStreet != NULL AND BillingPostalCode != NULL];
		return accountRecordList;
	}

	public List<Object> wrRecUIList(List<SObject> sObjectRecordList){
		System.debug('Account-MapMarkerAccount.wrRecUIList');
		List<MapMarker> mapMarkers = new List<MapMarker>();
		for(Account account: (List<Account>)sObjectRecordList){
			MapMarker marker = new MapMarker();
			MapLocation mapLocation = new MapLocation();
			mapLocation.Country = account.BillingCountry;
			mapLocation.PostalCode = account.BillingPostalCode;
			mapLocation.Street = account.BillingStreet;
			mapLocation.City = account.BillingCity;
			marker.location = mapLocation;
			marker.title = account.Name;
			marker.description = account.Description;
			mapMarkers.add(marker);
		}
		return mapMarkers;
	}
}
