package cn.gson.oasys.model.entity.task;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Tasklogger.class)
public abstract class Tasklogger_ {

	public static volatile SingularAttribute<Tasklogger, String> loggerTicking;
	public static volatile SingularAttribute<Tasklogger, Date> createTime;
	public static volatile SingularAttribute<Tasklogger, Integer> loggerStatusid;
	public static volatile SingularAttribute<Tasklogger, Long> loggerId;
	public static volatile SingularAttribute<Tasklogger, Tasklist> taskId;
	public static volatile SingularAttribute<Tasklogger, String> username;

}

