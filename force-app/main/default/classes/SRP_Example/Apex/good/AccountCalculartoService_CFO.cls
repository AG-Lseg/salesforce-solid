/**
 * @description       : SOLID . Single responsability principle (SRP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-09-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class AccountCalculartoService_CFO implements IAccountCalculator{

    public void calculateAccounts(){
        System.debug('CFO Accounts');
    }
}
