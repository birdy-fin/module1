package ly.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import ly.dao.OrderDao;

import java.util.List;

/**
 * Created by ANN on 2019/6/18.
 */
public class OrderAction extends ActionSupport {

    private Order od;
    private int num;
    private String title;
    private int page;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public Order getOd() {
        return od;
    }

    public void setOd(Order od) {
        this.od = od;
    }

    public String  execute(){
        return SUCCESS;
    }

    public String readod(){
        try {
            OrderDao dao = new OrderDao();
            List<Order> od;
            int current_page = getPage();
            ActionContext context=ActionContext.getContext();
            od = dao.readod(current_page);
            int pages = dao.findCount();//搜索一共有多少数据
            StringBuffer s=new StringBuffer();
            //System.out.println(pages);
            for(int i=1;i<=pages/2;i++){
                if(i==current_page){
                    s.append("["+i+"]");
                }
                else{
                   s.append("<a href=readod.action?page="+i+">"+i+"</a>   ");
                }
            }
            //context.put("list",od);
            //context.put("s",s);
            //System.out.println(s.toString());
            ActionContext.getContext().getContextMap().put("s",s);
            ActionContext.getContext().getContextMap().put("list",od);
            return SUCCESS;
        }catch(Exception e){
            e.printStackTrace();
        }
        return ERROR;
    }

    public String deleteOrder(){
        try {
            OrderDao dao = new OrderDao();
            dao.deleteOrder(num);
            return SUCCESS;
        }catch(Exception e){
            e.printStackTrace();
        }
        return ERROR;
    }

    public String selectLikeOrder(){
        OrderDao dao = new OrderDao();
        List<Order> od;
        //System.out.println(title);
        od = dao.selectLikeOrder(title);
        if(od != null){
            ActionContext.getContext().getContextMap().put("list",od);
            return SUCCESS;
        }
        return ERROR;
    }

}
