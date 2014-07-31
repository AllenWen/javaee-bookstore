package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojo.Book;
import pojo.Cart;
import pojo.User;

public class CartDaoImpl extends HibernateDaoSupport implements CartDao {

	public List<Cart> getbyid(String current_id){
		List<Cart> cart = new  ArrayList();
		List<String> bookname=new ArrayList();
		List<Integer> remain=new ArrayList();
		String hql= "from Cart cart where cart.userId ='"+current_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		//获取查询结果cart
		List<Cart> list=query.list();
		Iterator<Cart> it=list.iterator(); 
		while(it.hasNext()){      
			Cart cart_it=it.next();
			cart.add(cart_it);
		}    
		//获取book_name
		Iterator<Cart> ite=cart.iterator();
		while(ite.hasNext()){
			Cart cart_iterator=ite.next();
			//System.out.println(cart_iterator.getBookName());
			bookname.add(cart_iterator.getBookName());
		}
		//获取remain
		Iterator<String> iter=bookname.iterator();
		while(iter.hasNext()){
			String book_name=iter.next();
			String  hql_it="from Book book where book.bookName ='"+book_name+"'";
			Query query_it=session.createQuery(hql_it);
			List<Book> list_it=query_it.list();
			Iterator<Book> iterator=list_it.iterator(); 
			while(iterator.hasNext()){
				Book book_it=iterator.next();
				//System.out.println(book_it.getRemain());
				remain.add(book_it.getRemain());
			}
		}
		//设置最新余量
		Iterator<Cart> itera=cart.iterator();
		Iterator<Integer> iterat=remain.iterator();
		while(itera.hasNext()&iterat.hasNext()){
			itera.next().setRemain(iterat.next());
		}
		session.close();
		return cart;
	}
	
	public String add(Cart cart){
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		List<Cart> cart_add = new  ArrayList();
		String hql= "from Cart cart where cart.userId ='"+action.UserAction.current_id+"'";
		Query query=session.createQuery(hql);
		List<Cart> list=query.list();
		Iterator<Cart> it=list.iterator(); 
		while(it.hasNext()){      
			if(it.next().getBookName().equals(cart.getBookName()))
				return "error";		
		}    
		Transaction tx = session.beginTransaction();
		session.save(cart);
		tx.commit();  
		session.close();
		return "success";
	}
	
	public String delete(String book_name){
		String hql= "delete from Cart cart where cart.bookName ='"+book_name+"'and cart.userId='"+action.UserAction.current_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query=session.createQuery(hql);
		query.executeUpdate();
		tx.commit();
		session.close();
		return "success";
	}
	
	public String clear(String current_id){
		String hql= "delete from Cart cart where cart.userId ='"+current_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query=session.createQuery(hql);
		query.executeUpdate();
		tx.commit();
		session.close();
		return "success";
	}
	
}
