
@isTest
private class ValidTestDataService {

    @isTest
    static void myUnitTest() {
        // TO DO: implement unit test
    }

@IsTest
private class ValidServiceTest {
    @IsTest
    static void myUnitTest() {
        // TO DO: implement unit test
    }
    @IsTest
    static void printWelcomeMessageTest() {
        Test.startTest();
        ValidService.printWelcomeMessage();
        Test.stopTest();
        System.assert(true, 'Welcome message should be printed');
    }
}
}