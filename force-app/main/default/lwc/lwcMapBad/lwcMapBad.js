/**
 * @description       : SOLID . JavaScript (LWC) Open Close Principle (OPC) example:This example show wrong implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

import {LightningElement, api} from 'lwc';
import getMapMarkersController from '@salesforce/apex/OCP_awful_example.getContactsForMap';

export default class LwcMap extends LightningElement {
	mapMarkers;

	connectedCallback() {
		this.getMapMarkers();
	}

	getMapMarkers(){
		getMapMarkersController().then(markers =>{
            this.mapMarkers = markers;
        });
	}
}