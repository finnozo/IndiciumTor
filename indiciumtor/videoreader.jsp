<%@ page import="indicium.classes.*" %>
<%@ page import = "java.io.*" %>

<%
    try
    { 
       // get the image from the database
       byte[] videoData = video.getVideo(Integer.parseInt(request.getParameter("id")));  
       // display the image
       response.setContentType("video/mp4");
       OutputStream o = response.getOutputStream();
       o.write(videoData);
       out.clear(); // where out is a JspWriter
       out = pageContext.pushBody(); 
       o.flush();
       o.close();
    }
    catch (Exception e)
    {
      System.out.println("test");
      
    }
%>