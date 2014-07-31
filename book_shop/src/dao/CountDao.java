package dao;

import java.util.List;
import pojo.CountId;

public interface CountDao {
	public List<CountId> count(String nums);
	public String pay();
	public String cancel();
}
