package dao;

import java.util.List;
import pojo.Order;

public interface OrderDao {
	public List <Order> getAll();
	public List <Order> getbyid(String current_id);
	public void add(Order order);
}
