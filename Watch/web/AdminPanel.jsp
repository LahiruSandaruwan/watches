
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>WATCHES-LK.COM</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
        <script src="js/jquery-1.11.0.min.js"></script>
        <!--Custom-Theme-files-->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--start-menu-->
        <script src="js/simpleCart.min.js"></script>
        <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/memenu.js"></script>
        <script>$(document).ready(function () {
                $(".memenu").memenu();
            });</script>	
        <!--dropdown-->
        <script src="js/jquery.easydropdown.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script type="text/javascript" src="js/myjs.js"></script>

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" >
        <link href="css/jquery-confirm.css" rel="stylesheet">

        <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>-->
        <script src="js/jquery-confirm.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body> 
        <!--top-header-->
        <div class="top-header">
            <div class="container">
                <div class="top-header-main">
                    <div class="col-md-6 top-header-left">
                        <div class="drop">
                            <div class="box">
                                <select tabindex="4" class="dropdown drop">
                                    <option value="" class="label">LKR :</option>
                                    <option value="1">LKR</option>
                                    <option value="2">Doller</option>
                                </select>
                            </div>
                            <div class="box1">
                                <select tabindex="4" class="dropdown">
                                    <option value="" class="label">English :</option>
                                    <option value="1">English</option>
                                    <option value="2">Sinhala</option>
                                </select>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-md-6 top-header-left">
                        <div class="cart box_1">
                            <a href="checkout.php">
                                <div class="total">
                                    <span class="simpleCart_total"></span></div>
                                <img src="images/cart-1.png" alt="" />
                            </a>
                            <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="cart box_1">

                            <button onclick="document.getElementById('id01').style.display = 'block'" class="btn btn-success" style="margin-right: 5px;">Join</button>

                            <div id="id01" class="w3-modal">
                                <div class="w3-modal-content">
                                    <div class="w3-container">
                                        <span onclick="document.getElementById('id01').style.display = 'none'" class="w3-button w3-display-topright">&times;</span>
                                        <h1 align="center">Join WATCHES-LK</h1>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Name</label>
                                            <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Name" required="required">
                                            <p id="demo_one"></p>
                                            <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Mobile No</label>
                                            <input type="text" class="form-control" id="contact" name="contact" aria-describedby="emailHelp" placeholder="Mobile No" required="">
                                            <p id="demo_two"></p>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email Address</label>
                                            <input type="email" class="form-control" id="em" name="em" aria-describedby="emailHelp" placeholder="Email Address" required="">
                                            <p id="demo_three"></p>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">UserName</label>
                                            <input type="text" class="form-control" id="un" name="un" aria-describedby="emailHelp" placeholder="UserName" required="">
                                            <p id="demo_four"></p>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">PassWord</label>
                                            <input type="password" class="form-control" id="pw" name="pw" placeholder="PassWord" required="">
                                            <p id="demo_five"></p>
                                        </div>
                                        <!--                                            <div class="form-check">
                                                                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                                                        <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                                                                                    </div>-->
                                        <button type="submit" onclick="RegisterUser();" class="btn btn-primary">Continue</button>
                                        <br>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="cart box_1">
                            <%
                                pojos.UserLogin ul = (pojos.UserLogin) request.getSession().getAttribute("logins");
                                if (ul != null) {
                            %>
                            <button onclick="PromptLogOut();" class="btn btn-primary btn-sm" style="margin-right: 5px;"><img src="images/ic_account_box_white_24dp_1x.png"/><%=ul.getUser().getUserName()%></button>
                                <%
                                } else if (ul == null) {
                                %>
                            <button onclick="document.getElementById('id02').style.display = 'block'" class="btn btn-primary" style="margin-right: 5px;">Sign In</button>
                            <%
                                }
                            %>
                            <div id="id02" class="w3-modal">
                                <div class="w3-modal-content">
                                    <div class="w3-container">
                                        <span onclick="document.getElementById('id02').style.display = 'none'" class="w3-button w3-display-topright">&times;</span>
                                        <h1 align="center">Sign In to WATCHES-LK</h1>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">username</label>
                                            <input type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="username">
                                            <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">password</label>
                                            <input type="password" class="form-control" id="password" placeholder="password">
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">Remember Me</label>
                                        </div>
                                        <button type="button" class="btn btn-primary" onclick="SignInUser();">Sign In</button>
                                        <br>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--top-header-->
        <!--start-logo-->
        <div class="logo">
            <a href="index.jsp"><h1>WATCHES-LK.COM</h1></a>
        </div>
        <!--start-logo-->
        <!--bottom-header-->
        <div class="header-bottom">
            <div class="container">
                <div class="header">
                    <div class="col-md-9 header-left">
                        <div class="top-nav">
                            <ul class="memenu skyblue"><li class="active"><a href="index.jsp">Home</a></li>
                                <li class="grid"><a href="#">Men</a>

                                </li>
                                <li class="grid"><a href="#">Women</a>

                                </li>
                                <li class="grid"><a href="#">Kids</a>

                                </li>
                                <!--                                <li class="grid"><a href="typo.html">Blog</a>
                                                                </li>-->
                                <li class="grid"><a href="contact.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-md-3 header-right"> 
                        <div class="search-bar">
                            <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Search';
                                    }">
                            <input type="submit" value="">
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--bottom-header-->
        <!--start-breadcrumbs-->
        <div class="breadcrumbs">
            <div class="container">
                <div class="breadcrumbs-main">
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active">Admin Panel</li>
                    </ol>
                </div>
            </div>
        </div>
        <!--end-breadcrumbs-->
        <!--contact-start-->
        <div class="">
            <div class="container">
                <br>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary">
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">Products Management</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary">
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">Stock Management</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary">
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">User Management</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary">
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">Sales Management</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary">
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">Products Management</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary">
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">Products Management</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary" >
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">Products Management</a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="card bg-success panel panel-primary" >
                                <br>
                                <p style="text-align:center;"><i class="fa fa-briefcase" style="font-size:48px;color:red;"></i></p>
                                <div class="card-body">
                                    <!--<h5 class="card-title">Card title</h5>-->
                                    <!--<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                                    <p style="text-align: center;"><a href="#" class="">Products Management</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--contact-end-->
        <!--map-start-->
        <div class="map">
            <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6632.248000703498!2d151.265683!3d-33.7832959!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12abc7edcbeb07%3A0x5017d681632bfc0!2sManly+Vale+NSW+2093%2C+Australia!5e0!3m2!1sen!2sin!4v1433329298259" style="border:0"></iframe>-->
        </div>
        <!--map-end-->
        <!--information-starts-->
        <div class="information">
            <div class="container">
                <div class="infor-top">
                    <div class="col-md-3 infor-left">
                        <h3>Follow Us</h3>
                        <ul>
                            <li><a href="#"><span class="fb"></span><h6>Facebook</h6></a></li>
                            <li><a href="#"><span class="twit"></span><h6>Twitter</h6></a></li>
                            <li><a href="#"><span class="google"></span><h6>Google+</h6></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 infor-left">
                        <h3>Information</h3>
                        <ul>
                            <li><a href="#"><p>Specials</p></a></li>
                            <li><a href="#"><p>New Products</p></a></li>
                            <li><a href="#"><p>Our Stores</p></a></li>
                            <li><a href="contact.html"><p>Contact Us</p></a></li>
                            <li><a href="#"><p>Top Sellers</p></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 infor-left">
                        <h3>My Account</h3>
                        <ul>
                            <li><a href="account.html"><p>My Account</p></a></li>
                            <li><a href="#"><p>My Credit slips</p></a></li>
                            <li><a href="#"><p>My Merchandise returns</p></a></li>
                            <li><a href="#"><p>My Personal info</p></a></li>
                            <li><a href="#"><p>My Addresses</p></a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 infor-left">
                        <h3>Store Information</h3>
                        <h4>The company name,
                            <span>Lorem ipsum dolor,</span>
                            Glasglow Dr 40 Fe 72.</h4>
                        <h5>+955 123 4567</h5>	
                        <p><a href="mailto:example@email.com">contact@example.com</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--information-end-->
        <!--footer-starts-->
        <div class="footer">
            <div class="container">
                <div class="footer-top">
                    <div class="col-md-6 footer-left">
                        <form>
                            <input type="text" value="Enter Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Enter Your Email';
                                    }">
                            <input type="submit" value="Subscribe">
                        </form>
                    </div>
                    <div class="col-md-6 footer-right">					
                        <p>© 2015 Luxury Watches. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--footer-end-->	
    </body>
</html>