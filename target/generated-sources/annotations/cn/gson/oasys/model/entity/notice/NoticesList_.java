package cn.gson.oasys.model.entity.notice;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(NoticesList.class)
public abstract class NoticesList_ {

	public static volatile SingularAttribute<NoticesList, Date> modifyTime;
	public static volatile SingularAttribute<NoticesList, Long> statusId;
	public static volatile SingularAttribute<NoticesList, Boolean> top;
	public static volatile SingularAttribute<NoticesList, Long> typeId;
	public static volatile SingularAttribute<NoticesList, String> title;
	public static volatile SingularAttribute<NoticesList, Long> userId;
	public static volatile SingularAttribute<NoticesList, Date> noticeTime;
	public static volatile SingularAttribute<NoticesList, Long> noticeId;
	public static volatile SingularAttribute<NoticesList, String> content;
	public static volatile SingularAttribute<NoticesList, String> url;

}

