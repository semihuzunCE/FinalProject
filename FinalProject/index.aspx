<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FinalProject.AnaSayfa" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600%7CUbuntu:300,400,500,700" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/plyr.css">
    <link rel="stylesheet" href="css/photoswipe.css">
    <link rel="stylesheet" href="css/default-skin.css">
    <link rel="stylesheet" href="css/main.css">

    <!-- Favicons -->
    <link rel="icon" type="image/png" href="icon/favicon-32x32.png" sizes="32x32">
    <link rel="apple-touch-icon" href="icon/favicon-32x32.png">
    <link rel="apple-touch-icon" sizes="72x72" href="icon/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="icon/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="144x144" href="icon/apple-touch-icon-144x144.png">

    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Dmitry Volkov">
    <title>FlixGo – Online Movies, TV Shows & Cinema HTML Template</title>

</head>
<body class="body">

    <!-- header -->
    <header class="header">
        <div class="header__wrap">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="header__content">
                            <!-- header logo -->
                            <a href="index.aspx" class="header__logo">
                                <img src="img/logo.svg" alt="">
                            </a>
                            <!-- end header logo -->

                            <!-- header nav -->
                            <ul class="header__nav">
                                <!-- dropdown -->
                                <li class="header__nav-item">
                                    <a class="dropdown-toggle header__nav-link" href="index.aspx">Ana Sayfa</a>
                                </li>
                                <!-- end dropdown -->

                                <!-- dropdown -->
                          
                                <!-- end dropdown -->


                            </ul>
                            <!-- end header nav -->

                            <!-- header auth -->
                            
                            <!-- end header auth -->

                            <!-- header menu btn -->
                            <button class="header__btn" type="button">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                            <!-- end header menu btn -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- header search -->
        <form action="#" class="header__search">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="header__search-content">
                            <input type="text" placeholder="Search for a movie, TV Series that you are looking for">

                            <button type="button">search</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- end header search -->
    </header>
    <!-- end header -->

    <!-- home -->


    <section class="home home--bg">

        <div class="container">

            <div class="row">

                <div class="col-12">

                    <h1 class="home__title">VİZYONDAKİ FİLMLER</h1>
                </div>

                <div class="col-12">


                    <div class="owl-carousel home__carousel">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <!-- card -->
                                    <div class="card card--big">
                                        <div class="card__cover">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_name") %>' />
                                            <a href="detaylar.aspx?id=<%# Eval("id") %>" class="card__play">
                                                <i class="icon ion-ios-play"></i>
                                            </a>
                                        </div>

                                        <div class="card__content">
                                            <h3 class="card__title"><a href="detaylar.aspx?id=<%# Eval("id") %>">                                               
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ad") %>'></asp:Label></a></h3>
                                            <span class="card__category">
                                                
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("tür") %>' ForeColor="#ff5860" Font-Names='Arial Narrow'></asp:Label>

                                            </span>
                                            <span class="card__rate"><i class="icon ion-ios-star"></i>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("puan") %>'></asp:Label></span>
                                        </div>

                                    </div>
                                    <!-- end card -->

                                </div>

                            </ItemTemplate>
                        </asp:DataList>
                        <asp:DataList ID="DataList2" runat="server">
                            <ItemTemplate>

                                <div class="item">
                                    <!-- card -->
                                    <div class="card card--big">
                                        <div class="card__cover">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("img_name") %>' />
                                            <a href="detaylar.aspx?id=<%# Eval("id") %>" class="card__play">
                                                <i class="icon ion-ios-play"></i>
                                            </a>
                                        </div>
                                        <div class="card__content">
                                            <h3 class="card__title"><a href="detaylar.aspx?id=<%# Eval("id") %>">
                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("ad") %>'></asp:Label></a></h3>
                                            <span class="card__category">
                                                
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("tür") %>' ForeColor="#ff5860" Font-Names='Arial Narrow'></asp:Label>
                                               
                                            </span>
                                            <span class="card__rate"><i class="icon ion-ios-star"></i>
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("puan") %>'></asp:Label></span>
                                        </div>
                                    </div>
                                    <!-- end card -->
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:DataList ID="DataList3" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <!-- card -->
                                    <div class="card card--big">
                                        <div class="card__cover">
                                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("img_name") %>' />
                                            <a href="detaylar.aspx?id=<%# Eval("id") %>" class="card__play">
                                                <i class="icon ion-ios-play"></i>
                                            </a>
                                        </div>
                                        <div class="card__content">
                                            <h3 class="card__title"><a href="detaylar.aspx?id=<%# Eval("id") %>">
                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("ad") %>'></asp:Label></a></h3>
                                            <span class="card__category">
                                                
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("tür") %>' ForeColor="#ff5860" Font-Names='Arial Narrow'></asp:Label>

                                            </span>
                                            <span class="card__rate"><i class="icon ion-ios-star"></i>
                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("puan") %>'></asp:Label></span>
                                        </div>
                                    </div>
                                    <!-- end card -->
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:DataList ID="DataList4" runat="server">
                            <ItemTemplate>


                                <div class="item">
                                    <!-- card -->
                                    <div class="card card--big">
                                        <div class="card__cover">
                                            <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("img_name") %>' />
                                            <a href="detaylar.aspx?id=<%# Eval("id") %>" class="card__play">
                                                <i class="icon ion-ios-play"></i>
                                            </a>
                                        </div>
                                        <div class="card__content">
                                            <h3 class="card__title"><a href="detaylar.aspx?id=<%# Eval("id") %>">
                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("ad") %>'></asp:Label></a></h3>
                                            <span class="card__category">
                                                
                                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("tür") %>' ForeColor="#ff5860" Font-Names='Arial Narrow'></asp:Label>
                                            </span>
                                            <span class="card__rate"><i class="icon ion-ios-star"></i>
                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("puan") %>'></asp:Label></span>
                                        </div>
                                    </div>
                                    <!-- end card -->
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>


                </div>

            </div>

        </div>

    </section>


    <!-- end home -->

    <!-- content -->



    <section class="content">

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- content title -->
                    <h2 style="color:white;">Yeni Filmler</h2>
                    <!-- end content title -->
                </div>
            </div>
        </div>





        <div class="container">
            <!-- content tabs -->

            <div class="row">
                <!-- card -->



                <asp:DataList ID="DataList5" runat="server" CellSpacing="10" CellPadding="40" RepeatColumns="4">
                    <ItemTemplate>

                   
                    <div class="card">
                        <div class="card__cover">
                            <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("img_name") %>' Width="200" Height="300" />
                            <a href="detaylar.aspx?id=<%# Eval("id") %>" class="card__play">
                                <i class="icon ion-ios-play"></i>
                            </a>
                        </div>


                        <div class="card__content" runat="server">
                            <h3 class="card__title"><a href="detaylar.aspx?id=<%# Eval("id") %>">
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("ad") %>'></asp:Label></a></h3>
                            <span class="card__category">
                                
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("tür") %>'  ForeColor="#ff5860" Font-Names='Arial Narrow'></asp:Label>
                                
                            </span>
                            <span class="card__rate"><i class="icon ion-ios-star"></i>
                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("puan") %>'></asp:Label></span>
                        </div>

                    </div>
                    </ItemTemplate>
                         </asp:DataList>

              


                <!-- end card -->

               
            </div>








        </div>

    </section>

    <!-- end content -->





    <!-- footer -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <!-- footer list -->
                <div class="col-12 col-md-3">
                    <h6 class="footer__title">Uygulamamızı İndirin</h6>
                    <ul class="footer__app">
                        <li><a href="https://www.apple.com/tr/app-store/">
                            <img src="img/Download_on_the_App_Store_Badge.svg" alt=""></a></li>
                        <li><a href="https://play.google.com/store?hl=tr&gl=US">
                            <img src="img/google-play-badge.png" alt=""></a></li>
                    </ul>
                </div>
                <!-- end footer list -->

                <!-- footer list -->
                <div class="col-6 col-sm-4 col-md-3">
                    
                </div>
                <!-- end footer list -->

                <!-- footer list -->
                <div class="col-6 col-sm-4 col-md-3">
                    
                </div>
                <!-- end footer list -->

                <!-- footer list -->





                <div class="col-12 col-sm-4 col-md-3">
                    <h6 class="footer__title">Contact</h6>
                    <ul class="footer__list">
                        <li><a href="tel:555-999-88-77">+90 555-999-88-77</a></li>
                        <li><a href="mailto:semihuzun1999@gmail.com">semihuzun1999@gmail.com</a></li>
                    </ul>
                    <ul class="footer__social">
                        <li class="facebook"><a href="https://www.facebook.com"><i class="icon ion-logo-facebook"></i></a></li>
                        <li class="instagram"><a href="https://www.instagram.com"><i class="icon ion-logo-instagram"></i></a></li>
                        <li class="twitter"><a href="https://www.twitter.com"><i class="icon ion-logo-twitter"></i></a></li>
                        <li class="vk"><a href="https://www.vk.com"><i class="icon ion-logo-vk"></i></a></li>
                    </ul>
                </div>

                <!-- end footer list -->

                <!-- footer copyright -->
               
                <!-- end footer copyright -->
            </div>
        </div>

    </footer>
    <!-- end footer -->

    <!-- JS -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.mousewheel.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/wNumb.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/plyr.min.js"></script>
    <script src="js/jquery.morelines.min.js"></script>
    <script src="js/photoswipe.min.js"></script>
    <script src="js/photoswipe-ui-default.min.js"></script>
    <script src="js/main.js"></script>

</body>

</html>
