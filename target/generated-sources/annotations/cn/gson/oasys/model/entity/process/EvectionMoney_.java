package cn.gson.oasys.model.entity.process;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(EvectionMoney.class)
public abstract class EvectionMoney_ {

	public static volatile SingularAttribute<EvectionMoney, String> financialAdvice;
	public static volatile SingularAttribute<EvectionMoney, Double> money;
	public static volatile SingularAttribute<EvectionMoney, Long> evectionmoneyId;
	public static volatile SingularAttribute<EvectionMoney, ProcessList> proId;
	public static volatile SingularAttribute<EvectionMoney, String> name;
	public static volatile SingularAttribute<EvectionMoney, Long> pro;
	public static volatile SingularAttribute<EvectionMoney, String> managerAdvice;
	public static volatile ListAttribute<EvectionMoney, Traffic> traffic;
	public static volatile ListAttribute<EvectionMoney, Stay> stay;

}

