package cn.gson.oasys.model.entity.note;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Note.class)
public abstract class Note_ {

	public static volatile SetAttribute<Note, User> userss;
	public static volatile SingularAttribute<Note, Long> catalogId;
	public static volatile SingularAttribute<Note, Long> statusId;
	public static volatile SingularAttribute<Note, String> receiver;
	public static volatile SingularAttribute<Note, Date> createTime;
	public static volatile SingularAttribute<Note, Long> createmanId;
	public static volatile SingularAttribute<Note, Long> noteId;
	public static volatile SingularAttribute<Note, Long> typeId;
	public static volatile SingularAttribute<Note, String> title;
	public static volatile SingularAttribute<Note, Long> attachId;
	public static volatile SingularAttribute<Note, String> content;
	public static volatile SingularAttribute<Note, Long> isCollected;

}

