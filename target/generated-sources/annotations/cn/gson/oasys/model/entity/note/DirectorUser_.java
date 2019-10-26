package cn.gson.oasys.model.entity.note;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(DirectorUser.class)
public abstract class DirectorUser_ {

	public static volatile SingularAttribute<DirectorUser, String> catalogName;
	public static volatile SingularAttribute<DirectorUser, Director> director;
	public static volatile SingularAttribute<DirectorUser, User> shareuser;
	public static volatile SingularAttribute<DirectorUser, Long> directorUserId;
	public static volatile SingularAttribute<DirectorUser, Boolean> handle;
	public static volatile SingularAttribute<DirectorUser, User> user;
	public static volatile SingularAttribute<DirectorUser, Date> sharetime;

}

