public with sharing class CService implements ICalculateC{
    
    public void calculateC(){

        String users = ProcessUsers.getUsers();
		System.debug('Method C:');
    }
}
