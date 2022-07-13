<%@page import="entity.Student"%>
<%@page import="DAO.StudentDao"%>
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
                        <h2 class="section-title">Student</h2>
                    </div>
                </div>
                <%

                    StudentDao j = new StudentDao(AbstractDao.getConnection());

                    Student jj = j.getByReg1(Integer.parseInt(request.getParameter("s_id")));
                    
                %>
                <div class="row contact-bg p-5 rounded mb-5 ">
                    <div class="col-lg-7 mb-4 mb-lg-0 ">
                        <form action="StudentxJob2">
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
                                        <td>Reg_no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td><input type="text" name="id" class="form-control mb-3" value="<%=jj.getReg_no()%>" placeholder="Enter Id" required></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr> 
                                    <tr>
                                        <td>Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td><input type="name" class="form-control mb-3" name="Name" value="<%=jj.getName()%>" placeholder="Enter Job Name" required></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr> 
                                    </td>



                                    <tr>
                                        <td>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td><input type="text" name="CGP" class="form-control mb-3" value="<%=jj.getEmail()%>" placeholder="Enter minimum cgp " required></td>
                                    </tr>  
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr> 
                                    <tr>
                                        <td>Date_Of_birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td><input type="text" name="Batch" class="form-control mb-3" value="<%=jj.getDate_of_birth()%>" placeholder="Enter Batch elligible" ></td>
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
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>  
                                    </tr>
                                    <td> <h4>Education Details&nbsp;&nbsp;&nbsp;</h4><ul><li class="application-question">
                                            <li >
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>  
                                            </tr>

                                            <tr>
                                                <td>Metric_Marks</td>
                                                <td><input type="text" class="form-control mb-3" value="<%=jj.getMetric_Marks()%>" name="Metric_Marks" placeholder="Enter 10th marks" required></td>
                                            </tr>
                                            <tr>
                                                <td>Secondary_Marks</td>
                                                <td><input type="text" name="Secondary_Marks" value="<%=jj.getSecondary_Marks()%>" class="form-control mb-3" placeholder="Enter 12th Marks" required></td>
                                            </tr>
                                            <tr>
                                                <td>College_Name</td>
                                                <td><input type="text" name="College_Name" placeholder="Institute" value="<%=jj.getCollege_Name()%>"  class="form-control mb-3" required></td>
                                            </tr>

                                            <tr>
                                                <td>Graduation_type</td>
                                                <td><input type="text" class="form-control mb-3" name="Graduation_type" value="<%=jj.getGraduation_type()%>" placeholder="BTech/Bsc/etc" required></td>
                                            </tr>
                                            <tr>
                                                <td>Graduation_Stream</td>
                                                <td><input type="text"  class="form-control mb-3" name="Graduation_Stream" value="<%=jj.getGraduation_Stream()%>"  placeholder="Stream" required></td>
                                            </tr>
                                            <tr>
                                                <td>Graduation_CGP</td>
                                                <td><input type="text" class="form-control mb-3" name="Graduation_CGP" value="<%=jj.getGraduation_CGP()%>" placeholder="Enetr the last sem cgp" required></td>
                                            </tr>
                                            <tr>
                                                <td>Graduation_Year</td>
                                                <td><input type="year" class="form-control mb-3" name="Graduation_Year" value="<%=jj.getGraduation_Year()%>" placeholder="Year" required></td>
                                            </tr>





                                            <tr>
                                                </td>
                                            <tr>
                                            <tr>
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>  
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>  
                                            </tr>
                                            <td> <h4>Contact Details</h4><ul><li class="application-question">
                                                    <li >

                                                    <tr>
                                                        <td>
                                                            &nbsp;
                                                        </td>  
                                                    </tr>
                                                    <tr>
                                                        <td>Address</td>
                                                        <td><input type="text" name="Address" placeholder="Enter Address" value="<%=jj.getAddress()%>" class="form-control mb-3" ></td>
                                                    </tr>
                                                    <tr>
                                                        <td>City</td>
                                                        <td><input type="text" name="City" placeholder="Enter City" value="<%=jj.getCity()%>" class="form-control mb-3" ></td>
                                                    </tr>
                                                    <tr>
                                                        <td>State</td>
                                                        <td><input type="text" name="State" placeholder="Enter State" value="<%=jj.getState()%>" class="form-control mb-3" ></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Country</td>
                                                        <td><input type="text" name="Address" placeholder="Enter Address" value="<%=jj.getCountry()%>" class="form-control mb-3" ></td>
                                                    </tr>
                                            </td>
                                            <tr>
                                                <td>Phone</td>
                                                <td><input type="text" name="Phone" placeholder="95688*****" value="<%=jj.getPhone()%>" class="form-control mb-3" required ></td>
                                            </tr>
                                            <tr>


                                                <td> <ul>
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
                                                        <tr>
                                                            <td><h4>Current_Company&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
                                                            <td><input type="text" placeholder="Enter Current Company(if any)" value="<%=jj.getCurrent_Company()%>"  name="Current_Company" class="form-control mb-3" ></td>
                                                        </tr>
                                                    </ul>
                                                </td>  


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
                                            <td> <ul>

                                                    <tr>
                                                        <td><h4>Achievements&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
                                                        <td><input type="text" placeholder="Enter Current Company(if any)" value="<%=jj.getAchievements()%>"  name="Current_Company" class="form-control mb-3" ></td>
                                                    </tr>
                                                </ul>
                                            </td>  
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
                                            <td> <ul>

                                                    <tr>
                                                        <td><h4>Skills&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
                                                        <td><input type="text" placeholder="Enter Current Company(if any)" value="<%=jj.getSkills()%>"  name="Current_Company" class="form-control mb-3" ></td>
                                                    </tr>

                                                </ul>
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
                                            <td> <ul>

                                                    <tr>
                                                        <td><h4>Interests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
                                                        <td><input type="text" placeholder="Enter Current Company(if any)" value="<%=jj.getInterests()%>"  name="Current_Company" class="form-control mb-3" ></td>
                                                    </tr>

                                                </ul>
                                            </td>  
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
                                            <td> <h4>Links</h4><ul>

                                                    <tr>
                                                        <td>Github</td>
                                                        <td><input type="text"  name="Github" value="<%=jj.getGithub()%>" class="form-control mb-3" ></td>
                                                    </tr>
                                                    <tr>
                                                        <td>linkedin</td>
                                                        <td><input type="text"  name="linkedin" value="<%=jj.getLinkedin()%>" class="form-control mb-3" ></td>

                                                    </tr>
                                                    <tr>
                                                        <td>Others</td>
                                                        <td><input type="text" name="Others" value="<%=jj.getOthers()%>" class="form-control mb-3" ></td>

                                                    </tr>
                                                    <tr>

                                                        <td>


                                                            </div>


                                                        </td>
                                                    </tr>
                                                </ul>
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
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>  
                                            </tr>
                                            <td> <ul>

                                                    <tr>
                                                        <td><h4>Additional_Info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
                                                        <td><input type="text" placeholder="Enter Current Company(if any)" value="<%=jj.getAdditional_Info()%>"  name="Current_Company" class="form-control mb-3" ></td>
                                                    </tr>

                                                </ul>
                                            </td>  
                                        </ul>
                                    </td>  
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <button type="submit" value="submit" class="btn btn-secondary">Verify</button>



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