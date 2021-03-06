package hst.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FileServlet implements Filter{
	 private static String encoding = "utf-8";     
	    private boolean ignore=true;    
	      
	    protected String getEncoding(){     
	        return this.encoding;     
	    }     
	      
	    @Override  
	    public void destroy() {  
	        // TODO Auto-generated method stub  
	          
	    }  

	    @Override  
	    public void doFilter(ServletRequest request, ServletResponse response,  
	            FilterChain chain) throws IOException, ServletException {  
	        String pencoding="utf-8";  
	        if(ignore||null==request.getCharacterEncoding()){                 
	            if(pencoding!=null){     
	                request.setCharacterEncoding(pencoding);     
	            }     
	        }     
	      System.out.println("encoding===="+encoding);     
	        response.setContentType("text/html;charset="+pencoding);     
	        System.out.println("pencoding===="+pencoding);     
	         
	             
	        chain.doFilter(request, response);     
	          
	    }  

	    @Override  
	    public void init(FilterConfig filterConfig) throws ServletException {  
	          this.encoding=filterConfig.getInitParameter("encoding");     
	            String value=filterConfig.getInitParameter("ignore");     
	            if(value==null){     
	                this.ignore=true;     
	            }else if(value.equalsIgnoreCase("true")){     
	                this.ignore=true;     
	            }else if(value.equalsIgnoreCase("yes")){     
	                this.ignore=true;     
	            }else{     
	                this.ignore=false;     
	            }     
	    }  

}
