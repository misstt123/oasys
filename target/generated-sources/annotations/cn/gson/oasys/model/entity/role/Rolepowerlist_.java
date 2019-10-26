package cn.gson.oasys.model.entity.role;

import cn.gson.oasys.model.entity.system.SystemMenu;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Rolepowerlist.class)
public abstract class Rolepowerlist_ {

	public static volatile SingularAttribute<Rolepowerlist, Long> pkId;
	public static volatile SingularAttribute<Rolepowerlist, Role> roleId;
	public static volatile SingularAttribute<Rolepowerlist, SystemMenu> menuId;
	public static volatile SingularAttribute<Rolepowerlist, Boolean> check;

}

