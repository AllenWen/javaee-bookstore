package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.User;

public class UserDaoImpl  extends HibernateDaoSupport implements UserDao{
	
	@Override
	public String login(String user_id,String password){		
		// TODO Auto-generated method stub
		String pwd=null;
		String hql= "from User user where user.userId ='"+user_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<User> list=query.list();
		Iterator<User> it=list.iterator();       
		while(it.hasNext()){                
			User user=it.next();
			pwd=user.getPassword();    
		}
		session.close();
		if(password.equals(pwd))
			return "success";
		else
			return "error";
	}

	@Override
	public String register(User user) {
		// TODO Auto-generated method stub
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(user);
		tx.commit();  
		session.close();
		return "success";
	}

	@Override
	public String update(User user) {
		// TODO Auto-generated method stub
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.update(user);
		tx.commit();  
		session.close();
		return "success";
	}

	@Override
	public String delete(String  user_id) {
		// TODO Auto-generated method stub
		String hql= "delete from User user where user.userId ='"+user_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query=session.createQuery(hql);
		query.executeUpdate();
		tx.commit();
		session.close();
		return "success";
	}

	@Override
	public List <User>  getbyid(String user_id) {
		// TODO Auto-generated method stub
		List<User> user = new  ArrayList();
		String hql= "from User user where user.userId ='"+user_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<User> list=query.list();
		Iterator<User> it=list.iterator(); 
		while(it.hasNext()){      
			User user_iterator=it.next();
			user.add(user_iterator);
		}
		session.close();
		return user;
	}

	@Override
	public List <User> getAll() {
		// TODO Auto-generated method stub
		List<User> user = new  ArrayList();
		String hql= "from User";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<User> list=query.list();
		Iterator<User> it=list.iterator(); 
		while(it.hasNext()){      
			User user_iterator=it.next();
			user.add(user_iterator);
		}
		session.close();
		return user;
	}
	
}
