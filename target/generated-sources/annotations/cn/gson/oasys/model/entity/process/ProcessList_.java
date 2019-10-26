package cn.gson.oasys.model.entity.process;

import cn.gson.oasys.model.entity.note.Attachment;
import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(ProcessList.class)
public abstract class ProcessList_ {

	public static volatile SingularAttribute<ProcessList, String> shenuser;
	public static volatile SingularAttribute<ProcessList, Boolean> rejected;
	public static volatile SingularAttribute<ProcessList, Double> procseeDays;
	public static volatile SingularAttribute<ProcessList, User> userId;
	public static volatile SingularAttribute<ProcessList, String> typeNmae;
	public static volatile SingularAttribute<ProcessList, Attachment> proFileid;
	public static volatile SingularAttribute<ProcessList, Long> statusId;
	public static volatile SingularAttribute<ProcessList, Long> processId;
	public static volatile SingularAttribute<ProcessList, String> processName;
	public static volatile SingularAttribute<ProcessList, Long> deeply;
	public static volatile SingularAttribute<ProcessList, Date> startTime;
	public static volatile SingularAttribute<ProcessList, Date> endTime;
	public static volatile SingularAttribute<ProcessList, String> processDescribe;
	public static volatile SingularAttribute<ProcessList, Date> applyTime;

}

