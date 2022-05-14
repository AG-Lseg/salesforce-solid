/**
 * @description       : SOLID .  Liskov Substitution principle(LSP) example:This example show wrong implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public interface ITotalRelatedCalculator {
    
    void calculateTotalRealtedProducts(Id realtedId, Product2 acc);
    void calculateTotalRelatedOrders(Id relatedId, Order order);
}
