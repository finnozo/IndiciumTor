<%@ page import="indicium.classes.*" %>
<%@ page import = "java.io.*" %>

<%
    try
    { 
       // get the image from the database
       byte[] magaData =pdf.getPdf(Integer.parseInt( request.getParameter("id")));  
       // display the image
       response.setContentType("application/pdf");
       OutputStream o = response.getOutputStream();
       o.write(magaData);
       out.clear(); // where out is a JspWriter
       out = pageContext.pushBody(); 
       o.flush();
       o.close();
    }
    catch (Exception e)
    {
      
    }
%>