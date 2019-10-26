package cn.gson.oasys.model.entity.process;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(DetailsBurse.class)
public abstract class DetailsBurse_ {

	public static volatile SingularAttribute<DetailsBurse, Integer> invoices;
	public static volatile SingularAttribute<DetailsBurse, String> subject;
	public static volatile SingularAttribute<DetailsBurse, Date> produceTime;
	public static volatile SingularAttribute<DetailsBurse, Bursement> burs;
	public static volatile SingularAttribute<DetailsBurse, Long> detailsburseId;
	public static volatile SingularAttribute<DetailsBurse, String> descript;
	public static volatile SingularAttribute<DetailsBurse, Double> detailmoney;

}

