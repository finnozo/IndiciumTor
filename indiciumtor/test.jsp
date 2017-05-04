<%@ page import="indicium.classes.*" %>
<%@ page import = "java.io.*" %>

<%
    try
    { 
       // get the image from the database
       byte[] imgData =image.getPhoto(request.getParameter("mob"));  
       // display the image
       response.setContentType("image/gif");
       OutputStream o = response.getOutputStream();
       o.write(imgData);
       o.flush();
       o.close();
    }
    catch (Exception e)
    {
      
    }
%>