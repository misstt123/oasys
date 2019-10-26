package cn.gson.oasys.model.entity.mail;

import cn.gson.oasys.model.entity.user.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Mailreciver.class)
public abstract class Mailreciver_ {

	public static volatile SingularAttribute<Mailreciver, User> reciverId;
	public static volatile SingularAttribute<Mailreciver, Long> pkId;
	public static volatile SingularAttribute<Mailreciver, Boolean> read;
	public static volatile SingularAttribute<Mailreciver, Boolean> star;
	public static volatile SingularAttribute<Mailreciver, Inmaillist> mailId;
	public static volatile SingularAttribute<Mailreciver, Boolean> del;

}

