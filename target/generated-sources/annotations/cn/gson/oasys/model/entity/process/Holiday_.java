package cn.gson.oasys.model.entity.process;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Holiday.class)
public abstract class Holiday_ {

	public static volatile SingularAttribute<Holiday, Double> leaveDays;
	public static volatile SingularAttribute<Holiday, ProcessList> proId;
	public static volatile SingularAttribute<Holiday, String> personnelAdvice;
	public static volatile SingularAttribute<Holiday, Long> typeId;
	public static volatile SingularAttribute<Holiday, String> managerAdvice;
	public static volatile SingularAttribute<Holiday, Long> holidayId;

}

