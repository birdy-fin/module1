package fin.action;

import fin.Dao.StoreDao;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by s5 on 2019/3/25.
 */
public class StoreAction extends ActionSupport {
    private Store item;
   private String tip=null;

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public Store getItem(){
       return item;
   }

    public void setItem(Store item) {
        this.item = item;
    }

    public String  execute(){
      return SUCCESS;
  }

//查询商品列表
    public String readitem(){
        try {
            StoreDao dao2 = new StoreDao();
            List<Store> list = new ArrayList<Store>();
            list = dao2.readitem();
            boolean flag=true;
            if(flag){//管理员登陆成功了就显示所有商品信息列表
                ActionContext.getContext().getContextMap().put("list",list);
                return SUCCESS;
            }
        }catch(Exception e){
            e.printStackTrace();
            }
            return ERROR;
        }

//添加商品
    public String itemadd() {
//    1.判断商品编号是否存在
//    1.1 不存在才允许继续添加
//    1.2 若存在return对应result
//    2.添加商品
    try{
        StoreDao dao1 = new StoreDao();
        if (!dao1.checknum(item.getNum())){
                dao1.itemadd(item);
                return SUCCESS;
            }
      }catch (Exception e){
        return ERROR;
       }
     System.out.print(item);
         return Action.SUCCESS;
  }

//修改商品信息
    public String itemcorr(){
    try {
        StoreDao dao3 = new StoreDao();
        dao3.itemupdate(item);
        return SUCCESS;
    }catch (Exception e){
        return ERROR;
    }
    }

//删除商品信息
    public String itemdelete(){
        try{
            StoreDao dao4 = new StoreDao();
            dao4.itemdelete(item);
            System.out.print(item);
            return SUCCESS;
        }catch (Exception e){
            e.printStackTrace();
            return ERROR;
        }
    }

    public String validation(){
        StoreDao dao1 = new StoreDao();
        if (dao1.checknum(item.getNum())){
            tip="提示信息";


        }else{String regex="[0-9]{8}";
            Pattern p = Pattern.compile(regex);
            Matcher matcher = p.matcher(item.getNum());
            boolean flag= matcher.matches();
            if(!flag){
                tip = "bufuheguize";
            }
        }
        return "json";
    }

    //模糊查询
    public String rereadItem(){
        StoreDao dao = new StoreDao();
        List<Store> list = new ArrayList<Store>();
        list = dao.rereadItem(item);
        boolean flag=true;
        try {
            if(flag){//管理员登陆成功了就显示所有商品信息列表
                ActionContext.getContext().getContextMap().put("list",list);
                return SUCCESS;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return ERROR;
    }


}


