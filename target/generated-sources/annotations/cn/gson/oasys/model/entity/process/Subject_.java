package cn.gson.oasys.model.entity.process;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Subject.class)
public abstract class Subject_ {

	public static volatile SingularAttribute<Subject, String> name;
	public static volatile SingularAttribute<Subject, Long> subjectId;
	public static volatile SingularAttribute<Subject, Long> parentId;

}

