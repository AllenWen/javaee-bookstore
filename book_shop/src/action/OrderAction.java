package action;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.ActionSupport;
import dao.OrderDao;
import dao.UserDao;
import pojo.Order;


public class OrderAction extends ActionSupport{
	
	private String order_id;
	private String user_id;
	private String date;
	private float  total_price;
	private String detail;
	public List<Order> order;
	public OrderDao orderdao;
	
	public String scan(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		orderdao=(OrderDao)ac.getBean("OrderDao");
		order=orderdao.getAll();
		return SUCCESS;
	}
	
	public String view(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		orderdao=(OrderDao)ac.getBean("OrderDao");
		order=orderdao.getbyid(action.UserAction.current_id);
		return SUCCESS;
	}
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public float getTotal_price() {
		return total_price;
	}
	public void setTotal_price(float total_price) {
		this.total_price = total_price;
	}
	
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	public List<Order> getOrder() {
		return order;
	}
	public void setOrder(List<Order> order) {
		this.order = order;
	}
	
	public OrderDao getOrderdao() {
		return orderdao;
	}
	public void setOrderdao(OrderDao orderdao) {
		this.orderdao = orderdao;
	}
	
}
