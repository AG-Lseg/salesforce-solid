/**
 * @description       : SOLID . Javascript(LWC) Single responsability principle (SRP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-09-2022
 * @last modified by  : Cristian Vizzarri
**/

import {accountServiceCalculatorCFO} from "./accountServiceCalculatorCFO";
import {accountCalculatorServiceSales} from "./accountServiceCalculatorSales";
import {accountServiceFactory} from "./accountServiceFactory";

export class accountService{
    calculateAccounts(userType){
        let classType;
        if(userType === 'CFO'){
            classType = new accountServiceCalculatorCFO();
        }
        else if(userType === 'Sales'){
            classType = new accountCalculatorServiceSales();
        }
        const accServiceFactoryHandler = new accountServiceFactory(classType);
        accServiceFactoryHandler.calculateAccounts();
    }
}