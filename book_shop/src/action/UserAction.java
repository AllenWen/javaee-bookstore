package action;

import java.util.List;
import java.util.Map;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pojo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.UserDao;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	
	private String user_id;  
    private String password;
	private String user_name;
	private String address;
	private String phone_num;
	private String post_code; 
	public UserDao userdao;
	public static String current_id;
	public List<User> user;
	
	public  String login(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		userdao=(UserDao)ac.getBean("UserDao");
		current_id=user_id;
		return userdao.login(user_id,password);
	}
	
	public String register(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		userdao=(UserDao)ac.getBean("UserDao");
		User user=new User(user_id, password, user_name, address, phone_num, post_code);
		return userdao.register(user);
	}
	
	public String view_profile(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		userdao=(UserDao)ac.getBean("UserDao");
		user=userdao.getbyid(current_id);
		return SUCCESS;
	}
	
	public String view_user(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		userdao=(UserDao)ac.getBean("UserDao");
		user=userdao.getbyid(user_id);
		return SUCCESS;
	}
	
	public String update(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		userdao=(UserDao)ac.getBean("UserDao");
		User user=new User(user_id, password, user_name, address, phone_num, post_code);
		return userdao.update(user);
	}
	
	public String scan(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		userdao=(UserDao)ac.getBean("UserDao");
		user=userdao.getAll();
		return SUCCESS;
	}	
	
	public String delete(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		userdao=(UserDao)ac.getBean("UserDao");
		return userdao.delete(user_id);
	}

	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}

	public String getPost_code() {
		return post_code;
	}
	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}

	public UserDao getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}
	
	public List<User> getUser() {
		return user;
	}
	public void setUser(List<User> user) {
		this.user = user;
	}
	
}
