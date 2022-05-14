/**
 * @description       : SOLID . Dependency Inversion Principle (DIP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-13-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class AccountCalculator_DIP {
    
    IAccountCalculator_DIP calculatorService;

	//Constructor Injection
	public AccountCalculator_DIP(IAccountCalculator_DIP accCalTypeService){
		this.calculatorService = accCalTypeService;
	}

	public void calculateAccounts(){
        calculatorService.calculateAccounts();
	}

}
