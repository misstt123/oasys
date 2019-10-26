package cn.gson.oasys.model.entity.discuss;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Reply.class)
public abstract class Reply_ {

	public static volatile SetAttribute<Reply, Comment> comments;
	public static volatile SingularAttribute<Reply, Long> replyId;
	public static volatile SingularAttribute<Reply, Date> replayTime;
	public static volatile SingularAttribute<Reply, User> user;
	public static volatile SingularAttribute<Reply, String> content;
	public static volatile SetAttribute<Reply, User> users;
	public static volatile SingularAttribute<Reply, Discuss> discuss;

}

