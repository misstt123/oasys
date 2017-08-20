package cn.gson.oasys.model.entity.system;

import javax.persistence.*;

@Entity
@Table(name="aoa_status_list")
public class SystemStatusList {
	
	@Id
	@Column(name="status_id")
	private Long statusId;			//状态id
	
	@Column(name="status_name")
	private String statusName;		//状态名称
	
	@Column(name="sort_value")
	private Integer statusSortValue;	//状态排序值
	
	@Column(name="status_model")
	private String statusModel;			//状态模块
	
	@Column(name="status_color")
	private String statusColor;		//状态颜色
}
