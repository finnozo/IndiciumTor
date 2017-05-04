<%@page import="indicium.jdbcdao.JdbcConnect"%>

<%
        String myname =  (String)session.getAttribute("uname");
        String type1 =  (String)session.getAttribute("utype");
		String branch =  (String)session.getAttribute("branch");
       
       
        if(myname == null || type1 == null || !type1.equalsIgnoreCase("admin"))
            {
             response.sendRedirect("kill.jsp");
            }
	
	
			
      
%>


<%
String cid = (String) request.getParameter("cid");
int pid = Integer.parseInt((String)request.getParameter("id"));
//System.out.println(sid);
String key = (String) request.getParameter("key");
String sql= "";
if(key.equals("yes")){
	sql = "update feedback set status = 1,approval=1 where rollnumber='"+cid+"' and postid="+pid;
	int i = JdbcConnect.updateOperation(sql);
	response.sendRedirect("contentcp.jsp");
}
else{
	sql = "update feedback set status =  -1  where rollnumber='"+cid+"'and postid="+pid;
	int i = JdbcConnect.updateOperation(sql);
	response.sendRedirect("contentcp.jsp");
}

%>