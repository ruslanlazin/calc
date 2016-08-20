package ua.pp.lazin.calc.model;

/**
 * Created by Laz on 20.08.2016.
 */
public class Calculator {
 public int doOperation(int operand1, int operand2, String operation) throws IllegalArgumentException {
        if ("add".equalsIgnoreCase(operation)) {
            return (operand1 + operand2);
        }
        if ("sub".equalsIgnoreCase(operation)) {
            return (operand1 - operand2);
        }
        if ("mul".equalsIgnoreCase(operation)) {
            return (operand1 * operand2);
        }
        if ("div".equalsIgnoreCase(operation)) {
            return (operand1 / operand2);
        }
        throw new IllegalArgumentException();
    }
}
