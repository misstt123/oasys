package cn.gson.oasys.model.entity.task;

import cn.gson.oasys.model.entity.user.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Taskuser.class)
public abstract class Taskuser_ {

	public static volatile SingularAttribute<Taskuser, Long> pkId;
	public static volatile SingularAttribute<Taskuser, Integer> statusId;
	public static volatile SingularAttribute<Taskuser, User> userId;
	public static volatile SingularAttribute<Taskuser, Tasklist> taskId;

}

