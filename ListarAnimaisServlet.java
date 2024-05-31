@WebServlet("/listar-animais")
public class ListarAnimaisServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Animal> animais = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sos_animais", "seu_usuario", "sua_senha")) {
            String sql = "SELECT * FROM animais";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {
                        Animal animal = new Animal(rs.getInt("id"), rs.getString("nome"), rs.getString("especie"));
                        animais.add(animal);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();

        }

        request.setAttribute("animais", animais);
        request.getRequestDispatcher("/listar-animais.jsp").forward(request, response);
    }
}
