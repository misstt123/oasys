package cn.gson.oasys.model.entity.process;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Traffic.class)
public abstract class Traffic_ {

	public static volatile SingularAttribute<Traffic, String> seatType;
	public static volatile SingularAttribute<Traffic, Date> departTime;
	public static volatile SingularAttribute<Traffic, String> trafficName;
	public static volatile SingularAttribute<Traffic, String> reachName;
	public static volatile SingularAttribute<Traffic, Double> trafficMoney;
	public static volatile SingularAttribute<Traffic, Long> trafficId;
	public static volatile SingularAttribute<Traffic, EvectionMoney> evection;
	public static volatile SingularAttribute<Traffic, User> user;
	public static volatile SingularAttribute<Traffic, String> departName;

}

