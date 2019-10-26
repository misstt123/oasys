package cn.gson.oasys.model.entity.process;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Stay.class)
public abstract class Stay_ {

	public static volatile SingularAttribute<Stay, Date> leaveTime;
	public static volatile SingularAttribute<Stay, Date> stayTime;
	public static volatile SingularAttribute<Stay, Long> stayId;
	public static volatile SingularAttribute<Stay, Double> stayMoney;
	public static volatile SingularAttribute<Stay, User> user;
	public static volatile SingularAttribute<Stay, String> stayCity;
	public static volatile SingularAttribute<Stay, String> hotelName;
	public static volatile SingularAttribute<Stay, Integer> day;
	public static volatile SingularAttribute<Stay, EvectionMoney> evemoney;

}

