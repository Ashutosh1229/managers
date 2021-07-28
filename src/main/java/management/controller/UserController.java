package management.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import management.entity.User;
import management.service.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
 
    @ModelAttribute("userLogin")
    public void mapUserLogin(Model theModel) {
    	User theUser = new User();
        theModel.addAttribute("userLogin", theUser);
    }
    
    @RequestMapping(value = "/success-page", method = RequestMethod.GET)
    public String showSuccessPage() {
        return "success";
    }
    
    @RequestMapping("/login")
    public String loginUser(@ModelAttribute("userlogin") User theUser,Model theModel,HttpServletRequest request, HttpServletResponse response) {	
        		
        	if(userService.validateUser(theUser,theModel)) {
            	HttpSession session = request.getSession();
            	session.setAttribute("username", theUser.getUsername()); 
            	return "redirect:/success-page";

            }
            else {
            	return "login.jsp";
            }        
    }
    
    
    @RequestMapping("/logout")
    public String logoutUser(HttpServletRequest request, HttpServletResponse response) {	

		HttpSession session = request.getSession(false);
		session.setAttribute("username", null);
		session.invalidate();
		return "redirect:/login";
    }

}
