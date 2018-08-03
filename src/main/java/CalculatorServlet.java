import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Double amount = Double.parseDouble(request.getParameter("amount"));
        Float rate = Float.parseFloat(request.getParameter("rate"));
        int years = Integer.parseInt(request.getParameter("years"));

        if (amount <= 0 || rate <= 0 || years <= 0) {
            request.setAttribute("error", "Inventment Amount or Yearly Interest Rate or Number of Years invalid");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        } else {
            Double future = 0.0;
            for (int i = 1; i <= years; i++) {
                future = amount + (amount * rate * 0.01);
                amount = future;
            }

            DecimalFormat df = new DecimalFormat("#.0000");
            request.setAttribute("future",df.format(future) );
            RequestDispatcher dispatcher = request.getRequestDispatcher("calculator.jsp");
            dispatcher.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
