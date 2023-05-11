package vote.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import vote.usermodel.Userdata;
import vote.usermodel.votedata;



@Component
public class VoteDao
{
	
	@Autowired	
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createregister(@ModelAttribute Userdata userdata)
	{
		this.hibernateTemplate.save(userdata);
		
	}
	
	@Transactional
	public void createvote(votedata vt)
	{
		 this.hibernateTemplate.save(vt);
	}

	
	
	
	
}