package cn.gson.oasys.model.entity.process;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="aoa_notepaper")
public class Notepaper {
	
	
	@Id
	@Column(name="notepaper_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long  notepaperId;			//主键id
	
	private String title;				//便签标题
	
	@Column(columnDefinition="text")	//便签内容
	private String concent;
	
	@Column(name="userId")			
	private Long userId;				//编写便签的用户
	
	@Column(name="create_time")
	private Date createTime;			//便签创建时间
	
}
