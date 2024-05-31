@WebServlet("/excluir-animal")
public class ExcluirAnimalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos_animais", "seu_usuario", "sua_senha")) {
            String sql = "DELETE FROM animais WHERE id = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, id);
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        response.sendRedirect("listar-animais"); 
    }
}
