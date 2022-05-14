/**
 * @description       : SOLID .  Interface Segregation Principle(ISO) example:This example show bad implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-11-2022
 * @last modified by  : Cristian Vizzarri
**/

public with sharing class AllMethodsInOneBigClass implements ILibraryTools{
    
    public void calculateA(){
		System.debug('Method A');
	}

	public void calculateB(){
        System.debug('Method B');
	}

	public void calculateC(){
        String users = ProcessUsers.getUsers();
		System.debug('Method C:');
	}
}
