package cn.gson.oasys.model.entity.discuss;

import cn.gson.oasys.model.entity.user.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(VoteTitleUser.class)
public abstract class VoteTitleUser_ {

	public static volatile SingularAttribute<VoteTitleUser, Long> voteTitleUserId;
	public static volatile SingularAttribute<VoteTitleUser, Long> voteId;
	public static volatile SingularAttribute<VoteTitleUser, VoteTitles> voteTitles;
	public static volatile SingularAttribute<VoteTitleUser, User> user;

}

