package cn.gson.oasys.model.entity.user;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(LoginRecord.class)
public abstract class LoginRecord_ {

	public static volatile SingularAttribute<LoginRecord, Date> loginTime;
	public static volatile SingularAttribute<LoginRecord, String> browser;
	public static volatile SingularAttribute<LoginRecord, Long> id;
	public static volatile SingularAttribute<LoginRecord, String> sessionId;
	public static volatile SingularAttribute<LoginRecord, User> user;
	public static volatile SingularAttribute<LoginRecord, String> ipAddr;

}

