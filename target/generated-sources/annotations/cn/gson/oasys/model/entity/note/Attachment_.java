package cn.gson.oasys.model.entity.note;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Attachment.class)
public abstract class Attachment_ {

	public static volatile SingularAttribute<Attachment, Long> attachmentSize;
	public static volatile SingularAttribute<Attachment, String> attachmentType;
	public static volatile SingularAttribute<Attachment, String> attachmentShuffix;
	public static volatile SingularAttribute<Attachment, String> attachmentName;
	public static volatile SingularAttribute<Attachment, String> model;
	public static volatile SingularAttribute<Attachment, Long> attachmentId;
	public static volatile SingularAttribute<Attachment, Date> uploadTime;
	public static volatile SingularAttribute<Attachment, String> userId;
	public static volatile SingularAttribute<Attachment, String> attachmentPath;

}

