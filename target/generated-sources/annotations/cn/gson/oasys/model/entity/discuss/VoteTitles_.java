package cn.gson.oasys.model.entity.discuss;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(VoteTitles.class)
public abstract class VoteTitles_ {

	public static volatile SingularAttribute<VoteTitles, String> color;
	public static volatile SingularAttribute<VoteTitles, Long> titleId;
	public static volatile SingularAttribute<VoteTitles, VoteList> voteList;
	public static volatile SingularAttribute<VoteTitles, String> title;
	public static volatile SetAttribute<VoteTitles, VoteTitleUser> voteTitleUsers;

}

