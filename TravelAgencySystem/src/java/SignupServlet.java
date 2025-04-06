import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String jdbcURL = "jdbc:oracle:thin:@localhost:1521/orcl";
        String dbUsername = "your sqlplus username";
        String dbPassword = "your sqlplus password";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

            String sql = "INSERT INTO signup (username, email, password) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, password);

            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h1>Sign-Up Successful!</h1>");
                out.println("<a href='login.jsp'>Go to Login Page</a>");
            } else {
                out.println("<h1>Sign-Up Failed!</h1>");
            }

            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace(out);
        }
    }
}
