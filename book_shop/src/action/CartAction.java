package action;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.Cart;
import com.opensymphony.xwork2.ActionSupport;
import dao.CartDao;
import dao.UserDao;

public class CartAction extends ActionSupport {
	
	public String book_name;
	public String user_id;
	public float price;
	public int remain;
	public List<Cart> cart;
	public CartDao cartdao;
	
	public String view(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		cartdao=(CartDao)ac.getBean("CartDao");
		cart=cartdao.getbyid(action.UserAction.current_id);
		
		return SUCCESS;
	}
	
	public String add(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		cartdao=(CartDao)ac.getBean("CartDao");
		user_id=action.UserAction.current_id;
		Cart cart=new Cart(book_name,user_id,  price, remain);
		return cartdao.add(cart);
	}
	
	public String delete(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		cartdao=(CartDao)ac.getBean("CartDao");
		return cartdao.delete(book_name);
	}
	
	public String clear(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		cartdao=(CartDao)ac.getBean("CartDao");
		return cartdao.clear(action.UserAction.current_id);
	}
	
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	public int getRemain() {
		return remain;
	}
	public void setRemain(int remain) {
		this.remain = remain;
	}
	
	public List<Cart> getCart() {
		return cart;
	}
	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}
	
	public CartDao getCartdao() {
		return cartdao;
	}
	public void setCartdao(CartDao cartdao) {
		this.cartdao = cartdao;
	}
	
}
