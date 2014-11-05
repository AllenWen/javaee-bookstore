package action;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.AdminDao;
import dao.UserDao;

public class AdminAction extends ActionSupport {
	
	public AdminDao admindao;
	public String admin_id;
	public String password;
	
	public String login(){
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		admindao=(AdminDao)ac.getBean("AdminDao");
		return admindao.login(admin_id,password);
	}

	public AdminDao getAdmindao() {
		return admindao;
	}
	public void setAdmindao(AdminDao admindao) {
		this.admindao = admindao;
	}
	
	

	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
