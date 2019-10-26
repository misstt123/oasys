package cn.gson.oasys.model.entity.discuss;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Discuss.class)
public abstract class Discuss_ {

	public static volatile SingularAttribute<Discuss, Long> discussId;
	public static volatile SetAttribute<Discuss, Reply> replys;
	public static volatile SingularAttribute<Discuss, Integer> visitNum;
	public static volatile SingularAttribute<Discuss, VoteList> voteList;
	public static volatile SingularAttribute<Discuss, String> title;
	public static volatile SingularAttribute<Discuss, String> content;
	public static volatile SetAttribute<Discuss, User> users;
	public static volatile SingularAttribute<Discuss, Date> modifyTime;
	public static volatile SingularAttribute<Discuss, Long> statusId;
	public static volatile SingularAttribute<Discuss, Date> createTime;
	public static volatile SingularAttribute<Discuss, Long> typeId;
	public static volatile SingularAttribute<Discuss, Integer> attachmentId;
	public static volatile SingularAttribute<Discuss, User> user;

}

