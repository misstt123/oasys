package cn.gson.oasys.model.entity.user;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(UserLog.class)
public abstract class UserLog_ {

	public static volatile SingularAttribute<UserLog, Long> id;
	public static volatile SingularAttribute<UserLog, String> title;
	public static volatile SingularAttribute<UserLog, User> user;
	public static volatile SingularAttribute<UserLog, String> ipAddr;
	public static volatile SingularAttribute<UserLog, String> url;
	public static volatile SingularAttribute<UserLog, Date> logTime;

}

