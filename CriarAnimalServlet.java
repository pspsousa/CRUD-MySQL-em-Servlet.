@WebServlet("/criar-animal")
public class CriarAnimalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String especie = request.getParameter("especie");


        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos_animais", "seu_usuario", "sua_senha")) {
            String sql = "INSERT INTO animais (nome, especie) VALUES (?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, nome);
                stmt.setString(2, especie);
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("listar-animais"); 
    }
}
