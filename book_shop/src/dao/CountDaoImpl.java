package dao;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojo.Book;
import pojo.Cart;
import pojo.CountId;
import pojo.Order;

public class CountDaoImpl extends HibernateDaoSupport implements CountDao {

	public OrderDao orderdao;
	public CartDao cartdao;
	public static int length=0;
	public static String detail="";
	public static float total_price=0;
	public static String curDate="";
	public static String bookname[]=new String[20];
	public static int sl[]=new int[20];
		
	public List<CountId> count(String nums){	
		int i=6,j=0;
		List<CountId> count=new  ArrayList();
		CountId con=new CountId();
		length=(nums.length()-1)/8;
		int s[] = new int[length];
		String bk[]=new String[length];
		float[] prices=new float[length];
		
		while(i<nums.length()-2){
			s[j]=(int)nums.charAt(i)-48;
			sl[j]=s[j];
			j++;
			i=i+8;
		}
		j=0;
		
		String hql= "from Cart cart where cart.userId='"+action.UserAction.current_id+"'";
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery(hql);
		List<Cart> list=query.list();
		Iterator<Cart> it=list.iterator(); 
		while(it.hasNext()){      
			Cart cart=it.next();
			bk[j]=cart.getBookName();
			System.out.println(bk[j]);
			prices[j]=cart.getPrice();
			total_price=total_price+prices[j]*s[j];
			j++;
		}
		System.out.println("总价"+total_price+"元");

		for(j=0;j<bk.length;j++){
			if(s[j]!=0){
				bookname[j]=bk[j];
				detail=detail+"《"+bk[j]+"》;";
			}
		}
		j=0;
		
		Calendar c=Calendar.getInstance();
		SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		curDate = sim.format(c.getTime()); 
		String total_price_str=String.valueOf(total_price);
		con.setDetail(detail);
		con.setCurDate(curDate);
		con.setTotalPriceStr(total_price_str);
		count.add(con);
		
		return count;
	}

	public String pay(){
		int j=0;
		int [] remain=new int[length];
		ApplicationContext ac =new ClassPathXmlApplicationContext("applicationContext.xml");
		orderdao=(OrderDao)ac.getBean("OrderDao");
		Timestamp ts = new Timestamp(System.currentTimeMillis());   
		ts = Timestamp.valueOf(curDate);
		System.out.println(ts);
		Order order=new Order(action.UserAction.current_id,ts,total_price,detail);
		orderdao.add(order);
		
		while(j<length){
			String hql= "from Book book where book.bookName ='"+bookname[j]+"'";
			Session session=this.getHibernateTemplate().getSessionFactory().openSession();
			Query query=session.createQuery(hql);
			List<Book> list=query.list();
			Iterator<Book> it=list.iterator(); 
			while(it.hasNext()){      
				remain[j]=it.next().getRemain()-sl[j];
			}    
			j++;
		}
		j=0;
		
		while(j<length){
			String hql= "update Book book set book.remain='"+remain[j]+"'  where book.bookName ='"+bookname[j]+"'";
			Session session=this.getHibernateTemplate().getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			Query query=session.createQuery(hql);
			query.executeUpdate();
			tx.commit();
			j++;
		}
		
		ApplicationContext act =new ClassPathXmlApplicationContext("applicationContext.xml");
		cartdao=(CartDao)act.getBean("CartDao");
		cartdao.clear(action.UserAction.current_id);
		
		length=0;
		detail="";
		total_price=0;
		curDate="";
		bookname=new String[20];
		sl=new int[20];
		return "success";
	}
	
	public String cancel(){
		length=0;
		detail="";
		total_price=0;
		curDate="";
		bookname=new String[20];
		sl=new int[20];
		return "success";
	}

	
}
