package OrderDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Connections.MyConnection;
import com.pizza.Pizza;

public class OrderDAOImpl implements OrderDAO {

	@Override
	public List<Pizza> showList() {
		// TODO Auto-generated method stub
		List<Pizza> pizzas = new ArrayList<>();
		Connection conn = MyConnection.setConnection();
		String LIST_ALL = "select * fom Pizza";
		try {
			PreparedStatement ps = conn.prepareStatement(LIST_ALL);
			ResultSet rs =ps.executeQuery();
			while (rs.next()) {
				Pizza pizza1 = new Pizza();
				pizza1.setName(rs.getString(1));
				pizza1.setType(rs.getString(2));
				pizza1.setID(rs.getInt(3));
				pizza1.setDescription(rs.getString(4));
				pizza1.setPrice(rs.getInt(5));
				pizzas.add(pizza1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pizzas;
	}

}
