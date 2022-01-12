<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_yorum.aspx.cs" Inherits="FinalProject.admin_yorum" %>

<!DOCTYPE html>
<html lang="en">


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
    <form runat="server">
        <!-- header -->
        <header class="header">
            <div class="header__content">
                <!-- header logo -->
                <a href="index.html" class="header__logo">
                    <img src="img/logo.svg" alt="">
                </a>
                <!-- end header logo -->

                <!-- header menu btn -->
                <button class="header__btn" type="button">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <!-- end header menu btn -->
            </div>
        </header>
        <!-- end header -->

        <!-- sidebar -->
        <div class="sidebar">
            <!-- sidebar logo -->
            <a href="index.html" class="sidebar__logo">
                <img src="img/logo.svg" alt="">
            </a>
            <!-- end sidebar logo -->

            <!-- sidebar user -->

            <div class="sidebar__user">
                <div class="sidebar__user-img">
                    <img src="img/user.svg" alt="">
                </div>

                <div class="sidebar__user-title">
                    <span>Admin</span>
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="White" Font-Size="X-Large"></asp:Label>
                </div>

                <asp:Button ID="Button1" runat="server" Text="<" class="sidebar__user-btn" Style="margin-left: 20px;" Height="30px" Width="30px" OnClick="Button1_Click" />
            </div>

            <!-- end sidebar user -->

            <!-- sidebar nav -->
            <ul class="sidebar__nav">
                <li class="sidebar__nav-item">
                    <a href="admin.aspx" class="sidebar__nav-link sidebar__nav-link--active"><i class="icon ion-ios-keypad"></i>Panel</a>
                </li>





                <li class="sidebar__nav-item">
                    <a href="admin_yorum.aspx" class="sidebar__nav-link"><i class="icon ion-ios-chatbubbles"></i>Yorumlar</a>
                </li>


                <li class="sidebar__nav-item">
                    <a href="admin_ekle.aspx" class="sidebar__nav-link"><i class="icon ion-ios-chatbubbles"></i>Film Ekle</a>
                </li>
                <!-- end dropdown -->
            </ul>
            <!-- end sidebar nav -->


        </div>
        <!-- end sidebar -->

        <!-- main content -->
        <main class="main">
            <div class="container-fluid">
                <div class="row">
                    <!-- main title -->
                    <div class="col-12">
                        <div class="main__title">
                            <h2>Yorumlar</h2>

                            <span class="main__title-stat"></span>

                       
                                <!-- end filter sort -->

                                <!-- search -->
                            
                    </div>
                </div>
                <!-- end main title -->

                <!-- comments -->
                <div class="col-12">
                    <div class="main__table-wrap">
                        <table class="main__table" style="margin-bottom: 20px;">
                            <thead>
                                <tr>
                                    <th colspan="2">ID</th>

                                    <th>İsim</th>
                                    <th>Tarih</th>
                                    <th>Görünürlük</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        <div class="main__table-text">
                                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                        </div>
                                    </td>


                                    <td>
                                        <div class="main__table-text main__table-text--green">
                                            <asp:TextBox ID="TextBox4" runat="server" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5" ReadOnly="true"></asp:TextBox></td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5" Width="100px">
                                            <asp:ListItem>Görünmez</asp:ListItem>
                                            <asp:ListItem>Görünür</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>

                                    <td>
                                        <div class="main__table-btns">

                                            <asp:Button ID="Button4" runat="server" Text="Onayla" BackColor="#CCFF66" Width="70px" OnClick="Button4_Click" />
                                            <asp:Button ID="Button2" runat="server" Text="Sil" BackColor="#CC3300" Width="50px" Style="margin-left: 10px;" OnClick="Button2_Click" /></div>
                                </tr>
                                <tr>
                                    <td colspan=YORUM:</td>
                                    <td colspan="6">
                                        <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="1150px" Height="150px" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5" ReadOnly="true"></asp:TextBox></td>
                                </tr>



                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- end comments -->

                <!-- paginator -->

                <!-- end paginator -->
            </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="yorum_id" DataSourceID="SqlDataSource1" BorderColor="#FF55A5" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="3" ForeColor="White" PageSize="5" HorizontalAlign="Center" Width="1400px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="yorum_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="yorum_id" HtmlEncode="false" />
                    <asp:BoundField DataField="onay" HeaderText="Onay" SortExpression="onay" HtmlEncode="false" />
                    <asp:BoundField DataField="isim" HeaderText="İsim" SortExpression="isim" HtmlEncode="false" />
                    <asp:BoundField DataField="tarih" HeaderText="Tarih" SortExpression="tarih" HtmlEncode="false" />
                    <asp:BoundField DataField="yorum" HeaderText="Yorum" SortExpression="yorum" HtmlEncode="false" />
                    <asp:BoundField DataField="film_id" HeaderText="Film Numarası" SortExpression="film_id" HtmlEncode="false" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:filmDatabaseConnectionString %>" DeleteCommand="DELETE FROM [yorumTable] WHERE [yorum_id] = @original_yorum_id AND (([isim] = @original_isim) OR ([isim] IS NULL AND @original_isim IS NULL)) AND (([tarih] = @original_tarih) OR ([tarih] IS NULL AND @original_tarih IS NULL)) AND (([yorum] = @original_yorum) OR ([yorum] IS NULL AND @original_yorum IS NULL)) AND (([onay] = @original_onay) OR ([onay] IS NULL AND @original_onay IS NULL)) AND (([film_id] = @original_film_id) OR ([film_id] IS NULL AND @original_film_id IS NULL))" InsertCommand="INSERT INTO [yorumTable] ([isim], [tarih], [yorum], [onay], [film_id]) VALUES (@isim, @tarih, @yorum, @onay, @film_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [yorumTable]" UpdateCommand="UPDATE [yorumTable] SET [isim] = @isim, [tarih] = @tarih, [yorum] = @yorum, [onay] = @onay, [film_id] = @film_id WHERE [yorum_id] = @original_yorum_id AND (([isim] = @original_isim) OR ([isim] IS NULL AND @original_isim IS NULL)) AND (([tarih] = @original_tarih) OR ([tarih] IS NULL AND @original_tarih IS NULL)) AND (([yorum] = @original_yorum) OR ([yorum] IS NULL AND @original_yorum IS NULL)) AND (([onay] = @original_onay) OR ([onay] IS NULL AND @original_onay IS NULL)) AND (([film_id] = @original_film_id) OR ([film_id] IS NULL AND @original_film_id IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_yorum_id" Type="Int32" />
                    <asp:Parameter Name="original_isim" Type="String" />
                    <asp:Parameter Name="original_tarih" Type="DateTime" />
                    <asp:Parameter Name="original_yorum" Type="String" />
                    <asp:Parameter Name="original_onay" Type="Boolean" />
                    <asp:Parameter Name="original_film_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="isim" Type="String" />
                    <asp:Parameter Name="tarih" Type="DateTime" />
                    <asp:Parameter Name="yorum" Type="String" />
                    <asp:Parameter Name="onay" Type="Boolean" />
                    <asp:Parameter Name="film_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="isim" Type="String" />
                    <asp:Parameter Name="tarih" Type="DateTime" />
                    <asp:Parameter Name="yorum" Type="String" />
                    <asp:Parameter Name="onay" Type="Boolean" />
                    <asp:Parameter Name="film_id" Type="Int32" />
                    <asp:Parameter Name="original_yorum_id" Type="Int32" />
                    <asp:Parameter Name="original_isim" Type="String" />
                    <asp:Parameter Name="original_tarih" Type="DateTime" />
                    <asp:Parameter Name="original_yorum" Type="String" />
                    <asp:Parameter Name="original_onay" Type="Boolean" />
                    <asp:Parameter Name="original_film_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </main>
        <!-- end main content -->





        <!-- modal delete -->
        <div id="modal-delete" class="zoom-anim-dialog mfp-hide modal">
            <h6 class="modal__title">Comment delete      <h6 class="modal__title">Comment delete</h6>

            <p class="modal__text">Are you sure to permanently delete this comment?</p>

            <div class="modal__btns">
                <button class="modal__btn modal__btn--apply" type="button">Delete</button>
                <button class="modal__btn modal__btn--dismiss" type="button">Dismiss</button>
            </div>
        </div>
        <!-- end modal delete -->

        <!-- JS -->
        <script src="js/jquery-3.5.1.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.mousewheel.min.js"></script>
        <script src="js/jquery.mCustomScrollbar.min.js"></script>
        <script src="js/select2.min.js"></script>
        <script src="js/admin.js"></script>

    </form>
</body>


</html>
