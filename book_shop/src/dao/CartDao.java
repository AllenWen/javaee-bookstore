package dao;

import java.util.List;
import pojo.Cart;

public interface CartDao {
	public List<Cart> getbyid(String current_id);
	public String add(Cart cart);
	public String delete(String book_name);
	public String clear(String current_id);
}
