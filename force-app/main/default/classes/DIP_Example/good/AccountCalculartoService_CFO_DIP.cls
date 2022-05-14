/**
 * @description       : SOLID . Dependency Inversion Principle (DIP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-13-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class AccountCalculartoService_CFO_DIP implements IAccountCalculator_DIP{

    public void calculateAccounts(){
        System.debug('CFO Accounts');
    }
}
