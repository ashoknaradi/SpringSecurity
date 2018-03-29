package Controllers;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Daos.ConnectionDao;
import Pojos.TestUser;

@Controller
public class HomeController {

	@Autowired
	ConnectionDao dao;

	@RequestMapping(value = "jspRegController")
	public String jspRegController(TestUser testUser) {
		return "Register";
	}
	
	@RequestMapping(value = "jspLoginController")
	public String jspLoginController(TestUser testUser) {
		return "Login";
	}
	
	@RequestMapping(value = "loginController", method = RequestMethod.GET)
	public String loginDetails(@RequestParam("email") String email, @RequestParam("password") String password,
			Model model) {
		System.out.println("Entered into Login page Controller");
		if (email != null & password != null) {
			Session session = dao.openSession();// will get one connection
			Query query = session.createQuery("from TestUser where email=:email and password=:password");
			query.setParameter("email", email);
			query.setParameter("password", password);
			List<TestUser> list = query.list();
			session.close();
			for (TestUser user : list) {
				if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
					model.addAttribute("msg", "Welcome " + user.getName());
					return "Home";
				} else {
					model.addAttribute("error", "Invalid User Details");
					return "Login";
				}
			}
		} else {
			model.addAttribute("error", "Invalid User Details");
			return "Login";
		}
		model.addAttribute("error", "Invalid User Details");
		return "Login";
	}
	
	@RequestMapping(value = "registerController")
	public String registerController(TestUser testUser) {
		dao.regUser(testUser);
		return "Home";
	}
	
	@RequestMapping(value = "fetchController")
	public String fetchController(Model model) {
		model.addAttribute("UserDetails", dao.fetchUsersList());
		return "Fetch";
	}
	
	@RequestMapping(value = "loginSecurity")
	public String loginSecurity() {
		return "Login_Security";
	}
	
	@RequestMapping(value = "defaultPage")
	public String defaultLogoutPage() {
		return "Home";
	}
	
	@RequestMapping(value = "loginFail")
	public String loginFail(Model model) {
		model.addAttribute("ErrorMessage", "Login Failed!.... Please provide valid details");
		return "LoginFail";
	}
}