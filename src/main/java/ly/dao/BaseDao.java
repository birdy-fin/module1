package ly.dao;

import java.sql.*;

/**
 * Created by ANN on 2019/4/7.
 */
public class BaseDao {
    Connection conn = null;
    Statement stmt = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;


    public Connection getConn() {
        if (conn == null) this.getConnection();
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public void setStmt(Statement stmt) {
        this.stmt = stmt;
    }

    public PreparedStatement getPstmt() {
        return pstmt;
    }

    public void setPstmt(PreparedStatement pstmt) {
        this.pstmt = pstmt;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;

    }

    //数据库连接

    public void getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/ck?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT";
            this.conn = DriverManager.getConnection(url); // 创建Connection对象con,olLearn为SQLServer数据库名称
            //System.out.println("getConnection--success");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Statement getStmt(){
        if(stmt!=null)return stmt;
        if(conn==null)this.getConnection();
        try {
            this.stmt = this.conn.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return stmt;
    }
    public void closeConn(){
        if(conn!=null)
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("closeConn()");
            }
    }
    public void closeStmt(){
        if(stmt!=null)
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("closeStmt()");
            }
    }

    public void closeAll(){
        if(rs!=null)
            try {
                rs.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
                System.out.println("closeAll()");
            }
        this.closeStmt();
        this.closeConn();
        if(pstmt!=null)
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();

            }
    }

}
