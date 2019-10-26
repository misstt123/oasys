package cn.gson.oasys.model.entity.plan;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Plan.class)
public abstract class Plan_ {

	public static volatile SingularAttribute<Plan, String> planComment;
	public static volatile SingularAttribute<Plan, String> planSummary;
	public static volatile SingularAttribute<Plan, String> label;
	public static volatile SingularAttribute<Plan, String> title;
	public static volatile SingularAttribute<Plan, Long> statusId;
	public static volatile SingularAttribute<Plan, Date> createTime;
	public static volatile SingularAttribute<Plan, String> planContent;
	public static volatile SingularAttribute<Plan, Long> planId;
	public static volatile SingularAttribute<Plan, Long> typeId;
	public static volatile SingularAttribute<Plan, Date> startTime;
	public static volatile SingularAttribute<Plan, Date> endTime;
	public static volatile SingularAttribute<Plan, Long> attachId;
	public static volatile SingularAttribute<Plan, User> user;

}

