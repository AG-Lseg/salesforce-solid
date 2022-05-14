/**
 * @description       : SOLID .  Liskov Substitution principle(LSP) example:This example show wrong implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class ProductCalculateService implements ITotalRelatedCalculator{
    
    public void calculateTotalRealtedProducts(Id realtedCompanyId, Product2 acc){
        System.debug('Total of product was calculated');
    }
    public void calculateTotalRelatedOrders(Id realtedCompanyId, Order order){
        throw new  MyException('Error when calculate total of orders - ProductCalculateService');
    }
}
