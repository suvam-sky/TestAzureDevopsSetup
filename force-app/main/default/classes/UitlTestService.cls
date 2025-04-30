@isTest
private class UitlTestService {

    @isTest
    static void testAddNumbers() {
        Integer result = UitlService.addNumbers(5, 10);
        System.assertEquals(15, result, 'The sum should be 15');
    }

    @isTest
    static void testGetGreetingWithName() {
        String greeting = UitlService.getGreeting('Alice');
        System.assertEquals('Hello, Alice!', greeting, 'Greeting should include the name');
    }

    @isTest
    static void testGetGreetingWithBlankName() {
        String greeting = UitlService.getGreeting('');
        System.assertEquals('Hello, Guest!', greeting, 'Greeting should default to Guest for blank name');
    }
}
