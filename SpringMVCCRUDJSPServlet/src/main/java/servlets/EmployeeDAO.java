package servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Employee;

public class EmployeeDAO {
    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employees (name, salary, designation) VALUES (?, ?, ?)";
    private static final String UPDATE_EMPLOYEE_SQL = "UPDATE employees SET name = ?, salary = ?, designation = ? WHERE id = ?";
    private static final String DELETE_EMPLOYEE_SQL = "DELETE FROM employees WHERE id = ?";

    public void insertEmployee(Employee emp) throws SQLException {
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_SQL)) {
            preparedStatement.setString(1, emp.getName());
            preparedStatement.setFloat(2, emp.getSalary());
            preparedStatement.setString(3, emp.getDesignation());

            preparedStatement.executeUpdate();
        }
    }

    public void updateEmployee(Employee emp) throws SQLException {
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_EMPLOYEE_SQL)) {
            preparedStatement.setString(1, emp.getName());
            preparedStatement.setFloat(2, emp.getSalary());
            preparedStatement.setString(3, emp.getDesignation());
            preparedStatement.setInt(4, emp.getId());

            preparedStatement.executeUpdate();
        }
    }

    public void deleteEmployee(int id) throws SQLException {
        try (Connection connection = DBUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_EMPLOYEE_SQL)) {
            preparedStatement.setInt(1, id);

            preparedStatement.executeUpdate();
        }
    }
}
