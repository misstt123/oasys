package cn.gson.oasys.model.entity.system;

import javax.persistence.*;

@Entity
@Table(name="aoa_type_list")
public class SystemTypeList {
	
	@Id
	@Column(name="type_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long typeId;			//类型id
	
	@Column(name="type_name")
	private String typeName;		//类型名字
	
	@Column(name="sort_value")
	private Integer typeSortValue;	//排序值
	
	@Column(name="type_model")
	private String typeModel;		//所属模块
	
	@Column(name="type_color")
	private String typeColor;		//类型颜色
}
