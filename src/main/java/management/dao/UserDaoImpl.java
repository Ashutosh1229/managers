package management.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import management.entity.User;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
    private SessionFactory sessionFactory;

    
    public boolean validateUser(User theUser, Model theModel) {
    	User check = null;
        Session currentSession = sessionFactory.getCurrentSession();
        check = (User) currentSession.createQuery("FROM User U WHERE U.username = :userName")
    			.setParameter("userName", theUser.getUsername())
                .uniqueResult();
           
        	if(check == null) {
        		theModel.addAttribute("msg", "");
                return false;	
        	}
        	else if (check != null && check.getPassword().equals(theUser.getPassword())) {
                return true;
            }             
        	else {
        		theModel.addAttribute("msg", "wrong username or password");
        		return false;
        	}
        
    }


}

