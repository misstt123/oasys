package cn.gson.oasys.model.entity.process;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Overtime.class)
public abstract class Overtime_ {

	public static volatile SingularAttribute<Overtime, Long> overtimeId;
	public static volatile SingularAttribute<Overtime, ProcessList> proId;
	public static volatile SingularAttribute<Overtime, String> personnelAdvice;
	public static volatile SingularAttribute<Overtime, Long> typeId;
	public static volatile SingularAttribute<Overtime, String> managerAdvice;

}

