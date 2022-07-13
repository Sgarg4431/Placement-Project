<%@page import="Util.UrlResolver"%>
<%@page import="DAO.JobDao"%>
<%@page import="entity.Job"%>
<%@page import="helper.AbstractDao"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>Register</title>

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

<body>
  

<!-- navigation -->
<section class="fixed-top navigation">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
      <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
      <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- navbar -->
      <div class="collapse navbar-collapse text-center" id="navbar">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link page-scroll" href="#feature">Feature</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="service.html">Service</a>
          </li>
          <li class="nav-item">
           
          </li>
          <li class="nav-item">
            <a class="nav-link page-scroll" href="#pricing">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>
        </ul>
  
      </div>
    </nav>
  </div>
</section>
<!-- /navigation -->

<!-- /navigation -->
<section class="section-lg contact">
  <div class="container">
      <div class="row">
          <div class="col-lg-12 text-center">
              <h2 class="section-title">Job</h2>
          </div>
      </div>
      <%
            
      JobDao j = new JobDao(AbstractDao.getConnection());
       
            Job jj=j.getById(Integer.parseInt(request.getParameter("j_id")));
System.out.println(jj.getBatch());
HttpSession session1=request.getSession();
session1.setAttribute("job", jj);
      %>
      <div class="row contact-bg p-5 rounded mb-5 ">
          <div class="col-lg-7 mb-4 mb-lg-0 ">
              <form action="StudentxJob1" >
                 <table>
                  <tr>
                    
                    &nbsp;&nbsp;&nbsp;
                    <ul>
                     
                      <tr>
                        <td>
                      &nbsp;
                  </td>  
                  </tr>
                  </tr>
                  
                  <tr>
                    <td>Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="text" name="id" class="form-control mb-3" value="<%=jj.getId()%>" placeholder="Enter Id" required></td>
                </tr>
                <tr>
                 <td>
                   &nbsp;
                 </td>
               </tr> 
                <tr>
                    <td>Job_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="name" class="form-control mb-3" name="Name" value="<%=jj.getJob_name()%>" placeholder="Enter Job Name" required></td>
                </tr>
                <tr>
                  <td>
                    &nbsp;
                  </td>
                </tr> 
                </td>
                 
                
                
                <tr>
                    <td>CGP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                   <td><input type="text" name="CGP" class="form-control mb-3" value="<%=jj.getCGP()%>" placeholder="Enter minimum cgp " required></td>
                </tr>  
                <tr>
                  <td>
                    &nbsp;
                  </td>
                </tr> 
                <tr>
                    <td>Batch&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="text" name="Batch" class="form-control mb-3" value="<%=jj.getBatch()%>" placeholder="Enter Batch elligible" ></td>
                </tr>
                <tr>
                  <td>
                    &nbsp;
                  </td>
                </tr> 
                
                <tr>
                  <td>Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td><input type="text" name="Location" class="form-control mb-3" value="<%=jj.getLocation()%>" placeholder="Enter Location of job" ></td>
              </tr>
              <tr>
                  <td>
                    &nbsp;
                  </td>
                </tr> 
                <tr>
                  <td>Last date to apply&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td><input type="text" name="lastDate" class="form-control mb-3" value="<%=jj.getLastDate()%>" placeholder="Enter Location of job" ></td>
              </tr>
              <tr>
                <td>
                  &nbsp;
                </td>
              </tr> 
              <tr>
                <td>Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><input type="text" name="Type" class="form-control mb-3" value="<%=jj.getType()%>" placeholder="Enter Type of job" ></td>
            </tr>
              <tr>
                <td>
                  &nbsp;
                </td>
              </tr> 
                <tr>
                    <td>Perks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="text" placeholder="Enter Perks of Job" name="Perks" value="<%=jj.getPerks()%>" class="form-control mb-3" style="width: 200%; height: 3cm;"></td>
                </tr>
                <tr>
                  <td>
                    &nbsp;
                  </td>
                </tr> 
               
               
                <tr>
                  <td>Qualification&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                 <td><input type="text" placeholder="Eneter minimum Qualification" value="<%=jj.getQualification()%>" name="Qualification" class="form-control mb-3" style="width: 200%; height: 3cm;"></td>
              </tr>   
              <tr>
                <td>
                  &nbsp;
                </td>
              </tr> 
                <tr>
                  <td>Skills&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                 <td><input type="text" placeholder="Enter skills required" name="Skills" value="<%=jj.getSkills()%>" class="form-control mb-3" style="width: 200%; height: 3cm;"></td>
              </tr>  
              <tr>
                <td>
                  &nbsp;
                </td>
              </tr> 
                <tr>
                  <td>Additional_Info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                 <td><input type="text" placeholder="Anything else you want to post" value="<%=jj.getAdditional_info()%>" name="Additional_Info" class="form-control mb-3" style="width: 200%; height: 3cm;"></td>
              </tr>   
              
              <tr>
                <td>
                  &nbsp;
                </td>
              </tr> 
              <tr>
                <td>
                  &nbsp;
                </td>
              </tr> 
                 </table>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <button type="submit" value="submit" class="btn btn-secondary">Verify</button>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                  
                
              </form>
          </div>
        </div>  
      
  <!-- background shapes -->
  <img class="contact-bg-1 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
  <img class="contact-bg-2 left-right-animation" src="images/background-shape/green-half-cycle.png" alt="background-shape">
  <img class="contact-bg-3 up-down-animation" src="images/background-shape/green-dot.png" alt="background-shape">
  <img class="contact-bg-4 left-right-animation" src="images/background-shape/service-half-cycle.png" alt="background-shape">
  <img class="contact-bg-5 up-down-animation" src="images/background-shape/feature-bg-2.png" alt="background-shape">
</section>

<!-- footer -->
<footer class="footer-section footer" style="background-image: url(images/backgrounds/footer-bg.png);">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 text-center text-lg-left mb-4 mb-lg-0">
        <!-- logo -->
        <a href="index.html">
          <img class="img-fluid" src="images/logo.png" alt="logo">
        </a>
      </div>
      <!-- footer menu -->
      <nav class="col-lg-8 align-self-center mb-5">
        <ul class="list-inline text-lg-right text-center footer-menu">
          <li class="list-inline-item active"><a href="index.html">Home</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#feature">Feature</a></li>
          <li class="list-inline-item"><a href="about.html">About</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#team">Team</a></li>
          <li class="list-inline-item"><a class="page-scroll" href="#pricing">Pricing</a></li>
          <li class="list-inline-item"><a href="contact.html">Contact</a></li>
        </ul>
      </nav>
      <!-- footer social icon -->
      <nav class="col-12">
        <ul class="list-inline text-lg-right text-center social-icon">
          <li class="list-inline-item">
            <a class="facebook" href="#"><i class="ti-facebook"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="twitter" href="#"><i class="ti-twitter-alt"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="linkedin" href="#"><i class="ti-linkedin"></i></a>
          </li>
          <li class="list-inline-item">
            <a class="black" href="#"><i class="ti-github"></i></a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</footer>
<!-- /footer -->

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

</body>
</html>