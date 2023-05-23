public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numContacts, String ContactLastName){
        List <Contact> cont=new List <Contact>();
        
        for(Integer i=1;i<=numContacts;i++) {
            Contact a = new Contact(FirstName = 'Test ' + i, LastName='ContactLastName');
            cont.add(a);
        }
        insert cont;
        return cont;
    }

}