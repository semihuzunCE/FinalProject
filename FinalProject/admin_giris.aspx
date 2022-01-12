<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_giris.aspx.cs" Inherits="FinalProject.admin_giris" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from dmitryvolkov.me/demo/flixgo2.0/admin/signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 22 Dec 2021 17:34:42 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="css/select2.min.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/admin.css">

    <!-- Favicons -->
    <link rel="icon" type="image/png" href="icon/favicon-32x32.png" sizes="32x32">
    <link rel="apple-touch-icon" href="icon/favicon-32x32.png">

    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Dmitry Volkov">
    <title>FlixGo – Online Movies, TV Shows & Cinema HTML Template</title>

</head>
<body>

    <div class="sign section--bg" data-bg="img/section/section.jpg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="sign__content">
                        <!-- authorization form -->
                        <form action="#" class="sign__form" runat="server">
                            <a href="index.aspx" class="sign__logo">
                                <img src="img/logo.svg" alt="">
                            </a>

                            <div class="sign__group">
                                
                                <asp:TextBox ID="TextBox1" runat="server" class="sign__input" placeholder="ID" ></asp:TextBox>
                            </div>

                            <div class="sign__group">
                                <asp:TextBox ID="TextBox2" runat="server"  class="sign__input" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                            </div>
                             <div class="sign__group">
                                 <asp:Button ID="Button1" runat="server" Text="Giriş" class="sign__input" OnClick="Button1_Click"  />
                            </div>
                            <div class="sign__group">
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="#CC3300"></asp:Label>
                            </div>

                           

                            <%--<button class="sign__btn" type="button">Sign in</button>

                            <span class="sign__text">Don't have an account? <a href="signup.html">Sign up!</a></span>

                            <span class="sign__text"><a href="forgot.html">Forgot password?</a></span>--%>
                        </form>
                        <!-- end authorization form -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JS -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.mousewheel.min.js"></script>
    <script src="js/jquery.mCustomScrollbar.min.js"></script>
    <script src="js/select2.min.js"></script>
    <script src="js/admin.js"></script>
</body>

<!-- Mirrored from dmitryvolkov.me/demo/flixgo2.0/admin/signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 22 Dec 2021 17:34:43 GMT -->
</html>
