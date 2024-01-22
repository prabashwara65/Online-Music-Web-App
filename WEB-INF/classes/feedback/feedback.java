package feedback;

public class feedback {
	private int id;
	private String name;
	private String email;
	private String message;
	public feedback(int id, String name, String email, String message) {
	
		this.id = id;
		this.name = name;
		this.email = email;
		this.message = message;
	}
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getMessage() {
		return message;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	

}

	
	
	

