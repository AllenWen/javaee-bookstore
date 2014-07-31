package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import pojo.Book;

public class BookDaoImpl extends HibernateDaoSupport implements BookDao{
	
	public String add(Book book){
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(book);
		tx.commit();  
		session.close();
		return "success";
	}
	
	public String update(Book book){
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.update(book);
		tx.commit();  
		session.close();
		return "success";
	}
	
	public String delete(String book_id){
		String hql= "delete from Book book where book.bookId ='"+book_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query=session.createQuery(hql);
		query.executeUpdate();
		tx.commit();
		session.close();
		return "success";
	}
	
	public List <Book> getbyid(String book_id){
		List<Book> book = new  ArrayList();
		String hql= "from Book book where book.bookId ='"+book_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Book> list=query.list();
		Iterator<Book> it=list.iterator(); 
		while(it.hasNext()){      
			Book book_iterator=it.next();
			book.add(book_iterator);
		}
		session.close();
		return book;
	}
	
	public List <Book> getAll(){
		List<Book> book = new  ArrayList();
		String hql= "from Book";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Book> list=query.list();
		Iterator<Book> it=list.iterator(); 
		while(it.hasNext()){      
			Book book_iterator=it.next();
			book.add(book_iterator);
		}
		session.close();
		return book;
	}
	

	public List <Book> getbyname(String keyword){
		List<Book> book = new  ArrayList();
		String hql= "from Book book where book.bookName ='"+keyword+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Book> list=query.list();
		Iterator<Book> it=list.iterator(); 
		while(it.hasNext()){      
			Book book_iterator=it.next();
			book.add(book_iterator);
		}
		session.close();
		return book;
	}
	
	public List <Book> getbyauthor(String keyword){
		List<Book> book = new  ArrayList();
		String hql= "from Book book where book.author ='"+keyword+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Book> list=query.list();
		Iterator<Book> it=list.iterator(); 
		while(it.hasNext()){      
			Book book_iterator=it.next();
			book.add(book_iterator);
		}
		session.close();
		return book;
	}
	
	public List <Book> getbytype(String keyword){
		List<Book> book = new  ArrayList();
		String hql= "from Book book where book.type ='"+keyword+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Book> list=query.list();
		Iterator<Book> it=list.iterator(); 
		while(it.hasNext()){      
			Book book_iterator=it.next();
			book.add(book_iterator);
		}
		session.close();
		return book;
	}
	
}
