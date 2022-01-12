<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FinalProject.admin" %>

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
        
        <div class="sidebar__user" >
            <div class="sidebar__user-img">
                <img src="img/user.svg" alt="">
            </div>

            <div class="sidebar__user-title">
                <span>Admin</span>
                <asp:Label ID="Label1" runat="server" Text="" ForeColor="White" Font-Size="X-Large"></asp:Label>
            </div>


            <asp:Button ID="Button1" runat="server" Text="<" class="sidebar__user-btn" style="margin-left:20px;" Height="30px" OnClick="Button1_Click" Width="30px"/>
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
                        <h2>Katalog</h2>

                       

                        

                     
                </div>
                <!-- end main title -->

                <!-- users -->
                <div class="col-12">
                    <div class="main__table-wrap">
                        <table class="main__table" style="margin-bottom:20px;">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>FILM</th>
                                    <th>PUAN</th>
                                    <th>TÜR</th>
                                    <th>SÜRE</th>
                                    <th>URL</th>
                                    <th>AFİŞ</th>
                                    <th>DUZENLE</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>
                                        <div class="main__table-text">
                                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label></div>
                                    </td>
                                    <td>
                                        <div class="main__table-text">
                                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5"></asp:TextBox></div>
                                    </td>
                                    <td>
                                        <div class="main__table-text main__table-text--rate">
                                            <asp:TextBox ID="TextBox2" runat="server"  BackColor="#2b2b31" ForeColor="White"  BorderColor="#FF55A5"></asp:TextBox></div>
                                    </td>
                                    <td>
                                        <div class="main__table-text">
                                            <asp:TextBox ID="TextBox3" runat="server" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5"></asp:TextBox></div>
                                    </td>

                                    <td>
                                        <div class="main__table-text main__table-text--green">
                                            <asp:TextBox ID="TextBox4" runat="server" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5"></asp:TextBox></div>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#2b2b31" ForeColor="White"  BorderColor="#FF55A5"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" BackColor="#2b2b31" ForeColor="White"  BorderColor="#FF55A5"></asp:TextBox></td>
                                    <td>
                                        <div class="main__table-btns">
                                            <asp:Button ID="Button2" runat="server" Text="Güncelle" OnClick="Button2_Click" BackColor="#CCFF66" Width="70px"   />
                                            <asp:Button ID="Button3" runat="server" Text="Sil" OnClick="Button3_Click" BackColor="#CC3300"  Width="50px" style="margin-left:10px;"  />                                            
                                        </div>
                                    </td>
                                </tr>
                                <tr> 
                                    <td colspan ="2" style="color:white;text-align:center">AÇIKLAMA:</td>
                                    <td colspan="6">
                                        <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="1150px" height="150px" BackColor="#2b2b31" ForeColor="White" BorderColor="#FF55A5"></asp:TextBox></td>
                                </tr>
                                
                            
                              
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- end users -->

       
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#FF55A5" BorderColor="#FF55A5" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="3" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="White" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center" Width="1400px" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField HtmlEncode="false" DataField="id" HeaderText="ID" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField HtmlEncode="false" DataField="ad" HeaderText="İsim" SortExpression="ad" />
                <asp:BoundField HtmlEncode="false" DataField="puan" HeaderText="Puan" SortExpression="puan" />
                <asp:BoundField HtmlEncode="false" DataField="tür" HeaderText="Tür" SortExpression="tür" />
                <asp:BoundField HtmlEncode="false" DataField="süre" HeaderText="Süre" SortExpression="süre" />
                <asp:BoundField HtmlEncode="false" DataField="aciklama" HeaderText="Açıklama" SortExpression="aciklama" />
                <asp:BoundField HtmlEncode="false" DataField="video_url" HeaderText="Video Adresi" SortExpression="video_url" />
                <asp:BoundField HtmlEncode="false" DataField="img_name" HeaderText="Resim İsmi" SortExpression="img_name" />
            </Columns>
            <EditRowStyle ForeColor="#660066" />
            <EmptyDataRowStyle BackColor="#000066" BorderColor="#00CC66" ForeColor="#66FF66" />
            <FooterStyle BackColor="#0099FF" ForeColor="#00CCFF" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="#28282D" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:filmDatabaseConnectionString %>" DeleteCommand="DELETE FROM [filmTable] WHERE [id] = @original_id AND [ad] = @original_ad AND (([puan] = @original_puan) OR ([puan] IS NULL AND @original_puan IS NULL)) AND (([tür] = @original_tür) OR ([tür] IS NULL AND @original_tür IS NULL)) AND (([süre] = @original_süre) OR ([süre] IS NULL AND @original_süre IS NULL)) AND (([aciklama] = @original_aciklama) OR ([aciklama] IS NULL AND @original_aciklama IS NULL)) AND (([video_url] = @original_video_url) OR ([video_url] IS NULL AND @original_video_url IS NULL)) AND (([img_name] = @original_img_name) OR ([img_name] IS NULL AND @original_img_name IS NULL))" InsertCommand="INSERT INTO [filmTable] ([ad], [puan], [tür], [süre], [aciklama], [video_url], [img_name]) VALUES (@ad, @puan, @tür, @süre, @aciklama, @video_url, @img_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [filmTable]" UpdateCommand="UPDATE [filmTable] SET [ad] = @ad, [puan] = @puan, [tür] = @tür, [süre] = @süre, [aciklama] = @aciklama, [video_url] = @video_url, [img_name] = @img_name WHERE [id] = @original_id AND [ad] = @original_ad AND (([puan] = @original_puan) OR ([puan] IS NULL AND @original_puan IS NULL)) AND (([tür] = @original_tür) OR ([tür] IS NULL AND @original_tür IS NULL)) AND (([süre] = @original_süre) OR ([süre] IS NULL AND @original_süre IS NULL)) AND (([aciklama] = @original_aciklama) OR ([aciklama] IS NULL AND @original_aciklama IS NULL)) AND (([video_url] = @original_video_url) OR ([video_url] IS NULL AND @original_video_url IS NULL)) AND (([img_name] = @original_img_name) OR ([img_name] IS NULL AND @original_img_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_puan" Type="Double" />
                <asp:Parameter Name="original_tür" Type="String" />
                <asp:Parameter Name="original_süre" Type="Int32" />
                <asp:Parameter Name="original_aciklama" Type="String" />
                <asp:Parameter Name="original_video_url" Type="String" />
                <asp:Parameter Name="original_img_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="puan" Type="Double" />
                <asp:Parameter Name="tür" Type="String" />
                <asp:Parameter Name="süre" Type="Int32" />
                <asp:Parameter Name="aciklama" Type="String" />
                <asp:Parameter Name="video_url" Type="String" />
                <asp:Parameter Name="img_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ad" Type="String" />
                <asp:Parameter Name="puan" Type="Double" />
                <asp:Parameter Name="tür" Type="String" />
                <asp:Parameter Name="süre" Type="Int32" />
                <asp:Parameter Name="aciklama" Type="String" />
                <asp:Parameter Name="video_url" Type="String" />
                <asp:Parameter Name="img_name" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_ad" Type="String" />
                <asp:Parameter Name="original_puan" Type="Double" />
                <asp:Parameter Name="original_tür" Type="String" />
                <asp:Parameter Name="original_süre" Type="Int32" />
                <asp:Parameter Name="original_aciklama" Type="String" />
                <asp:Parameter Name="original_video_url" Type="String" />
                <asp:Parameter Name="original_img_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:filmDatabaseConnectionString %>" DeleteCommand="DELETE FROM [filmTable] WHERE [id] = @original_id AND [ad] = @original_ad AND (([puan] = @original_puan) OR ([puan] IS NULL AND @original_puan IS NULL)) AND (([tür] = @original_tür) OR ([tür] IS NULL AND @original_tür IS NULL)) AND (([süre] = @original_süre) OR ([süre] IS NULL AND @original_süre IS NULL)) AND (([aciklama] = @original_aciklama) OR ([aciklama] IS NULL AND @original_aciklama IS NULL)) AND (([video_url] = @original_video_url) OR ([video_url] IS NULL AND @original_video_url IS NULL)) AND (([img_name] = @original_img_name) OR ([img_name] IS NULL AND @original_img_name IS NULL))" InsertCommand="INSERT INTO [filmTable] ([ad], [puan], [tür], [süre], [aciklama], [video_url], [img_name]) VALUES (@ad, @puan, @tür, @süre, @aciklama, @video_url, @img_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [filmTable]" UpdateCommand="UPDATE [filmTable] SET [ad] = @ad, [puan] = @puan, [tür] = @tür, [süre] = @süre, [aciklama] = @aciklama, [video_url] = @video_url, [img_name] = @img_name WHERE [id] = @original_id AND [ad] = @original_ad AND (([puan] = @original_puan) OR ([puan] IS NULL AND @original_puan IS NULL)) AND (([tür] = @original_tür) OR ([tür] IS NULL AND @original_tür IS NULL)) AND (([süre] = @original_süre) OR ([süre] IS NULL AND @original_süre IS NULL)) AND (([aciklama] = @original_aciklama) OR ([aciklama] IS NULL AND @original_aciklama IS NULL)) AND (([video_url] = @original_video_url) OR ([video_url] IS NULL AND @original_video_url IS NULL)) AND (([img_name] = @original_img_name) OR ([img_name] IS NULL AND @original_img_name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_ad" Type="String" />
            <asp:Parameter Name="original_puan" Type="Double" />
            <asp:Parameter Name="original_tür" Type="String" />
            <asp:Parameter Name="original_süre" Type="Int32" />
            <asp:Parameter Name="original_aciklama" Type="String" />
            <asp:Parameter Name="original_video_url" Type="String" />
            <asp:Parameter Name="original_img_name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ad" Type="String" />
            <asp:Parameter Name="puan" Type="Double" />
            <asp:Parameter Name="tür" Type="String" />
            <asp:Parameter Name="süre" Type="Int32" />
            <asp:Parameter Name="aciklama" Type="String" />
            <asp:Parameter Name="video_url" Type="String" />
            <asp:Parameter Name="img_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ad" Type="String" />
            <asp:Parameter Name="puan" Type="Double" />
            <asp:Parameter Name="tür" Type="String" />
            <asp:Parameter Name="süre" Type="Int32" />
            <asp:Parameter Name="aciklama" Type="String" />
            <asp:Parameter Name="video_url" Type="String" />
            <asp:Parameter Name="img_name" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_ad" Type="String" />
            <asp:Parameter Name="original_puan" Type="Double" />
            <asp:Parameter Name="original_tür" Type="String" />
            <asp:Parameter Name="original_süre" Type="Int32" />
            <asp:Parameter Name="original_aciklama" Type="String" />
            <asp:Parameter Name="original_video_url" Type="String" />
            <asp:Parameter Name="original_img_name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
            
    </main>
    <!-- end main content -->

   


    
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
