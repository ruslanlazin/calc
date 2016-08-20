package ua.pp.lazin.calc.servlet;

import ua.pp.lazin.calc.model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;


public class CalcServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long startTime = System.nanoTime();

        Map<String, String[]> parameters = request.getParameterMap();

        response.setContentType("text/html; charset=utf-8");

        if (!isAllParametersPresent(parameters)) {

            request.setAttribute("message", "Be attentive! All parameters are required");
            request.setAttribute("answer", "");
            request.getRequestDispatcher("result.jsp").forward(request, response);
        }
        String operation = parameters.get("operation")[0];

        if (!isOperationCorrect(operation)) {

            request.setAttribute("message", "Use only ADD, SUB, MUL, DIV  keywords as operation parameter");
            request.setAttribute("answer", "");
            request.getRequestDispatcher("result.jsp").forward(request, response);
        }

        int operand1 = 0, operand2 = 0;

        try {
            operand1 = Integer.parseInt(parameters.get("operand1")[0]);
            operand2 = Integer.parseInt(parameters.get("operand2")[0]);
        } catch (NumberFormatException e) {
            request.setAttribute("message", "Use only whole numbers as operand1 and operand2");
            request.setAttribute("answer", "");
            request.getRequestDispatcher("result.jsp").forward(request, response);
        }

        if (operand2 == 0 && "div".equalsIgnoreCase(operation)) {
            request.setAttribute("message", "You cannot divide by zero for free");
            request.setAttribute("answer", "");
            request.getRequestDispatcher("result.jsp").forward(request, response);
        }

        Calculator calculator = new Calculator();
        int result = calculator.doOperation(operand1, operand2, operation);
        String answer = "The answer  (" + operand1 + " " + operation + " " + operand2 + ") is:  " + result;
        request.setAttribute("message", "Server completed the task in "+ (System.nanoTime()-startTime)+" ns");
        request.setAttribute("answer", answer);
        request.getRequestDispatcher("result.jsp").forward(request, response);

    }

    private boolean isOperationCorrect(String operation) {
        if ("add".equalsIgnoreCase(operation) || "sub".equalsIgnoreCase(operation) ||
                "mul".equalsIgnoreCase(operation) || "div".equalsIgnoreCase(operation)) {
            return true;
        }
        return false;
    }


    private boolean isAllParametersPresent(Map<String, String[]> parameters) {
        if (parameters.containsKey("operand1") && parameters.containsKey("operand2") && parameters.containsKey("operation")) {
            return true;
        } else return false;
    }
}
