package cn.gson.oasys.model.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "blog")
public class Blog {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer tid;

	private String title;
	private String intro;
	private String content;
	private String img;
	private Date time;
	private Integer userid;
	private Integer type;
	
	private String keybody;

	public Blog() {
	}

	public Blog(String title, String intro, String content, Date time, Integer userid, String keybody) {
		this.title = title;
		this.intro = intro;
		this.content = content;
		this.time = time;
		this.userid = userid;
		this.keybody = keybody;
	}

	public Blog(String title, String intro, String content, String keybody) {
		this.title = title;
		this.intro = intro;
		this.content = content;
		this.keybody = keybody;
	}

	public Blog(Integer tid, String title, String intro, String content, String img, Date time, Integer userid,
			Integer type, String keybody) {
		super();
		this.tid = tid;
		this.title = title;
		this.intro = intro;
		this.content = content;
		this.img = img;
		this.time = time;
		this.userid = userid;
		this.type = type;
		this.keybody = keybody;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getKeybody() {
		return keybody;
	}

	public void setKeybody(String keybody) {
		this.keybody = keybody;
	}

	@Override
	public String toString() {
		return "Blog [tid=" + tid + ", title=" + title + ", intro=" + intro + ", content=" + content + ", img=" + img
				+ ", time=" + time + ", userid=" + userid + ", type=" + type + ", keybody=" + keybody + "]";
	}

}
