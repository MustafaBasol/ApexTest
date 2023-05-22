/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-22-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class TestVerifyDate {
    @isTest static void TestCheckDates1(){
        Date date1=VerifyDate.CheckDates(date.parse('01/01/2023'),date.parse('01/05/2023'));
        System.assertEquals(date.parse('01/05/2023'), date1);
    }
     @isTest static void TestCheckDates2(){
        Date date1=VerifyDate.CheckDates(date.parse('01/01/2023'),date.parse('05/05/2023'));
        System.assertEquals(date.parse('01/31/2023'), date1);
    }
     @isTest static void TestDateWithin30Days1(){
        Boolean date1=VerifyDate.DateWithin30Days(date.parse('01/01/2023'),date.parse('02/02/2023'));
        System.assertEquals(false, date1);
    }
    @isTest static void TestDateWithin30Days2(){
        Boolean date1=VerifyDate.DateWithin30Days(date.parse('01/01/2023'),date.parse('01/02/2023'));
        System.assertEquals(true, date1);
    }
    @isTest static void TestSetEndOfMonthDate(){
        Date date1=VerifyDate.SetEndOfMonthDate(date.parse('01/01/2023'));
        System.assertEquals(date.parse('01/31/2023'), date1); 
    }
}