package dao;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao{
	
	public String login(String admin_id,String password){
		String pwd=null;
		String hql= "from Admin admin where admin.adminId ='"+admin_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Admin> list=query.list();
		Iterator<Admin> it=list.iterator();       
		while(it.hasNext()){                
			Admin admin=it.next();
			pwd=admin.getPassword();    
		}
		session.close();
		if(password.equals(pwd))
			return "success";
		else
			return "error";
	}
}
