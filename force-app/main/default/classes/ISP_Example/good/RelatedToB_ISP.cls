public with sharing class RelatedToB_ISP {
    
    public void proccessWithMethodB(){
        BService bigClass = new BService();
        bigClass.calculateB();
    }
}
