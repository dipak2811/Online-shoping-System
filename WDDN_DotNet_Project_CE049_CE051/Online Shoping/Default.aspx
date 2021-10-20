<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_Shoping.Default" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Shoping</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
   
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
  </style>

</head>
<body>
    <form id="form2" runat="server">
    <div class="jumbotron text-center" style="margin-bottom: 0;background-color:#ff9966">
        <h1>
            Online Shoping</h1>
        <p>
            The Real Indian Online Shopping Site!</p>
    </div>
    <%--//Menu --%>
    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      &nbsp;</div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Default.aspx">Home</a></li>
        <li><a href="About.aspx">About</a></li>        
        <li><a href="#">Contact</a></li>
        <li><a href="Blog.aspx">Blog</a></li>

      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"></span> Signup</a></li>
      </ul>
    </div>
     </div>
   </nav>

    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="Logo/banner3.jpg" width="700px" height="400px" alt="Image"/>
                            <div class="carousel-caption">
                                <h3>
                                    Offer</h3>
                                <p>
                                    Clothes.</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Logo/baner2.jpg" width="700px" height="400px" alt="Image"/>
                            <div class="carousel-caption">
                                <h3>
                                    More Sell $</h3>
                                <p>
                                    Shoes</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Logo/banner3.jpg" width="700px" height="400px" alt="Image" />
                            <div class="carousel-caption">
                                <h3>
                                    Img3</h3>
                                <p>
                                    Mobile.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                            Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                                data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                                </span><span class="sr-only">Next</span> </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="well">
                    <p>
                        Some text..</p>
                </div>
                <div class="well">
                    <p>
                        Login area</p>
                </div>
                <div class="well">
                    <p>
                        Visit Our Blog</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container text-center">
        <h3 class="alert-danger">
            Product</h3>
        <br/>
        <div class="row">
            <div class="col-sm-3">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Current Project</p>
            </div>
            <div class="col-sm-3">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Project 2</p>
            </div>
            <div class="col-sm-3">
                <div class="well">
                    <p>
                        Some text..</p>
                </div>
                <div class="well">
                    <p>
                        Some text..</p>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="well">
                    <p>
                        Some text..</p>
                </div>
                <div class="well">
                    <p>
                        Some text..</p>
                </div>
            </div>
        </div>
        <hr />
    </div>
    <div class="container text-center">
        <h3>
            Our Partners</h3>
        <br/>
        <div class="row">
            <div class="col-sm-2">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Partner 1</p>
            </div>
            <div class="col-sm-2">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Partner 2</p>
            </div>
            <div class="col-sm-2">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Partner 3</p>
            </div>
            <div class="col-sm-2">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Partner 4</p>
            </div>
            <div class="col-sm-2">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Partner 5</p>
            </div>
            <div class="col-sm-2">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width: 100%"
                    alt="Image"/>
                <p>
                    Partner 6</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
