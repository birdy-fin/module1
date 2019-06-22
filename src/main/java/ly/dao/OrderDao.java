package ly.dao;

import ly.action.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by ANN on 2019/6/18.
 */
public class OrderDao extends BaseDao {
    Connection connection = super.getConn();
    public List<Order> readod(int page) {
        List<Order> list = new ArrayList<Order>();
        try {
            String sql = "SELECT * FROM store limit ?,?";
            PreparedStatement pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1, (page-1)* Order.PAGE_SIZE);
            pstmt.setInt(2, Order.PAGE_SIZE );
            ResultSet rs = pstmt.executeQuery();
            while (rs != null && rs.next()) {
                Order od = new Order();
                od.setId(rs.getInt("id"));
                od.setNum(rs.getInt("num"));
                od.setPrice(rs.getInt("price"));
                od.setTitle(rs.getString("title"));
                od.setAddress(rs.getString("address"));
                od.setAmount(rs.getInt("amount"));
                list.add(od);
            }
            rs.close();
            pstmt.close();
//            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int findCount(){
        int  count=0;
        String sql="SELECT COUNT(id) as coun FROM store";
        try {
            PreparedStatement pstmt = connection.prepareStatement(sql);
            ResultSet rs=pstmt.executeQuery(sql);
            while (rs !=null && rs.next()){
                count=rs.getInt("coun");
                //System.out.println("==========="+count);
            }
            rs.close();
//            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    public void deleteOrder(int num){
        try {
            String sql = "DELETE FROM store WHERE num = ?";
            PreparedStatement pstmt=connection.prepareStatement(sql);
            pstmt.setInt(1,num);
            pstmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Order> selectLikeOrder(String title){
        List<Order> list = new ArrayList<Order>();
        Order od;
        try {
            String sql = "SELECT * FROM store WHERE title like '%" + title + "%'";
            //System.out.println(sql);
            PreparedStatement pstmt=connection.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs != null && rs.next()){
                od = new Order();
                od.setId(rs.getInt("id"));
                od.setNum(rs.getInt("num"));
                od.setPrice(rs.getInt("price"));
                od.setTitle(rs.getString("title"));
                od.setAddress(rs.getString("address"));
                od.setAmount(rs.getInt("amount"));
                list.add(od);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
