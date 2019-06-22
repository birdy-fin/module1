package fxb.com.Dao;

import com.model.Goods;
import org.apache.struts2.ServletActionContext;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;


public class infoDao extends DBConnection {
	private Goods goods;
	ArrayList<LinkedHashMap<String,Object>> list=null;
	LinkedHashMap map=null;

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}


	//添加数据
	public Boolean searchGoods() {
		Boolean a=false;
		DBConnection dba=new DBConnection();
		try {
			if(dba.getConn()!=null) {
				String sSql = "select * from goods where collect=1";
				Connection conn = dba.getConn();
				PreparedStatement pstmt = conn.prepareStatement(sSql);
				ResultSet rs = dba.query(pstmt);
				if (rs != null) {
					java.sql.ResultSetMetaData rsmd =rs.getMetaData();/*  获取表的结构 */
					int iNumOfCol =rsmd.getColumnCount();/* 获取列的数量 */
					list=new ArrayList<LinkedHashMap<String,Object>>();//定义一个list
					while(rs.next()){//当结果集有内容
						LinkedHashMap rsMap=new LinkedHashMap(iNumOfCol);//定义一个map，传入列数量
						for(int i=1;i<=iNumOfCol;i++){//循环输出每一列和对应的值，放入map中，表结构对象调用get()
							rsMap.put(rsmd.getColumnName(i),rs.getObject(i));
						}
						list.add(rsMap);//把map放入list
						ServletActionContext.getServletContext().setAttribute("userlist", list);//封装list
					}

				}
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return a;
	}

	public Boolean showgoods(){
        Boolean a=false;
        DBConnection dba=new DBConnection();
        try {
            if(dba.getConn()!=null) {
                String sSql = "select * from goods where collect=1 and type=1";
                Connection conn = dba.getConn();
                PreparedStatement pstmt = conn.prepareStatement(sSql);
                ResultSet rs = dba.query(pstmt);
                if (rs != null) {
                    java.sql.ResultSetMetaData rsmd =rs.getMetaData();/*  获取表的结构 */
                    int iNumOfCol =rsmd.getColumnCount();/* 获取列的数量 */
                    list=new ArrayList<LinkedHashMap<String,Object>>();//定义一个list
                    while(rs.next()){//当结果集有内容
                        LinkedHashMap rsMap=new LinkedHashMap(iNumOfCol);//定义一个map，传入列数量
                        for(int i=1;i<=iNumOfCol;i++){//循环输出每一列和对应的值，放入map中，表结构对象调用get()
                            rsMap.put(rsmd.getColumnName(i),rs.getObject(i));
                        }
                        list.add(rsMap);//把map放入list
                        ServletActionContext.getServletContext().setAttribute("showlist", list);//封装list
                    }

                }
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return a;
	}

	public Boolean select(){
        Boolean a=false;
        DBConnection dba=new DBConnection();
        try {
            if(dba.getConn()!=null) {
                String sSql = "select * from goods where collect=1 and type=0";
                Connection conn = dba.getConn();
                PreparedStatement pstmt = conn.prepareStatement(sSql);
                ResultSet rs = dba.query(pstmt);
                if (rs != null) {
                    java.sql.ResultSetMetaData rsmd =rs.getMetaData();/*  获取表的结构 */
                    int iNumOfCol =rsmd.getColumnCount();/* 获取列的数量 */
                    list=new ArrayList<LinkedHashMap<String,Object>>();//定义一个list
                    while(rs.next()){//当结果集有内容
                        LinkedHashMap rsMap=new LinkedHashMap(iNumOfCol);//定义一个map，传入列数量
                        for(int i=1;i<=iNumOfCol;i++){//循环输出每一列和对应的值，放入map中，表结构对象调用get()
                            rsMap.put(rsmd.getColumnName(i),rs.getObject(i));
                        }
                        list.add(rsMap);//把map放入list
                        ServletActionContext.getServletContext().setAttribute("selectlist", list);//封装list
                    }

                }
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
	    return a;
    }

	public void addtocollect(Goods goods) {
		int count=1;
		DBConnection dba=new DBConnection();
		try {
			if(dba.getConn()!=null) {
				Connection conn=dba.getConn();
				String sql="update goods set collect=1 where id=?";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, goods.getId());
				count=pstmt.executeUpdate();
			}
		}catch(SQLException e) {e.printStackTrace();}
	}

	public int deleteFromcollect(Goods goods) {
		int count=1;
		DBConnection dba=new DBConnection();
		try {
			if(dba.getConn()!=null) {
				Connection conn=dba.getConn();
				String sql="update goods set collect=0 where id=?";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, goods.getId());
				count=pstmt.executeUpdate();

			}
		}catch(SQLException e) {e.printStackTrace();}
		return count;
	}


}




