import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int personalInfoId = Integer.parseInt(request.getParameter("personalInfoId"));
        int destinationId = Integer.parseInt(request.getParameter("destinationId"));
        int journeyInfoId = Integer.parseInt(request.getParameter("journeyInfoId"));

        String fullName = request.getParameter("fullName");
        String age = request.getParameter("age");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        String destination = request.getParameter("destination");
        String numberOfPeople = request.getParameter("numberOfPeople");
        String flightClass = request.getParameter("flightClass");
        String personalGuide = request.getParameter("personalGuide");

        String amountExchange = request.getParameter("amountExchange");
        String luggageWeight = request.getParameter("luggageWeight");
        String paymentMode = request.getParameter("paymentMode");
        String specialMessage = request.getParameter("specialMessage");

        try {
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "your sqlplus username", "your sqlplus password");

            String sql1 = "UPDATE PersonalInfo SET fullName=?, age=?, phone=?, email=? WHERE id=?";
            PreparedStatement pstmt1 = conn.prepareStatement(sql1);
            pstmt1.setString(1, fullName);
            pstmt1.setInt(2, Integer.parseInt(age));
            pstmt1.setString(3, phone);
            pstmt1.setString(4, email);
            pstmt1.setInt(5, personalInfoId);
            pstmt1.executeUpdate();

            String sql2 = "UPDATE Destination SET destination=?, numberOfPeople=?, flightClass=?, personalGuide=? WHERE id=?";
            PreparedStatement pstmt2 = conn.prepareStatement(sql2);
            pstmt2.setString(1, destination);
            pstmt2.setInt(2, Integer.parseInt(numberOfPeople));
            pstmt2.setString(3, flightClass);
            pstmt2.setString(4, personalGuide);
            pstmt2.setInt(5, destinationId);
            pstmt2.executeUpdate();

            String sql3 = "UPDATE JourneyInfo SET amountExchange=?, luggageWeight=?, paymentMode=?, specialMessage=? WHERE id=?";
            PreparedStatement pstmt3 = conn.prepareStatement(sql3);
            pstmt3.setString(1, amountExchange);
            pstmt3.setString(2, luggageWeight);
            pstmt3.setString(3, paymentMode);
            pstmt3.setString(4, specialMessage);
            pstmt3.setInt(5, journeyInfoId);
            pstmt3.executeUpdate();

            conn.close();
            response.sendRedirect("thanks.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
