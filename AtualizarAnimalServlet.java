@WebServlet("/atualizar-animal")
public class AtualizarAnimalServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String especie = request.getParameter("especie");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos_animais", "seu_usuario", "sua_senha")) {
            String sql = "UPDATE animais SET nome = ?, especie = ? WHERE id = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, nome);
                stmt.setString(2, especie);
                stmt.setInt(3, id);
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        response.sendRedirect("listar-animais");
    }
}
