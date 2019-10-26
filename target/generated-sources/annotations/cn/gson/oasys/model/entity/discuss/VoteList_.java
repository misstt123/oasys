package cn.gson.oasys.model.entity.discuss;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(VoteList.class)
public abstract class VoteList_ {

	public static volatile SingularAttribute<VoteList, Integer> selectone;
	public static volatile SingularAttribute<VoteList, Date> startTime;
	public static volatile SingularAttribute<VoteList, Long> voteId;
	public static volatile SingularAttribute<VoteList, Date> endTime;
	public static volatile SetAttribute<VoteList, VoteTitles> voteTitles;
	public static volatile SingularAttribute<VoteList, Discuss> discuss;

}

