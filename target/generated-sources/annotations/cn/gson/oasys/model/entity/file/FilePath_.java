package cn.gson.oasys.model.entity.file;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(FilePath.class)
public abstract class FilePath_ {

	public static volatile SingularAttribute<FilePath, String> pathName;
	public static volatile SingularAttribute<FilePath, Long> pathIstrash;
	public static volatile SingularAttribute<FilePath, Long> id;
	public static volatile SingularAttribute<FilePath, Long> pathUserId;
	public static volatile SingularAttribute<FilePath, Long> parentId;
	public static volatile ListAttribute<FilePath, FileList> fileList;

}

