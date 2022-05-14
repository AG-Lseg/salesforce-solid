/**
 * @description       : SOLID .  Liskov Substitution principle(LSP) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-11-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class CalculateServiceGood {
    
    private static Map<String, Type> objectToClassMap = new Map<String, Type>{
        'Product' => ProductCalculateServiceGood.class,
        'Order' => OrderCalculateServiceGood.class
    };

    public static void calculateTotals(String obj){
        ITotalRelatedCalculatorGood totalCaculator = (ITotalRelatedCalculatorGood)objectToClassMap.get(obj).newInstance();
        totalCaculator.calculateTotalRealted(null); // null for example purposes, in real world should be send object here.
    }
}