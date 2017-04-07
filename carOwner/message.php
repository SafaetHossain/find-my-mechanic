<?php 

include("phpFiles/SelectProfileData.php");

$jsonMessageDataString = getJSONFromDB("select * from message");

$MessageData = json_decode($jsonMessageDataString);


   $jsonCarOwnerDataString = getJSONFromDB("select ShopName from shopowner where Email='".$MessageData[$i]->ShopOwnerEmail."'");

$ShopOwnerData = json_decode($jsonCarOwnerDataString);
  
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WebTechnology Final Project</title>
    <link href="../assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../assets/css/style.css" rel="stylesheet" />
    <link href="../assets/css/main-style.css" rel="stylesheet" />
   </head>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="navbar">
            <!-- navbar-header -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand logo-color" href="index.php">
                    Logo Goes Here
                </a>
            </div>
            <!-- end navbar-header -->
            <!-- navbar-top-links -->
            <ul class="nav navbar-top-links navbar-right">
                <!-- main dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="top-label label label-danger">3</span><i class="fa fa-envelope fa-3x"></i>
                    </a>
                    <!-- dropdown-messages -->
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="message-reply.html">
                                <div>
                                    <strong><span class=" label label-danger">Faisal</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>1 minutes ago</em>
                                    </span>
                                </div>
                                <div>How can I help you?</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="message-reply.html">
                                <div>
                                    <strong><span class=" label label-info">Tuhin</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>5 hours ago</em>
                                    </span>
                                </div>
                                <div>How can I help you?</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="message-reply.html">
                                <div>
                                    <strong><span class=" label label-success">Sarwar</span></strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>How can I help you?</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="message.php">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- end dropdown-messages -->
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="top-label label label-warning">2</span>  <i class="fa fa-bell fa-3x"></i>
                    </a>
                    <!-- dropdown Notifications-->
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="notification.html">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i>Help Request Sent Successfully
                                    <span class="pull-right text-muted small"> 1 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="notification.html">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i>Tuhin Accept Your Request
                                    <span class="pull-right text-muted small"> 0 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="notification.html">
                                <strong>See All Notifications</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- end dropdown-Notifications -->
                </li>

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-3x"></i>
                    </a>
                    <!-- dropdown user-->
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="profile.php"><i class="fa fa-user fa-fw"></i>User Profile</a>
                        </li>
                        <li><a href="setting.php"><i class="fa fa-gear fa-fw"></i>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="../login.php"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                        </li>
                    </ul>
                    <!-- end dropdown-user -->
                </li>
                <!-- end main dropdown -->
            </ul>
            <!-- end navbar-top-links -->

        </nav>
        <!-- end navbar top -->

        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                            <div class="user-section-inner">
                                <img src="../assets/img/user.jpg" alt="">
                            </div>
                            <div class="user-info">
                                <div>Faisal <strong>Nabil</strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                    <hr>

                    <li>
                        <a href="index.php"><i class="fa fa-dashboard fa-fw"></i>Home</a>
                    </li>
                    <li class="selected">
                        <a href="message.php"><i class="fa fa-comment fa-fw"></i>Messages</a>
                    </li>
                    <li>
                        <a href="notification.html"><i class="fa fa-bell fa-fw"></i>Notification</a>
                    </li>
                    <li>
                        <a href="entry.php"><i class="fa fa-edit fa-fw"></i>Entry</a>
                    </li>
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Message</h1>
                </div>

                  
                <h3><?php   ?></h3>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-success">
                      <strong>Message List</strong> 
                    </div>
                </div>
                <div class="col-md-12">
                      <table class="table table-inbox table-hover">
                            <tbody>
                                <?php 
                                   foreach ($MessageData as $value) {
                                ?>  
                                        
                              <tr>
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td><i class="fa fa-star"></i></td>
                                  <td class="from">

                                  <?php
                                   for($i = 0; $i < sizeof($ShopOwnerData); $i++){
                                     echo $ShopOwnerData[$i]->ShopName ; 
                                   } 
                                   
                                  ?>
                                    
                                  </td>
                                  <td class="message-body"><?php echo $value->MessageBody ; ?></td>
                                  <td></td>
                                  <td class="text-right">9:27 AM</td>
                                  <td class="pull-right"><a href="message-reply.html"><button class="btn btn-primary">Reply</button></a>
                                    <button class="btn btn-danger">Delete</button>
                                  </td>
                              </tr>

                                <?php 
                                  }   
                                ?>

                              <!-- <tr>
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td><i class="fa fa-star"></i></td>
                                  <td class="from">Tuhin EnterPrise</td>
                                  <td class="message-body">Car Washed Complete</td>
                                  <td></td>
                                  <td class="text-right">Mar 20 </td>
                                  <td class="pull-right"><a href="message-reply.html"><button class="btn btn-primary">Reply</button></a>
                                    <button class="btn btn-danger">Delete</button>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td><i class="fa fa-star"></i></td>
                                  <td class="from">Tuhin EnterPrise</td>
                                  <td class="message-body">Car Washed Complete</td>
                                  <td></td>
                                  <td class="text-right">July 10</td>
                                  <td class="pull-right"><a href="message-reply.html"><button class="btn btn-primary">Reply</button></a>
                                    <button class="btn btn-danger">Delete</button>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td><i class="fa fa-star"></i></td>
                                  <td class="from">Tuhin EnterPrise</td>
                                  <td class="message-body">Car Washed Complete</td>
                                  <td></td>
                                  <td class="text-right">Aug 20</td>
                                  <td class="pull-right"><a href="message-reply.html"><button class="btn btn-primary">Reply</button></a>
                                    <button class="btn btn-danger">Delete</button>
                                  </td>
                              </tr> -->
                              
                               
                          </tbody>
                          </table>
                </div>
                <!-- <div class="col-md-12 space">
                    <div class="image-control">
                      <img src="assets/img/sarwar.jpg" alt="">
                      <label for="name">Me:</label>
                      <em>Hello</em>
                    </div>
                </div>
                <div class="col-md-12 space">
                    <div class="image-control">
                      <img src="assets/img/faisal.jpg" alt="">
                      <label for="name">Faisal:</label>
                      <em>Hi</em>
                    </div>
                </div>
                <div class="col-md-12 space">
                     <form>
                        <div class="form-group">
                          <label for="comment">Reply:</label>
                          <textarea class="form-control" rows="5" id="comment"></textarea>
                        </div>
                        <button class="btn btn-primary">Send</button>
                      </form>
                
                </div> -->
            </div>
        </div>
        <!-- end page-wrapper -->

    </div>
    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="../assets/plugins/jquery-1.10.2.js"></script>
    <script src="../assets/plugins/bootstrap/bootstrap.min.js"></script>
     

</body>

</html>
