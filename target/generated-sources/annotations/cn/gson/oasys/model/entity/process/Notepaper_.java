package cn.gson.oasys.model.entity.process;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Notepaper.class)
public abstract class Notepaper_ {

	public static volatile SingularAttribute<Notepaper, String> concent;
	public static volatile SingularAttribute<Notepaper, Date> createTime;
	public static volatile SingularAttribute<Notepaper, Long> notepaperId;
	public static volatile SingularAttribute<Notepaper, String> title;
	public static volatile SingularAttribute<Notepaper, User> userId;

}

