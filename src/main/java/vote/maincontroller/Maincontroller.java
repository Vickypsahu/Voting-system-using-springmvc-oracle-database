package vote.maincontroller;

import org.hibernate.query.Query;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import vote.dao.VoteDao;
import vote.usermodel.Userdata;
import vote.usermodel.votedata;

@Controller
public class Maincontroller {
	@Autowired
	private VoteDao voteDao;
	@Autowired
	private SessionFactory factory;

	// Anchor tag request
	@RequestMapping("/log")
	public String loginpage() {
		return "Login";
	}

	@RequestMapping("/reg")
	public String registerpage() {
		return "Registration";
	}
	
	@RequestMapping("/admin")
	public String adminpage() {
		return "Adminlogin";
	}


	// Registration form action
	@RequestMapping(value = "/registerform", method = RequestMethod.POST)
	public String registerform(@ModelAttribute Userdata userdata, Model m) {
		Userdata u = null;
		String Name = userdata.getUsername();
		Session session = factory.openSession();
		session.beginTransaction();
		String hql = "from Userdata where username=: name";
		Query q = session.createQuery(hql);
		q.setParameter("name", Name);
		u = (Userdata) q.uniqueResult();
		session.close();
		if (u != null) {
			m.addAttribute("msg", "Username already exists");
			m.addAttribute("username", Name);
			return "Registration";
		}

		else {
			m.addAttribute("username", Name);
			voteDao.createregister(userdata);
			return "voting";
		}
	}

//Login form action 

	@RequestMapping(value = "/loginform", method = RequestMethod.POST)
	public String loginform(@ModelAttribute Userdata user, Model m,HttpServletRequest request) {
		Userdata us = null;
		HttpSession s=request.getSession(false);
		//s.setAttribute("success", "");
		s.invalidate();
		String name = user.getUsername();
		String pass = user.getPassword();
		Session session = factory.openSession();
		session.beginTransaction();
		String hql = "from Userdata where username=: name and password=: pass";
		@SuppressWarnings("rawtypes")
		Query q = session.createQuery(hql);
		q.setParameter("name", name);
		q.setParameter("pass", pass);
		us = (Userdata) q.uniqueResult();
		session.close();
		if (us != null) {
			m.addAttribute("username", name);

			return "voting";
		} else {
			m.addAttribute("message", "Invalid username password ");
			return "Login";
		}

	}

//Voting form action 
	@RequestMapping(value="/votingform/{username}")
	public RedirectView votepage(@RequestParam String vote, @PathVariable("username") String username, Model model,HttpServletRequest request) {
		//if (vote == null) {
			//model.addAttribute("nullmessage", "Please select the candidate");
			//return "voting";
		//}
		Session session = factory.openSession();
		session.beginTransaction();
		String hql = "from votedata where username=:username";
		Query q = session.createQuery(hql);
		q.setParameter("username", username);
		votedata v = (votedata) q.uniqueResult();
		session.close();
		RedirectView redirectview=new RedirectView();
		HttpSession s=request.getSession();
		if (v != null) {
			//model.addAttribute("voted", "You have already voted");
			s.setAttribute("voted", "You have already voted");
			redirectview.setUrl(request.getContextPath()+"/log");
			return redirectview;
		} else {
			votedata vt = new votedata();
			vt.setUsername(username);
			vt.setVote(vote);
			s.setAttribute("success", "Your voting record successfully");
			//model.addAttribute("success", "Your voting record successfully");
			voteDao.createvote(vt);
			redirectview.setUrl(request.getContextPath()+"/log");
			return redirectview;

		}
	}

//Admin form action 

	@RequestMapping(value="/adminform", method=RequestMethod.POST)
	public String adminform(@RequestParam String username,@RequestParam String password,Model m) {
	
    if(username.equals("admin") && password.equals("admin"))
    		{
    	Session session=factory.openSession();
    	session.beginTransaction();
    	String hql="select vote,count(vote) from votedata group by vote";
    	Query q=session.createQuery(hql);
    	List<Object[]> row=q.list();
    	row.forEach(item->
    	System.out.println("Category : "+item[0]+"\t count : "+item[1] ));    	
    	m.addAttribute("votedata",row);
    	return "viewall";
    		}
    else
    {
    	m.addAttribute("msg","Invalid username password");
    	return "Adminlogin";
    }

	
	
	
	}
}
