package com.example.javafxproject.data;

import com.example.javafxproject.data.models.StudentIcon;

import java.sql.*;
import java.util.ArrayList;

public class DBConnection {
    private final Connection connection;

    public static final String URL = "jdbc:mysql://localhost/qlsinhvien";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "";

    public DBConnection(){
        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            System.out.println("Connect successfully!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public ArrayList<StudentIcon> getStudents(){
        ArrayList<StudentIcon> list = new ArrayList<>();
        String sql = "SELECT * FROM student";
        try {
            ResultSet results = connection.prepareStatement(sql).executeQuery();
            while (results.next()){
                StudentIcon pro = new StudentIcon(
                        results.getInt("id"),
                        results.getString("name"),
                        results.getString("image"),
                        results.getInt("age"),
                        results.getString("major")
                );
                list.add(pro);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }
    public void insertStudent(StudentIcon pro){
        String sql = "INSERT INTO student (name, image, age, major) VALUE ('"+ pro.name+"','"+ pro.image+"','"+ pro.age+"','"+ pro.major+"')";
        try {
            connection.prepareStatement(sql).executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void updateStudent(StudentIcon pro){
        String sql = "UPDATE student SET name = '"+ pro.name +"', image = '"+ pro.image+"', age = '"+ pro.age+"', major = '"+ pro.major+"' WHERE id = "+ pro.id;
        try {
            connection.prepareStatement(sql).executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteStudent(int id){
        String sql = "DELETE FROM student WHERE id = "+ id;
        try {
            connection.prepareStatement(sql).executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
