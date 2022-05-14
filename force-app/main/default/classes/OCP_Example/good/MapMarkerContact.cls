/**
 * @description       : SOLID . Open Close Principle (OPC) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class MapMarkerContact implements IDispWrapp
{
	public List<SObject> getRecList(){
		List<Contact> contactRecordList = [
            SELECT Id, MailingState, MailingPostalCode, MailingCountry, MailingCity, MailingStreet, Name, Description 
            FROM Contact
		    WHERE MailingCity != null AND MailingCountry != null AND MailingPostalCode != null AND MailingState != null AND MailingStreet != null];
		return contactRecordList;
	}

	public List<Object> wrRecUIList(List<SObject> sObjectRecordList){
		List<MapMarker> mapMarkers = new List<MapMarker>();
		for(Contact contact: (List<Contact>)sObjectRecordList){
			MapMarker marker = new MapMarker();
			MapLocation mapLocation = new MapLocation();
			mapLocation.Country = contact.MailingCountry;
			mapLocation.PostalCode = contact.MailingPostalCode;
			mapLocation.Street = contact.MailingStreet;
			mapLocation.City = contact.MailingCity;
			marker.location = mapLocation;
			marker.title = contact.Name;
			marker.description = contact.Description;
			mapMarkers.add(marker);
		}
		return mapMarkers;
	}
}
