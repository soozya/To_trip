package Board;

import java.util.Date;

//사용자로부터 값을 입력 받는 것
public class BoardCommand {

	int num, readc;
	String title, content;
	Date cdate;

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getReadc() {
		return readc;
	}
	public void setReadc(int readc) {
		this.readc = readc;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}



}
