package cn.gson.oasys.model.entity.mail;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Inmaillist.class)
public abstract class Inmaillist_ {

	public static volatile SingularAttribute<Inmaillist, String> mailTitle;
	public static volatile SingularAttribute<Inmaillist, User> mailUserid;
	public static volatile SingularAttribute<Inmaillist, Boolean> star;
	public static volatile SingularAttribute<Inmaillist, Mailnumber> mailNumberid;
	public static volatile SingularAttribute<Inmaillist, Boolean> del;
	public static volatile SingularAttribute<Inmaillist, String> content;
	public static volatile SingularAttribute<Inmaillist, Boolean> push;
	public static volatile SingularAttribute<Inmaillist, Long> mailType;
	public static volatile SingularAttribute<Inmaillist, Attachment> mailFileid;
	public static volatile SingularAttribute<Inmaillist, Long> mailStatusid;
	public static volatile SingularAttribute<Inmaillist, String> inReceiver;
	public static volatile SingularAttribute<Inmaillist, Long> mailId;
	public static volatile SingularAttribute<Inmaillist, Date> mailCreateTime;

}

