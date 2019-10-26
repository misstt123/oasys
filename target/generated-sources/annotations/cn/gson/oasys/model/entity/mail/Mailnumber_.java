package cn.gson.oasys.model.entity.mail;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Mailnumber.class)
public abstract class Mailnumber_ {

	public static volatile SingularAttribute<Mailnumber, Long> mailType;
	public static volatile SingularAttribute<Mailnumber, User> mailUserId;
	public static volatile SingularAttribute<Mailnumber, String> password;
	public static volatile SingularAttribute<Mailnumber, String> mailUserName;
	public static volatile SingularAttribute<Mailnumber, String> mailAccount;
	public static volatile SingularAttribute<Mailnumber, Long> mailNumberId;
	public static volatile SingularAttribute<Mailnumber, Date> mailCreateTime;
	public static volatile SingularAttribute<Mailnumber, String> mailDes;
	public static volatile SingularAttribute<Mailnumber, Long> status;

}

