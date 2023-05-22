@isTest
public class  TestRestrictContactByName {
    
    @isTest
    public static void testInvalidLastName() {
        Contact invalidContact = new Contact();
        invalidContact.LastName = 'INVALIDNAME';
        
        Test.startTest();
        try {
            insert invalidContact;
            // The contact should not be inserted due to the invalid last name
            System.assert(false, 'Contact with invalid last name was inserted successfully.');
        } catch (DmlException e) {
            // Verify that the expected error message is thrown
            System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', e.getDmlMessage(0));
        }
        Test.stopTest();
    }
    
    @isTest
    public static void testValidLastName() {
        Contact validContact = new Contact();
        validContact.LastName = 'Smith'; // A valid last name
        
        Test.startTest();
        try {
            insert validContact;
            // The contact should be inserted successfully as the last name is valid
            System.assert(true);
        } catch (DmlException e) {
            // Unexpected exception occurred
            System.assert(false, 'Exception occurred: ' + e.getMessage());
        }
        Test.stopTest();
    }
    
}
