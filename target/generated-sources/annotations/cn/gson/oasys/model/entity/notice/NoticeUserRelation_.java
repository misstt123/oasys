package cn.gson.oasys.model.entity.notice;

import cn.gson.oasys.model.entity.user.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(NoticeUserRelation.class)
public abstract class NoticeUserRelation_ {

	public static volatile SingularAttribute<NoticeUserRelation, Long> noticeUserRelatinId;
	public static volatile SingularAttribute<NoticeUserRelation, Boolean> read;
	public static volatile SingularAttribute<NoticeUserRelation, User> userId;
	public static volatile SingularAttribute<NoticeUserRelation, NoticesList> noticeId;

}

