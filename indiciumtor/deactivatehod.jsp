<%@page import="indicium.jdbcdao.JdbcConnect"%>

<%
        String myname =  (String)session.getAttribute("uname");
        
       
       
        if(myname == null || !myname.equalsIgnoreCase("Super_User"))
            {
             response.sendRedirect("kill.jsp");
            }
	
	
			
      
%>

<%
 String roll=request.getParameter("roll");
 int t=JdbcConnect.updateOperation("update login set status=0 where rollNumber='"+roll+"'");
 if(t>0)
 {
	 RequestDispatcher rd=request.getRequestDispatcher("deactadmin.jsp");
 	request.setAttribute("msghod", "Successfully Deactivated !!!");
 	rd.forward(request, response);
 }else{
	 RequestDispatcher rd=request.getRequestDispatcher("deactadmin.jsp");
 	request.setAttribute("msghod", "Failed");
 	rd.forward(request, response);
 }


%>
