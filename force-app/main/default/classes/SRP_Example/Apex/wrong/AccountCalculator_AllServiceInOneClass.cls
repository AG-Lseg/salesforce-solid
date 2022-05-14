/**
 * @description       : SOLID . Single responsability principle (SRP) example:This example show wrong implementation
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-09-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class AccountCalculator_AllServiceInOneClass
{
	public static void calculateAccounts(String userType){
		if(userType == 'CFO'){
			calculateAccountsCFO();
		}
		else if(userType == 'Sales Agent'){
			calculateAccountsSales();
		}
		else{
			calculateAccountsManager();
		}
	}

	private static void calculateAccountsCFO(){
		System.debug('CFO Accounts');
	}

	private static void calculateAccountsSales(){
		System.debug('Sales Accounts');
	}

	private static void calculateAccountsManager(){
		System.debug('Manager Accounts');
	}
}