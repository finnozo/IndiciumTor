<%@ page import="indicium.classes.*" %>
<%@ page import = "java.io.*" %>

<%
    /*try
    { 
       // get the image from the database
       byte[] imgData =ImageStudent.getPhoto(request.getParameter("roll"));  
       // display the image
     if(imgData==null){ 
       response.setContentType("image/gif");
       OutputStream o = response.getOutputStream();
       o.write(imgData);
     }
       o.flush();
       o.close();
    }
    catch (Exception e)
    {
      
    }*/
    
    
    
    
    
    try    {

        
        // get the image from the database
        byte[] imgData = ImageStudent.getPhoto(request.getParameter("roll")) ;
        response.setContentType("image/jpeg");
        response.flushBuffer();
        OutputStream o = response.getOutputStream();
        
        if(imgData == null){

             try{
                  byte[] newImgData;
                //  newImgData = img.getBytes("/images/noImage.gif");
                  //o.write(newImgData);

             }catch(Exception e){
                  System.out.println(e.toString());
                  
             }
             
        }else{
             // display the image
              
             o.write(imgData);
             //System.out.println("tttt");
             out.clear(); // where out is a JspWriter
             out = pageContext.pushBody(); 
        }
       
     o.flush();
        o.close();

       }
       catch (Exception e)
       {
         e.printStackTrace();
         throw e;
       }
%>