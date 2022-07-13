
<%@page import="entity.StudentxJobBO"%>
<%@page import="servlets.StudentxJob"%>
<%@page import="DAO.StudentxJobDA"%>
<%@page import="DAO.StudentDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Job"%>

<%@page import="helper.AbstractDao"%>
<%@page import="DAO.JobDao"%>
<%@page import="entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 
    <body>
        
<!-- service -->
<section class="section-lg service-bg-image position-relative" style="background-image: url(images/backgrounds/service-page.png);">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="section-title">Students</h2>
             
            </div>
          
    
<!-- feature -->
<section class="section feature mb-0" id="feature">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        
</p>
      </div>
        
        <%
        
       StudentxJobDA j=new StudentxJobDA(AbstractDao.getConnection());
       StudentDao jj=new StudentDao(AbstractDao.getConnection());
             ArrayList<Student>list=jj.getAll1();
        
for(Student jjj:list)
{
  %>
      <!-- feature item -->
      <div class="col-md-6 mb-80">
        <div class="d-flex feature-item">
          <div>
            <i class="ti-ruler-pencil feature-icon mr-4"></i>
          </div>
          <div>
            <h4><%=jjj.getReg_no()%></h4>
            
            <p></p>
          </div>
        </div>
      </div>
      <!-- feature item -->
      
  
<%  
}
        %>
        
      
        </div>
      </div>
    </div>
  </div>
  <img class="feature-bg-1 up-down-animation" src="images/background-shape/feature-bg-1.png" alt="bg-shape">
  <img class="feature-bg-2 left-right-animation" src="images/background-shape/feature-bg-2.png" alt="bg-shape">
</section>
<!-- /feature -->





    </body>
</html>
