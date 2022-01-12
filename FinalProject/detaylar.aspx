<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detaylar.aspx.cs" Inherits="FinalProject.detaylar" %>

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

       
    </header>
    <!-- end header -->

    <!-- details -->

    <section class="section details">
        <!-- details background -->
        <div class="details__bg" data-bg="img/home/home__bg.jpg"></div>
        <!-- end details background -->

        <!-- details content -->



        <div class="container">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <!-- datalist başlangıc-->
                    <div class="row">
                        <!-- title -->
                        <div class="col-12">
                            <h1 class="details__title">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ad") %>'></asp:Label></h1>
                            <!-- Film isminin alındıgı kısım -->
                        </div>
                        <!-- end title -->

                        <!-- content -->
                        <div class="col-12 col-xl-6">
                            <div class="
						
						
						
						
						card--details">

                                <div class="row">
                                    <!-- card cover -->
                                    <div class="col-12 col-sm-4 col-md-4 col-lg-3 col-xl-5">
                                        <div class="card__cover">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img_name") %>' />
                                            <!-- film afiş isimlerinin alındıgı kısım -->
                                        </div>
                                    </div>
                                    <!-- end card cover -->

                                    <!-- card content -->
                                    <div class="col-12 col-sm-8 col-md-8 col-lg-9 col-xl-7">
                                        <div class="card__content">
                                            <div class="card__wrap">
                                                <span class="card__rate"><i class="icon ion-ios-star">
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("puan") %>'></asp:Label></i></span>
                                                <!-- Film puanının alındıgı kısım -->

                                                <ul class="card__list">
                                                    <li>HD</li>
                                                    <li>16+</li>
                                                </ul>
                                            </div>

                                            <ul class="card__meta">
                                                <li><span>Tür:</span> <a href="#">
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("tür") %>'></asp:Label></a>
                                                    <!-- Film türünün alındıgı kısım -->
                                                    <li><span>Süre:</span>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("süre") %>' ForeColor="#FF33CC"></asp:Label>
                                                    </li>
                                                <!-- Film süresinin alındıgı kısım -->

                                            </ul>

                                            <div class="card__description card__description--details">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("aciklama") %>'></asp:Label>
                                                <!-- Film açıklamasının alındıgı kısım -->

                                            </div>
                                        </div>
                                    </div>
                                    <!-- end card content -->
                                </div>
                            </div>
                        </div>
                        <!-- end content -->

                        <!-- player -->
                        <div class="col-12 col-xl-6">
                            <div class="container">
                                <div id="player" data-plyr-provider="youtube" data-plyr-embed-id='<%# Eval("video_url") %>'></div>
                                <!-- Film urlsi burdan alınıyor-->

                            </div>
                        </div>
                        <!-- end player -->

                        <div class="col-12">
                            <div class="details__wrap">
                                <!-- availables -->
                                <div class="details__devices">
                                    <span class="details__devices-title">Uygun Cihazlar:</span>
                                    <ul class="details__devices-list">
                                        <li><i class="icon ion-logo-apple"></i><span>IOS</span></li>
                                        <li><i class="icon ion-logo-android"></i><span>Android</span></li>
                                        <li><i class="icon ion-logo-windows"></i><span>Windows</span></li>
                                        <li><i class="icon ion-md-tv"></i><span>Smart TV</span></li>
                                    </ul>
                                </div>
                                <!-- end availables -->

                                <!-- share -->
                               
                                <!-- end share -->
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <!-- datalist sonu..-->
        </div>

        <!-- end details content -->
    </section>

    <!-- end details -->

    <!-- content -->
    <section class="content">
        <div class="content__head">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- content title -->
                        <h2 class="content__title"></h2>
                        <!-- end content title -->

                        <!-- content tabs nav -->
                        <ul class="nav nav-tabs content__tabs" id="content__tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" role="tab" aria-controls="tab-1" aria-selected="true">Yorumlar</a>
                            </li>

                            
                        </ul>
                        <!-- end content tabs nav -->

                        <!-- content mobile tabs nav -->
                        <div class="content__mobile-tabs" id="content__mobile-tabs">
                            <div class="content__mobile-tabs-btn dropdown-toggle" role="navigation" id="mobile-tabs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <input type="button" value="Comments">
                                <span></span>
                            </div>

                            <div class="content__mobile-tabs-menu dropdown-menu" aria-labelledby="mobile-tabs">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item"><a class="nav-link active" id="1-tab" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">Comments</a></li>

                                    <%--<li class="nav-item"><a class="nav-link" id="2-tab" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">Reviews</a></li>

									<li class="nav-item"><a class="nav-link" id="3-tab" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false">Photos</a></li>--%>
                                </ul>
                            </div>
                        </div>
                        <!-- end content mobile tabs nav -->
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8 col-xl-8">
                    <!-- content tabs -->
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="1-tab">
                            <div class="row">
                                <!-- comments -->
                                

                                    
                                <div class="col-12">
                                    <div class="comments">
                                        <asp:DataList ID="DataList2" runat="server">
                                    <ItemTemplate>
                                        <ul class="comments__list">
                                            <li class="comments__item">
                                                <div class="comments__autor">
                                                    <img class="comments__avatar" src="img/kullanıcı.png" alt="">
                                                    
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("isim") %>' class="comments__name"></asp:Label>                                                 
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("tarih") %>' class="comments__time"></asp:Label>
                                                </div>
                                                
                                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("Yorum") %>' class="comments__text"></asp:Label>
                                                
                                            </li>
                                        </ul>
                                          </ItemTemplate>
                                </asp:DataList>
                                        <form action="#" class="form" runat="server">
                                            
                                            <asp:TextBox ID="TextBox1" runat="server" class="form__textarea" placeholder="isim" Height="30px" Style="margin-bottom:10px;" ></asp:TextBox>
                                            <asp:TextBox ID="TextBox2" runat="server" class="form__textarea" placeholder="Yorum Ekle" TextMode="MultiLine"></asp:TextBox>            
                                            <asp:Button ID="Button1" runat="server" Text="Yorum Yaz" class="form__btn" OnClick="Button1_Click" />
                                        </form>
                                    </div>
                                </div>
                                      
                                <!-- end comments -->
                            </div>
                        </div>


                    </div>
                    <!-- end content tabs -->
                </div>


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

    <!-- Root element of PhotoSwipe. Must have class pswp. -->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

        <!-- Background of PhotoSwipe. 
		It's a separate element, as animating opacity is faster than rgba(). -->
        <div class="pswp__bg"></div>

        <!-- Slides wrapper with overflow:hidden. -->
        <div class="pswp__scroll-wrap">

            <!-- Container that holds slides. PhotoSwipe keeps only 3 slides in DOM to save memory. -->
            <!-- don't modify these 3 pswp__item elements, data is added later on. -->
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>

            <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
            <div class="pswp__ui pswp__ui--hidden">

                <div class="pswp__top-bar">

                    <!--  Controls are self-explanatory. Order can be changed. -->

                    <div class="pswp__counter"></div>

                    <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                    <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                    <!-- Preloader -->
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                            <div class="pswp__preloader__cut">
                                <div class="pswp__preloader__donut"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>

                <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>

                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>
        </div>
    </div>

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
