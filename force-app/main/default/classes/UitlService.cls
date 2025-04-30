public with sharing class UitlService {
    public UitlService() {

    }
     // Method to add two integers
     public static Integer addNumbers(Integer a, Integer b) {
        return a + b;
    }

    // Method to return a greeting message
    public static String getGreeting(String name) {
        if (String.isBlank(name)) {
            return 'Hello, Guest!';
        }
        return 'Hello, ' + name + '!';
    }
}