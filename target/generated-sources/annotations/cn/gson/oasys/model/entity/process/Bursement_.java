package cn.gson.oasys.model.entity.process;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Bursement.class)
public abstract class Bursement_ {

	public static volatile SingularAttribute<Bursement, Double> allMoney;
	public static volatile SingularAttribute<Bursement, String> financialAdvice;
	public static volatile SingularAttribute<Bursement, Integer> allinvoices;
	public static volatile SingularAttribute<Bursement, ProcessList> proId;
	public static volatile SingularAttribute<Bursement, String> name;
	public static volatile SingularAttribute<Bursement, Date> burseTime;
	public static volatile SingularAttribute<Bursement, User> usermoney;
	public static volatile SingularAttribute<Bursement, Long> typeId;
	public static volatile ListAttribute<Bursement, DetailsBurse> details;
	public static volatile SingularAttribute<Bursement, Long> bursementId;
	public static volatile SingularAttribute<Bursement, User> operation;
	public static volatile SingularAttribute<Bursement, String> managerAdvice;

}

