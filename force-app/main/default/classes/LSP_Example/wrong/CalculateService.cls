public with sharing class CalculateService {
    
    private static Map<String, Type> objectToClassMap = new Map<String, Type>{
        'Product' => ProductCalculateService.class,
        'Order' => OrderCalculateService.class
    };

    public static void calculateTotals(String obj){
        ITotalRelatedCalculator totalCaculator = (ITotalRelatedCalculator)objectToClassMap.get(obj).newInstance();
        if(obj == 'Product'){
            totalCaculator.calculateTotalRealtedProducts(null, null); // null it is only for example purposes
        } else {
            totalCaculator.calculateTotalRelatedOrders(null, null);
        }
    }

    /*
    public static void calculateTotals(String obj){
        ITotalRelatedCalculator totalCaculator = (ITotalRelatedCalculator)objectToClassMap.get(obj).newInstance();
            totalCaculator.calculateTotalRealtedProducts(null, null); // null it is only for example purposes
            totalCaculator.calculateTotalRelatedOrders(null, null);
        }
    }
    */
}