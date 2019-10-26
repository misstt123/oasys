package cn.gson.oasys.model.entity.attendce;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Attends.class)
public abstract class Attends_ {

	public static volatile SingularAttribute<Attends, Date> attendsTime;
	public static volatile SingularAttribute<Attends, String> attendsRemark;
	public static volatile SingularAttribute<Attends, Long> statusId;
	public static volatile SingularAttribute<Attends, Double> holidayDays;
	public static volatile SingularAttribute<Attends, String> attendHmtime;
	public static volatile SingularAttribute<Attends, Long> typeId;
	public static volatile SingularAttribute<Attends, String> weekOfday;
	public static volatile SingularAttribute<Attends, Long> attendsId;
	public static volatile SingularAttribute<Attends, Date> holidayStart;
	public static volatile SingularAttribute<Attends, User> user;
	public static volatile SingularAttribute<Attends, String> attendsIp;

}

