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
int vid = Integer.parseInt((String) request.getParameter("vid"));
//System.out.println(sid);
String key = (String) request.getParameter("key");
String sql= "";
if(key.equals("yes")){
	sql = "update videos set status = "+1+" where id="+vid;
	int i = JdbcConnect.updateOperation(sql);
	response.sendRedirect("mediacpvid.jsp");
}
else{
	sql = "update videos set status = "+ -1 +" where id="+vid;
	int i = JdbcConnect.updateOperation(sql);
	response.sendRedirect("mediacpvid.jsp");
}

%>