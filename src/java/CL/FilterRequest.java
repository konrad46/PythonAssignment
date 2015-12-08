/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CL;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author paul
 */
public class FilterRequest implements Filter {
    
    private FilterConfig filterConfig = null;
    
    @Override
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        //HttpServletResponse httpResponse = (HttpServletResponse) response;
        ServletContext sc = filterConfig.getServletContext();
        
        //String filterName = filterConfig.getFilterName();
        String logString = filterConfig.getFilterName() + " | ";
        logString += "Servlet path: " + httpRequest.getServletPath() + " | ";
        //String servletPath = "Servlet path: " + httpRequest.getServletPath();
        
        Cookie[] cookies = httpRequest.getCookies();
        String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");
        logString += "Email cookie: ";
        if (emailAddress.length() != 0)
            logString += emailAddress;
        else
            logString += "Not found";
        
        //sc.log(filterName + " | " + servletPath + " | before request");
        
        sc.log(logString);
        
        chain.doFilter(httpRequest, response);
        //chain.doFilter(httpRequest, httpResponse);
        
        //sc.log(filterName + " | " + servletPath + " | after request");
    }
    
    @Override
    public void destroy() {
        filterConfig = null;
    }
}