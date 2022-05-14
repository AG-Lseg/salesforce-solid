/**
 * @description       : SOLID . Javascript(LWC) Single responsability principle (SRP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-09-2022
 * @last modified by  : Cristian Vizzarri
**/

export class accountServiceFactory {
	classType;
	constructor(classType) {
		this.classType = classType
	}
	calculateAccounts(){
		this.classType.calculateAccounts();
	}
}