package fin.Dao;

import fin.action.Store;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by s5 on 2019/4/18.
 */
    public class StoreDao extends BaseDao {
    Connection connection = super.getConn();

    public List readitem() {//查询数据库中所有商品信息
        List<Store> list = new ArrayList<Store>();
        try {
            Statement stmt=connection.createStatement();
            String sql = "select * from store";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs != null && rs.next()) {
                Store store = new Store();
                store.setNum(rs.getString("num"));
                store.setTitle(rs.getString("title"));
                store.setPrice(rs.getInt("price"));
                store.setAmount(rs.getInt("amount"));
                list.add(store);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean checknum(String num) {//查找数据库中有没有对应的编号
        String sql = "select * from store where num ='" + num + "'";
        try {
//            System.out.println(sql);
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery(sql);
            if (rs.next() != false) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean itemadd(Store item) {//添加商品，将商品信息添加到数据库
        String sql = "insert into store(num,title,price,amount)VALUES(?,?,?,?)";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, item.getNum());
            pstmt.setString(2, item.getTitle());
            pstmt.setInt(3, item.getPrice());
            pstmt.setInt(4, item.getAmount());
            int rs = pstmt.executeUpdate();
            if (rs == 1) {
                return true;
            }
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public boolean itemupdate(Store item){//修改商品信息
        String sql = "update store set price=?,amount=? where num=?";
        boolean flag = true;
        try{
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,item.getPrice());
            statement.setInt(2,item.getAmount());
            statement.setString(3 ,item.getNum());
            int n = statement.executeUpdate();
//            Statement statement=connection.createStatement();
//            rs =statement.executeQuery(sql);
            if(n!=1){
                return false;
        }
        }catch (Exception e){
            e.printStackTrace();
        }
        return true;
    }


     public boolean itemdelete (Store item){//删除商品信息
      String sql = "delete from store where num= ?"  ;
          try {
              PreparedStatement statement = connection.prepareStatement(sql);
              statement.setString(1, item.getNum());
              int n = statement.executeUpdate();
              if(n!=1){
                  return false;
              }
          } catch (SQLException e) {
              e.printStackTrace();
          }
        return true;
    }

    public List rereadItem(Store item){
        List<Store> list = new ArrayList<Store>();
        try {
            stmt=conn.createStatement();
            String sql = "select * from store where title like '%"+item.getTitle()+"%'";
            System.out.print(sql);
            ResultSet rs = stmt.executeQuery(sql);
            while (rs != null && rs.next()) {
                Store store = new Store();
                store.setNum(rs.getString("num"));
                store.setTitle(rs.getString("title"));
                store.setPrice(rs.getInt("price"));
                store.setAmount(rs.getInt("amount"));
                list.add(store);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

//    public List readitem1() {//根据编号来查询商品
//        List<Store> list = new ArrayList<Store>();
//        try{
//
//            String sql="SELECT * FROM ";
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//
//
//    }
}




//    //action中使用：如果调用这个方法不为null则登陆成功
//    public User loginUser(User user){//登陆用户，如果账号密码正确，从数据库中找到此用户的其他信息赋值到user 并返回user对象
//        try {
//            sql="select * from test1 where username=? and password=?"  ;
//            pstmt=connection.prepareStatement(sql);
//            pstmt.setString(1,user.getUsername());
//            pstmt.setString(2,user.getPassword());
//            rs=pstmt.executeQuery();
//            if (rs.next()!=false){//找到此用户信息,为user添加信息
//                user.setEmail(rs.getString("email"));
//                user.setRealname(rs.getString("realname"));
//                user.setAddress(rs.getString("address"));
//                return user;
//            }
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        return null;
//    }
