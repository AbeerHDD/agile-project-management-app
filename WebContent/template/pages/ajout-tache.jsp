<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>  
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Ajout T�che</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- Calendar CSS -->
    <link href="../plugins/bower_components/calendar/dist/fullcalendar.css" rel="stylesheet" />
    <!-- animation CSS -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.min.css" rel="stylesheet">
                              
    <!-- color CSS -->
    <link href="css/colors/megna.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
<body class="fix-sidebar">
<c:if test="${empty sessionScope.login }">
<c:redirect url="login.jsp">
</c:redirect>
</c:if>
<sql:setDataSource var="source" 
	url="jdbc:mysql://localhost/projet_scrum"
	driver="com.mysql.jdbc.Driver" 
	user="root" />
<sql:query dataSource="${source }" var="list">
select * from user ; 
</sql:query>
<sql:query dataSource="${source}" var="list1">
select * from projet  ; 
</sql:query>

    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
                <div class="top-left-part"><a class="logo" href="index.jsp"><b><img src="../plugins/images/eliteadmin-logo.png" alt="home" /></b><span class="hidden-xs"><strong>UC</strong>Management</span></a></div>
                <ul class="nav navbar-top-links navbar-left hidden-xs">
                    <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
                    <li>
                        <form role="search" class="app-search hidden-xs">
                            <input type="text" placeholder="Rechercher..." class="form-control"> <a href=""><i class="fa fa-search"></i></a> </form>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                  
          <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
          </a>
                        
                      
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown"> <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><i class="icon-note"></i>
          <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
          </a>
                        <ul class="dropdown-menu dropdown-tasks animated slideInUp">
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 1</strong> <span class="pull-right text-muted">40% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> <span class="sr-only">40% Complete (success)</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 2</strong> <span class="pull-right text-muted">20% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> <span class="sr-only">20% Complete</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 3</strong> <span class="pull-right text-muted">60% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"> <span class="sr-only">60% Complete (warning)</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p> <strong>Task 4</strong> <span class="pull-right text-muted">80% Complete</span> </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"> <span class="sr-only">80% Complete (danger)</span> </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#"> <strong>See All Tasks</strong> <i class="fa fa-angle-right"></i> </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-tasks -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img src="../plugins/images/users/d1.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">Utilisateur</b> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">
                            <li><a href="profile.jsp"><i class="ti-user"></i>  Mon Profile</a></li>
                            
                            <li><a href="parametres-compte.jsp"><i class="ti-settings"></i>  Param�tres de Compte</a></li>
                            <li><a href="logout.jsp"><i class="fa fa-power-off"></i>  D�connexion</a></li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <li class="right-side-toggle"> <a class="waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    <!-- /.dropdown -->
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- Left navbar-header -->
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse slimscrollsidebar">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                <!-- input-group -->
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Rechercher..."> <span class="input-group-btn">
            <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
            </span> </div>
                <!-- /input-group -->
            </li>
            <li class="user-pro">
                <a href="#" class="waves-effect"><img src="../plugins/images/users/d1.jpg" alt="user-img" class="img-circle"> <span class="hide-menu">Utilisateur<span class="fa arrow"></span></span>
                </a>
                <ul class="nav nav-second-level">
                    <li><a href="profile.jsp"><i class="ti-user"></i> Mon Profile</a></li>
                    
                    <li><a href="parametres-compte.jsp"><i class="ti-settings"></i>Param�tres de Compte</a></li>
                   <li><a href="logout.jsp"><i class="fa fa-power-off"></i>  D�connexion</a></li>
                </ul>
            </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-user"></i> <span class="hide-menu"> Utilisateurs <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-utilisateur.jsp">Liste des Utilisateurs</a> </li>
                            <li> <a href="ajout-utilisateur.jsp">Ajouter Utilisateur</a> </li>
                        </ul>
                    </li>
                   
                    <li> <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-truck"></i><span class="hide-menu"> Equipe <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-equipe.jsp">Liste des Equipes</a> </li>
                            <li> <a href="ajout-equipe.jsp">Ajouter une Equipe</a> </li>
                        </ul>
                    </li>
                    <li> <a href="javascript:void(0);" class="waves-effect"> <i class="fa fa-folder-open"></i> <span class="hide-menu"> Projet <span class="fa arrow"></span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="liste-projet.jsp">Liste des projets</a> </li>
                            <li> <a href="ajout-projet.jsp">Ajouter un projet</a> </li>
                           
                        </ul>
                    </li>
                 
    </div>
