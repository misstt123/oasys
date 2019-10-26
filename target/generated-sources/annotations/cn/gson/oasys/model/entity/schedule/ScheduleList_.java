package cn.gson.oasys.model.entity.schedule;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(ScheduleList.class)
public abstract class ScheduleList_ {

	public static volatile SingularAttribute<ScheduleList, Long> statusId;
	public static volatile SingularAttribute<ScheduleList, Date> createTime;
	public static volatile SingularAttribute<ScheduleList, Boolean> isRemind;
	public static volatile SingularAttribute<ScheduleList, Long> rcId;
	public static volatile SingularAttribute<ScheduleList, Long> typeId;
	public static volatile SingularAttribute<ScheduleList, Date> startTime;
	public static volatile SingularAttribute<ScheduleList, Boolean> isreminded;
	public static volatile SingularAttribute<ScheduleList, Date> endTime;
	public static volatile SingularAttribute<ScheduleList, String> describe;
	public static volatile SingularAttribute<ScheduleList, String> title;
	public static volatile SingularAttribute<ScheduleList, User> user;
	public static volatile ListAttribute<ScheduleList, User> users;

}

