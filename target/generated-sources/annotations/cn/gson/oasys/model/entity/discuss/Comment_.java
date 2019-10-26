package cn.gson.oasys.model.entity.discuss;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Comment.class)
public abstract class Comment_ {

	public static volatile SingularAttribute<Comment, Long> commentId;
	public static volatile SingularAttribute<Comment, String> comment;
	public static volatile SingularAttribute<Comment, Date> time;
	public static volatile SingularAttribute<Comment, Reply> reply;
	public static volatile SingularAttribute<Comment, User> user;

}

