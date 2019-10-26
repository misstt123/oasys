package cn.gson.oasys.model.entity.system;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(SystemStatusList.class)
public abstract class SystemStatusList_ {

	public static volatile SingularAttribute<SystemStatusList, Long> statusId;
	public static volatile SingularAttribute<SystemStatusList, String> statusColor;
	public static volatile SingularAttribute<SystemStatusList, String> statusModel;
	public static volatile SingularAttribute<SystemStatusList, String> statusName;
	public static volatile SingularAttribute<SystemStatusList, String> statusPrecent;
	public static volatile SingularAttribute<SystemStatusList, Integer> statusSortValue;

}

