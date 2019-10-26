package cn.gson.oasys.model.entity.task;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Tasklist.class)
public abstract class Tasklist_ {

	public static volatile SingularAttribute<Tasklist, Boolean> cancel;
	public static volatile SingularAttribute<Tasklist, String> ticking;
	public static volatile SingularAttribute<Tasklist, Date> publishTime;
	public static volatile SingularAttribute<Tasklist, String> title;
	public static volatile SingularAttribute<Tasklist, Date> starTime;
	public static volatile SingularAttribute<Tasklist, Date> modifyTime;
	public static volatile SingularAttribute<Tasklist, Boolean> top;
	public static volatile SingularAttribute<Tasklist, Integer> statusId;
	public static volatile SingularAttribute<Tasklist, User> usersId;
	public static volatile SingularAttribute<Tasklist, String> taskDescribe;
	public static volatile SingularAttribute<Tasklist, Long> typeId;
	public static volatile SingularAttribute<Tasklist, String> comment;
	public static volatile SingularAttribute<Tasklist, Date> endTime;
	public static volatile SingularAttribute<Tasklist, String> reciverlist;
	public static volatile SingularAttribute<Tasklist, Long> taskId;

}

