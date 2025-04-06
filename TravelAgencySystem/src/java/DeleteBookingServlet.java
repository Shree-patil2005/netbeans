import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int personalInfoId = Integer.parseInt(request.getParameter("personalInfoId"));
        int destinationId = Integer.parseInt(request.getParameter("destinationId"));
        int journeyInfoId = Integer.parseInt(request.getParameter("journeyInfoId"));

        try {
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "your sqlplus username", "your sqlplus password");

            String sql1 = "DELETE FROM PersonalInfo WHERE id=?";
            PreparedStatement pstmt1 = conn.prepareStatement(sql1);
            pstmt1.setInt(1, personalInfoId);
            pstmt1.executeUpdate();

            String sql2 = "DELETE FROM Destination WHERE id=?";
            PreparedStatement pstmt2 = conn.prepareStatement(sql2);
            pstmt2.setInt(1, destinationId);
            pstmt2.executeUpdate();

            String sql3 = "DELETE FROM JourneyInfo WHERE id=?";
            PreparedStatement pstmt3 = conn.prepareStatement(sql3);
            pstmt3.setInt(1, journeyInfoId);
            pstmt3.executeUpdate();

            conn.close();

            response.sendRedirect("thanks.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
