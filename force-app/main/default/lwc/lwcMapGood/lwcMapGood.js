/**
 * @description       : SOLID . JavaScript (LWC) Open Close Principle (OPC) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

import {LightningElement, api} from 'lwc';
import getDataController from '@salesforce/apex/MapController.getDataUI';

export default class LwcMap extends LightningElement {
	@api objectApiName
	mapMarkers;

	connectedCallback() {
		this.getMapMarkers();
	}

	getMapMarkers(){
		getDataController({"objectApiName":this.objectApiName, "uiType":"Marker"}).then(markers =>{
			this.mapMarkers = markers;
		});
	}
}