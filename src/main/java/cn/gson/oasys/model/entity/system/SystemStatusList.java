package cn.gson.oasys.model.entity.system;

import javax.persistence.*;

/**
 * 系统状态总表
 * 
 * @author luoxiang
 *
 */
@Entity
@Table(name = "aoa_status_list")
public class SystemStatusList {

	@Id
	@Column(name = "status_id")
	private Long statusId; // 状态id

	@Column(name = "status_name")
	private String statusName; // 状态名称

	@Column(name = "sort_value")
	private Integer statusSortValue; // 状态排序值

	@Column(name = "status_model")
	private String statusModel; // 状态模块

	@Column(name = "status_color")
	private String statusColor; // 状态颜色

	public SystemStatusList() {
	}

	public Long getStatusId() {
		return statusId;
	}

	public void setStatusId(Long statusId) {
		this.statusId = statusId;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public Integer getStatusSortValue() {
		return statusSortValue;
	}

	public void setStatusSortValue(Integer statusSortValue) {
		this.statusSortValue = statusSortValue;
	}

	public String getStatusModel() {
		return statusModel;
	}

	public void setStatusModel(String statusModel) {
		this.statusModel = statusModel;
	}

	public String getStatusColor() {
		return statusColor;
	}

	public void setStatusColor(String statusColor) {
		this.statusColor = statusColor;
	}

	@Override
	public String toString() {
		return "SystemStatusList [statusId=" + statusId + ", statusName=" + statusName + ", statusSortValue="
				+ statusSortValue + ", statusModel=" + statusModel + ", statusColor=" + statusColor + "]";
	}

}
