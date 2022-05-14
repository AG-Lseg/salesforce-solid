/**
 * @description       : SOLID .  Liskov Substitution principle(LSP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-11-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class ProductCalculateServiceGood implements ITotalRelatedCalculatorGood{
    
    public void calculateTotalRealted(sObject record){
        System.debug('Product calculate');
    }
}
