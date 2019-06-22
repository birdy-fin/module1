package ly.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import ly.dao.UserDao;

import java.util.List;

/**
 * Created by ANN on 2019/6/20.
 */
public class UserAction extends ActionSupport {

    private User od;
    private int num;
    private String name;

    public User getOd() {
        return od;
    }

    public void setOd(User od) {
        this.od = od;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String selectLikeUser(){
        UserDao dao = new UserDao();
        List<User> od;
        //System.out.println(name);
        od = dao.selectLikeUser(name);
        if(od != null){
            ActionContext.getContext().getContextMap().put("list",od);
            return SUCCESS;
        }
        return ERROR;
    }
}
