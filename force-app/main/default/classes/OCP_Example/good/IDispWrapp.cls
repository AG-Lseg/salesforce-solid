/**
 * @description       : SOLID . Open Close Principle (OPC) example:This example show good implementation.
 * @author            : Cristian Vizzarri
 * @last modified on  : 05-10-2022
 * @last modified by  : Cristian Vizzarri
**/

public interface IDispWrapp
{
	List<SObject> getRecList();
	List<Object> wrRecUIList(List<SObject> sObjectRecords);
}
