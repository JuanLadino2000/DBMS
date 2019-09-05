package conexiondb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConsultasPsql {
	public static void main(String[] args) {
		System.out.println("Estableciendo conexion....  ");
		try(Connection conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/taller5a", "postgres","postgres")) {
			System.out.println("Hello World");
		}catch(SQLException e) {
			System.out.println("Conexion fallida");
			e.printStackTrace();
		}
	}

}
