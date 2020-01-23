package grit.task2;

import java.util.Map;

public class loginBean {
	private String name;
	private String password;
	private String picture;
	
	static Map<String, String> login = Map.of(
			"Odd", "Restad",
			"Marcus", "Johansson");
	
	public boolean validate() {
		return login.containsKey(name) && login.get(name).equals(password);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
}
