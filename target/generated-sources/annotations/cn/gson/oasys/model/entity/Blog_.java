package cn.gson.oasys.model.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Blog.class)
public abstract class Blog_ {

	public static volatile SingularAttribute<Blog, String> img;
	public static volatile SingularAttribute<Blog, String> intro;
	public static volatile SingularAttribute<Blog, String> keybody;
	public static volatile SingularAttribute<Blog, Date> time;
	public static volatile SingularAttribute<Blog, String> title;
	public static volatile SingularAttribute<Blog, Integer> type;
	public static volatile SingularAttribute<Blog, Integer> userid;
	public static volatile SingularAttribute<Blog, Integer> tid;
	public static volatile SingularAttribute<Blog, String> content;

}

