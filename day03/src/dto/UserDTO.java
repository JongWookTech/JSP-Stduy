package dto;

public class UserDTO {
	private String userid;
	private String userpw;
	private String usename;
	private int age;
	
	
	
	public UserDTO(String userid, String userpw, String usename, int age) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.usename = usename;
		this.age = age;
	}
	
	
	//private라 getter setter 설정
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getUsename() {
		return usename;
	}

	public void setUsename(String usename) {
		this.usename = usename;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	
}
