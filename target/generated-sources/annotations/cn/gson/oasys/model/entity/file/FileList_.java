package cn.gson.oasys.model.entity.file;

import cn.gson.oasys.model.entity.user.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(FileList.class)
public abstract class FileList_ {

	public static volatile SingularAttribute<FileList, String> fileShuffix;
	public static volatile SingularAttribute<FileList, String> fileName;
	public static volatile SingularAttribute<FileList, Long> fileIstrash;
	public static volatile SingularAttribute<FileList, Long> size;
	public static volatile SingularAttribute<FileList, Long> fileIsshare;
	public static volatile SingularAttribute<FileList, String> filePath;
	public static volatile SingularAttribute<FileList, String> model;
	public static volatile SingularAttribute<FileList, FilePath> fpath;
	public static volatile SingularAttribute<FileList, Date> uploadTime;
	public static volatile SingularAttribute<FileList, String> contentType;
	public static volatile SingularAttribute<FileList, User> user;
	public static volatile SingularAttribute<FileList, Long> fileId;

}

