/**
 * @description       : SOLID .  Liskov Substitution principle(LSP) example:This example show wrong implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class OrderCalculateService implements ITotalRelatedCalculator{
    
    public void calculateTotalRealtedProducts(Id realtedId, Product2 acc){
        throw new  MyException('Error when calculate total of products - OrderCalculateService');
    }
    public void calculateTotalRelatedOrders(Id relatedId, Order order){
        System.debug('Total of orders was calculated');
        
    }
}
