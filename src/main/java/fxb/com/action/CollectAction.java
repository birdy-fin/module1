package fxb.com.action;

import com.Dao.infoDao;
import com.model.Goods;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by 冯雪冰 on 6/18 0018.
 */
public class CollectAction extends ActionSupport {
    private Goods goods;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }


    //添加收藏
    public String addlike(){
        Boolean a = false;
        infoDao in = new infoDao();
        System.out.println(goods.getId());
        String id = goods.getId();
        System.out.println("收藏的商品id："+id);
        a=in.searchGoods();
        in.addtocollect(goods);
        if (a=true){
            return "success";
        }else {
            return "error";
        }
    }
    //获取我的收藏
    public String showlike(){
        infoDao sc = new infoDao();
        sc.searchGoods();
        System.out.println("mylike");
        return "ok";
    }
//查询
    public String show(){
        infoDao s = new infoDao();
        s.showgoods();
        System.out.println("show");
        return "ok";
    }

    public String select(){
        infoDao sel = new infoDao();
        sel.select();
        System.out.println("select");
        return "ok";
    }

    public String cancel(){
        Boolean a;
        infoDao cc = new infoDao();
        String id = goods.getId();
        System.out.println("取消收藏的商品id："+id);
        cc.deleteFromcollect(goods);
        a=cc.searchGoods();
        if (a=true){
            return "success";
        }else {
            return "error";
        }
    }
}
