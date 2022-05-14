/**
 * @description       : SOLID . Open Close Principle (OPC) example:This example show wrong implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class OCP_awful_example
{
	@AuraEnabled
	public static List<MapMarker> getContactsForMap(String objectName){
			List<Contact> ContactsInSystem = [
                SELECT Id, Name,  FirstName,	MailingCity, MailingCountry, MailingState, MailingStreet, MailingPostalCode
                FROM Contact
                WHERE MailingCity != NULL AND MailingCountry != NULL AND MailingState != NULL AND MailingStreet != NULL AND MailingPostalCode != NULL
			];
			List<MapMarker> mapMarkers = new List<MapMarker>();
			for(Contact contact : ContactsInSystem)
			{
				MapMarker marker = new MapMarker();
				MapLocation location = new MapLocation();
				location.Country = contact.MailingCountry;
				location.City = contact.MailingCity;
				location.PostalCode = contact.MailingPostalCode;
				location.Street = contact.MailingStreet;
				marker.location = location;
				marker.description = 'Hi';
				marker.title = contact.FirstName;
				mapMarkers.add(marker);
			}
			System.debug('mapMarkers');
			System.debug(mapMarkers);
			return mapMarkers;

	}
}