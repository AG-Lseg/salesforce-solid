/**
 * @description       : SOLID . Javascript(LWC) Single responsability principle (SRP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-09-2022
 * @last modified by  : Cristian Vizzarri
**/

import {LightningElement} from 'lwc';
import {accountService} from "./accountService";

export default class jsSRPexample extends LightningElement {

    /*
    userType is harcoded for mantain clear the example. I don't want put here other things not related with SRP example.
    */
	userType = 'CFO'; 
	calculateAccounts(){
		const accServiceHandler = new accountService();
		accServiceHandler.calculateAccounts(this.userType);
    }
}