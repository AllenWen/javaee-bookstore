package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.Order;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {
	
	public List <Order> getAll(){
		List<Order> order = new  ArrayList();
		String hql= "from Order";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Order> list=query.list();
		Iterator<Order> it=list.iterator(); 
		while(it.hasNext()){      
			Order order_iterator=it.next();
			order.add(order_iterator);
		}
		session.close();
		return order;
	}
	
	public List <Order> getbyid(String current_id){
		List<Order> order = new  ArrayList();
		String hql= "from Order order where order.userId ='"+current_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Order> list=query.list();
		Iterator<Order> it=list.iterator(); 
		while(it.hasNext()){      
			Order order_iterator=it.next();
			order.add(order_iterator);
		}
		session.close();
		return order;
	}
	
	public void add(Order order){
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(order);
		tx.commit();  
		session.close();
	}
}
