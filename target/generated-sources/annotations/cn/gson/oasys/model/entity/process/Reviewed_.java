package cn.gson.oasys.model.entity.process;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Reviewed.class)
public abstract class Reviewed_ {

	public static volatile SingularAttribute<Reviewed, Long> reviewedId;
	public static volatile SingularAttribute<Reviewed, Long> statusId;
	public static volatile SingularAttribute<Reviewed, Date> reviewedTime;
	public static volatile SingularAttribute<Reviewed, String> advice;
	public static volatile SingularAttribute<Reviewed, ProcessList> proId;
	public static volatile SingularAttribute<Reviewed, Boolean> del;
	public static volatile SingularAttribute<Reviewed, User> userId;

}

