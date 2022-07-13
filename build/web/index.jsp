
<%@page import="java.lang.String"%>
<%@page import="helper.AbstractDao"%>
<%@page import="Util.UrlResolver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
  <meta charset="utf-8">
  <title>Placements</title>

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- ** Plugins Needed for the Project ** -->
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/Venobox/venobox.css">
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
  <link rel="icon" href="images/favicon.ico" type="image/x-icon">

</head>



<%
if(session.getAttribute("user")==null && session.getAttribute("com")==null){
   %>
  <jsp:include page="jsp/header.jsp"></jsp:include> 
<%   
}

 else if(session.getAttribute("com")!=null){
%>
 <jsp:include page="jsp/header2.jsp"></jsp:include> 
<%

}
else if(session.getAttribute("user")!=null){
Object o=session.getAttribute("user");
if(o instanceof String)
{
if(((String)session.getAttribute("user")).equals("tpo")){
 %>
 <jsp:include page="jsp/header2.jsp"></jsp:include> 
<%
} 
}
else{
%>     
 <jsp:include page="jsp/header1.jsp"></jsp:include>
 <%
     }
 %>
 
<%

}

%>


<%
     String s=request.getParameter("task");
     if(s==null)
         s="home";
     AbstractDao.setPath(application.getRealPath("\\WEB-INF\\classes\\helper\\db.properties"));
     UrlResolver url=new UrlResolver();
     url.load(application.getRealPath("\\WEB-INF\\classes\\Util\\urls.properties"));
     String s2=url.getUrl(s);
     





%>
<jsp:include page="<%=s2%>"></jsp:include>
<jsp:include page="jsp/footer.jsp"></jsp:include>

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="plugins/slick/slick.min.js"></script>
<!-- venobox -->
<script src="plugins/Venobox/venobox.min.js"></script>
<!-- aos -->
<script src="plugins/aos/aos.js"></script>
<!-- Main Script -->
<script src="js/script.js"></script>

