import java.io.IOException;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BookTourServlet")
public class BookTourServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String jdbcURL = "jdbc:oracle:thin:@localhost:1521/orcl";
        String dbUsername = "your sqlplus username";//for example john
        String dbPassword = "your sqlplus password";//for example john123

        int personalInfoId = 0;
        int destinationId = 0;
        int journeyInfoId = 0;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);
            conn.setAutoCommit(false);

            PreparedStatement pstmt1 = conn.prepareStatement(
                "INSERT INTO PersonalInfo (id, fullName, age, phone, email) VALUES (personalinfo_seq.NEXTVAL, ?, ?, ?, ?)",
                new String[] { "id" }
            );
            pstmt1.setString(1, request.getParameter("fullName"));
            pstmt1.setInt(2, Integer.parseInt(request.getParameter("age")));
            pstmt1.setString(3, request.getParameter("phone"));
            pstmt1.setString(4, request.getParameter("email"));
            pstmt1.executeUpdate();
            ResultSet rs1 = pstmt1.getGeneratedKeys();
            if (rs1.next()) {
                personalInfoId = rs1.getInt(1);
            }

            PreparedStatement pstmt2 = conn.prepareStatement(
                "INSERT INTO Destination (id, destination, numberOfPeople, flightClass, personalGuide) VALUES (destination_seq.NEXTVAL, ?, ?, ?, ?)",
                new String[] { "id" }
            );
            pstmt2.setString(1, request.getParameter("destination"));
            pstmt2.setInt(2, Integer.parseInt(request.getParameter("numberOfPeople")));
            pstmt2.setString(3, request.getParameter("flightClass"));
            pstmt2.setString(4, request.getParameter("personalGuide"));
            pstmt2.executeUpdate();
            ResultSet rs2 = pstmt2.getGeneratedKeys();
            if (rs2.next()) {
                destinationId = rs2.getInt(1);
            }

            PreparedStatement pstmt3 = conn.prepareStatement(
                "INSERT INTO JourneyInfo (id, amountExchange, luggageWeight, paymentMode, specialMessage) VALUES (journeyinfo_seq.NEXTVAL, ?, ?, ?, ?)",
                new String[] { "id" }
            );
            pstmt3.setString(1, request.getParameter("amountExchange"));
            pstmt3.setString(2, request.getParameter("luggageWeight"));
            pstmt3.setString(3, request.getParameter("paymentMode"));
            pstmt3.setString(4, request.getParameter("specialMessage"));
            pstmt3.executeUpdate();
            ResultSet rs3 = pstmt3.getGeneratedKeys();
            if (rs3.next()) {
                journeyInfoId = rs3.getInt(1);
            }

            conn.commit();
            pstmt1.close();
            pstmt2.close();
            pstmt3.close();
            conn.close();

            request.setAttribute("personalInfoId", personalInfoId);
            request.setAttribute("destinationId", destinationId);
            request.setAttribute("journeyInfoId", journeyInfoId);
            request.getRequestDispatcher("success.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
