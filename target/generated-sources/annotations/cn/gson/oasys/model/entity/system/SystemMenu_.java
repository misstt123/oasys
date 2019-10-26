package cn.gson.oasys.model.entity.system;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(SystemMenu.class)
public abstract class SystemMenu_ {

	public static volatile SingularAttribute<SystemMenu, Integer> menuGrade;
	public static volatile SingularAttribute<SystemMenu, String> menuUrl;
	public static volatile SingularAttribute<SystemMenu, String> menuIcon;
	public static volatile SingularAttribute<SystemMenu, Integer> sortId;
	public static volatile SingularAttribute<SystemMenu, Boolean> show;
	public static volatile SingularAttribute<SystemMenu, Long> menuId;
	public static volatile SingularAttribute<SystemMenu, String> menuName;
	public static volatile SingularAttribute<SystemMenu, Long> parentId;

}

