package cn.gson.oasys.model.entity.process;

import cn.gson.oasys.model.entity.user.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Resign.class)
public abstract class Resign_ {

	public static volatile SingularAttribute<Resign, String> financialAdvice;
	public static volatile SingularAttribute<Resign, ProcessList> proId;
	public static volatile SingularAttribute<Resign, String> personnelAdvice;
	public static volatile SingularAttribute<Resign, Boolean> finish;
	public static volatile SingularAttribute<Resign, String> nofinish;
	public static volatile SingularAttribute<Resign, Long> resignId;
	public static volatile SingularAttribute<Resign, String> suggest;
	public static volatile SingularAttribute<Resign, String> managerAdvice;
	public static volatile SingularAttribute<Resign, User> handUser;

}

