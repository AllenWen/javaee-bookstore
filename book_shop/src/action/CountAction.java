package action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.AdminDao;
import dao.CountDao;
import pojo.Cart;
import pojo.Count;
import pojo.CountId;

public class CountAction extends ActionSupport{
	
	public String nums;
	public String detail;
	public String curDate;
	public String total_price_str;
	public List<CountId> count=new ArrayList();
	public CountDao countdao;
	
	public String count(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		countdao=(CountDao)ac.getBean("CountDao");
		count= countdao.count(nums);
		Iterator<CountId> it=count.iterator();
		while(it.hasNext()){
			if(it.next().getTotalPriceStr().equals("0.0"))
				return ERROR;
		}
		return SUCCESS;
	}
	
	public String pay(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		countdao=(CountDao)ac.getBean("CountDao");
		return countdao.pay();
	}
	
	public String cancel(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		countdao=(CountDao)ac.getBean("CountDao");
		return countdao.cancel();
	}
	
	public String getNums() {
		return nums;
	}
	public void setNums(String nums) {
		this.nums = nums;
	}
	
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	public String getCurDate() {
		return curDate;
	}
	public void setCurDate(String curDate) {
		this.curDate = curDate;
	}
	
	public String getTotal_price_str() {
		return total_price_str;
	}
	public void setTotal_price_str(String total_price_str) {
		this.total_price_str = total_price_str;
	}
	
	public List<CountId> getCount() {
		return count;
	}
	public void setCount(List<CountId> count) {
		this.count = count;
	}

	public CountDao getCountdao() {
		return countdao;
	}
	public void setCountdao(CountDao countdao) {
		this.countdao = countdao;
	}
	
}