</div>

        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Ajouter une t�che</h4> </div>
                    
                    <!-- /.col-lg-12 -->
                </div>
                
                 <div class="row">
                    <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                        <div class="white-box">
                         
                            <form class="form-material form-horizontal" action="add_tache.jsp" method="POST">
                             
                           
                  <h5 class="box-title m-t-40 m-b-0">Ajouter une t�che</h5>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" name="nom" placeholder="Libill�"> </div>
                    </div>
                    <div class="form-label-group">
                    <select class="form-control" name="periorite">
                    
   <option>P�riorit�</option>                 
  <option  value="faible">faible  </option>
  <option  value="moyen"> moyen </option>
  <option  value="�lev�">�lev�</option>
</select>
                  </div>

                    <div class="form-label-group">
                    <select class="form-control" name="difficulte">
                    
   <option  >Difficult�</option>                 
  <option  value="facile">facile </option>
  <option  value="moyen"> moyen </option>
  <option  value="difficile">difficile</option>
</select>
                  </div>
                    
                  <div class="form-label-group">
                    <select class="form-control" name="statut">
                    
   <option  >Statut</option>                 
  <option  value="non d�marr�">non d�marr�</option>
  <option  value="d�marr�"> d�marr�</option>
  <option  value="fini">fini</option>
</select>
                  </div>
                  <div class="form-label-group">
                    <select class="form-control" name="membre">
                    <option >Membre</option>
                     <c:forEach var="membre" items="${list.rows}">
                     
                    
  <option value="<c:out value="${membre.nom}"/>" value="<c:out value="${membre.prenom}"/>"><c:out value="${membre.nom}" /> <c:out value="${membre.prenom}" />  </option> 
 </c:forEach> 
 
</select>
</div>
<div class="form-group ">
                        <div class="col-xs-12">
                        <label>Date D�but :</label>
                            <input class="form-control" type="date" name="datedebut" placeholder="Date Debut"> </div>
                    </div>
                    <div class="form-group ">
                    <label>Date Limite :</label>
                        <div class="col-xs-12">
                            <input class="form-control" type="date" name="deadline" placeholder="Date Limite"> </div>
                    </div>
                    <div class="form-group m-t-20">
                        <div class="col-xs-12">
                            <label>Description :</label>
                            <input class="form-control" type="text" name="description" > </div>
                    </div>
                    
                          
  <div class="form-label-group">
                    <select class="form-control" name="id_projet">
                    <option >Projet</option>
                     <c:forEach var="projet" items="${list1.rows}">
                     
                    
  <option value="<c:out value="${projet.id}"/>" ><c:out value="${projet.nom}" />   </option> 
 </c:forEach> 
 
</select>
</div>
                  
                  <p></p>
                     
                   
                   
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                      
                               <a href="index.jsp"><button type="submit" class="btn btn-inverse waves-effect waves-light">Annuler</button></a>
                                <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Ajouter</button>
                        </div>
                    </div>
                    
                
                            </form>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
                
                
      <div class="right-sidebar">
                    <div class="slimscrollright">
                        <div class="rpanel-title"> Panneau de Service <span><i class="ti-close right-side-toggle"></i></span> </div>
                        <div class="r-panel-body">
                            <ul>
                                <li><b>Mise en Page</b></li>
                                <li>
                                    <div class="checkbox checkbox-info">
                                        <input id="checkbox1" type="checkbox" class="fxhdr">
                                        <label for="checkbox1"> Fixer l'en-t�te</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox checkbox-warning">
                                        <input id="checkbox2" type="checkbox" checked="" class="fxsdr">
                                        <label for="checkbox2"> Fixer la barre lat�rale </label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox checkbox-success">
                                        <input id="checkbox4" type="checkbox" class="open-close">
                                        <label for="checkbox4"> Basculer la barre lat�rale </label>
                                    </div>
                                </li>
                            </ul>
                            <ul id="themecolors" class="m-t-20">
                                <li><b>Avec barre lat�rale l�ger</b></li>
                                <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                                <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                                <li><a href="javascript:void(0)" data-theme="gray" class="yellow-theme">3</a></li>
                                <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
                                <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                                <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme working">6</a></li>
                                <li class="d-block m-t-30"><b>Avec barre lat�rale  sombre</b></li>
                              
                              
                                <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                                <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                                <li><a href="javascript:void(0)" data-theme="gray-dark" class="yellow-dark-theme">9</a></li>
                                <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                                <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                                <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme">12</a></li>
                            </ul>
                          
                        </div>
                    </div>
                </div>
                <!-- /.right-sidebar -->
            </div>
            <!-- /.container-fluid -->
           
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap/dist/js/tether.min.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <!-- Calendar JavaScript -->
    <script src="../plugins/bower_components/calendar/jquery-ui.min.js"></script>
    <script src="../plugins/bower_components/moment/moment.js"></script>
    <script src='../plugins/bower_components/calendar/dist/fullcalendar.min.js'></script>
    <script src="../plugins/bower_components/calendar/dist/jquery.fullcalendar.js"></script>
    <script src="../plugins/bower_components/calendar/dist/cal-init.js"></script>
    <!--Style Switcher -->
<script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>