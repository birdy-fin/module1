package ly.dao;

import ly.action.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ANN on 2019/6/20.
 */
public class UserDao extends BaseDao {
    Connection connection = super.getConn();

    public List<User> selectLikeUser(String name) {
        List<User> list = new ArrayList<User>();
        User od;
        //if (name.equals("name") == name.equals("password"))
        try {
            String sql = "SELECT * FROM store WHERE name like '%" + name + "%'";
            //System.out.println(sql);
            PreparedStatement pstmt = connection.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs != null && rs.next()) {
                od = new User();
                od.setId(rs.getInt("id"));
                od.setNum(rs.getInt("num"));
                od.setPrice(rs.getInt("price"));
                od.setTitle(rs.getString("title"));
                od.setAddress(rs.getString("address"));
                od.setAmount(rs.getInt("amount"));
                od.setName(rs.getString("name"));
                list.add(od);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
