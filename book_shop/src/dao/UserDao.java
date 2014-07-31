package dao;

import java.util.List;
import pojo.User;

public interface UserDao {
	public String login(String user_id,String password);
	public String register(User user);
	public String update(User user);
	public String delete(String user_id);
	public List <User> getbyid(String user_id);
	public List <User> getAll();
}
