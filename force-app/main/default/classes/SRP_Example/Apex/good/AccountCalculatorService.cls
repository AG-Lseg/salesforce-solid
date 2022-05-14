/**
 * @description       : SOLID . Single responsability principle (SRP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-09-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class AccountCalculatorService {
    
    private static Map<String, Type> typeOfUserToCalculate = new Map<String, Type>{
		'CFO' => AccountCalculartoService_CFO.class,
		'Sales' => AccountCalculartoService_Sales.class
	};

	public static void calculateAccounts(String userType){
        //assign type of class dinamically
		IAccountCalculator accCalculator = (IAccountCalculator)typeOfUserToCalculate.get(userType).newInstance();
		accCalculator.calculateAccounts();
	}

}
