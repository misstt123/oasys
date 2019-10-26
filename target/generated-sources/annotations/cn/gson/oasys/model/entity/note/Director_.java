package cn.gson.oasys.model.entity.note;

import cn.gson.oasys.model.entity.user.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Director.class)
public abstract class Director_ {

	public static volatile SingularAttribute<Director, String> pinyin;
	public static volatile SingularAttribute<Director, String> phoneNumber;
	public static volatile SingularAttribute<Director, String> address;
	public static volatile SingularAttribute<Director, Long> directorId;
	public static volatile SingularAttribute<Director, Long> attachment;
	public static volatile SingularAttribute<Director, String> companyNumber;
	public static volatile SingularAttribute<Director, String> companyname;
	public static volatile SingularAttribute<Director, String> sex;
	public static volatile SingularAttribute<Director, User> myuser;
	public static volatile SingularAttribute<Director, String> remark;
	public static volatile SingularAttribute<Director, String> userName;
	public static volatile SingularAttribute<Director, String> email;

}

