/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CL;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;
/**
 *
 * @author paul
 */
public class LoginServlet extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // Set content type
        response.setContentType("text/html;charset=UTF-8");
        
        // Get variables from form
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Set default url destination
        String url = "/login_failure.html";
        
        User u = UserDB.selectUser(username);

        //String salt = u.getSalt();
        //String saltedAndHashedPassword = u.getSaltedAndHashedPassword();
        
                // hash and salt password
        String hashedPassword;
        String salt = "";
        String saltedAndHashedPassword;
        try {
            hashedPassword = PasswordUtil.hashPassword(password);
            salt = u.getSalt();
            saltedAndHashedPassword = PasswordUtil.hashPassword(password + salt);                    
            
        } catch (NoSuchAlgorithmException ex) {
            hashedPassword = ex.getMessage();
            saltedAndHashedPassword = ex.getMessage();
        }
        request.setAttribute("hashedPassword", hashedPassword);
        request.setAttribute("salt", salt);
        request.setAttribute("saltedAndHashedPassword", saltedAndHashedPassword);
        
        // Error :(
        //Account a = AccountDB.selectAccount(u.getUserID());
        // Throws exception state field path a.userid cannot be resolved to a valid type
        //Account account = AccountDB.selectAccount(u.getUserID(), );
        
        //if (username.equalsIgnoreCase("jsmith@toba.com") && password.equals("letmein"))
        if (username.equalsIgnoreCase(u.getUserName()) && saltedAndHashedPassword.equals(u.getSaltedAndHashedPassword()))
        {
            HttpSession session = request.getSession();
            session.setAttribute("user", u);
            //session.setAttribute("account", accounts);
            
            // Set url destination to account activity page if username/pw correct
            url = "/Account_activity.jsp";
        }
        
        // Forward to url
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            doPost(request, response);
    }
    
}