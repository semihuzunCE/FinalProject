<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_ekle.aspx.cs" Inherits="FinalProject.admin_ekle" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from dmitryvolkov.me/demo/flixgo2.0/admin/add-item.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 22 Dec 2021 17:34:42 GMT -->
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
		<div runat="server">
		<div class="sidebar__user">
			<div class="sidebar__user-img">
				<img src="img/user.svg" alt="">
			</div>

			<div class="sidebar__user-title">
				<span>Admin</span>
				<asp:Label ID="Label1" runat="server" Text="" ForeColor="White" Font-Size="X-Large"></asp:Label>
			</div>

			<asp:Button ID="Button1" runat="server" Text="<" class="sidebar__user-btn" style="margin-left:20px;" Height="30px" Width="30px" OnClick="Button1_Click"  />
		</div>
			</div>

		<!-- end sidebar user -->

		<!-- sidebar nav -->
		<ul class="sidebar__nav">
			<li class="sidebar__nav-item">
				<a href="admin.aspx" class="sidebar__nav-link sidebar__nav-link--active"><i class="icon ion-ios-keypad"></i> Panel</a>
			</li>

			

			<%--<li class="sidebar__nav-item">
				<a href="users.html" class="sidebar__nav-link"><i class="icon ion-ios-contacts"></i> Users</a>
			</li>--%>

			<li class="sidebar__nav-item">
				<a href="admin_yorum.aspx" class="sidebar__nav-link"><i class="icon ion-ios-chatbubbles"></i> Yorumlar</a>
			</li>

			
			<li class="sidebar__nav-item">
				<a href="admin_ekle.aspx" class="sidebar__nav-link"><i class="icon ion-ios-chatbubbles"></i> Film Ekle</a>
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
						<h2>Yeni Film Ekle</h2>
					</div>
				</div>
				<!-- end main title -->

				<!-- form -->
				<div class="col-12">
					<div action="#" class="form">
						<div class="row">
							<div class="col-12 col-md-5 form__cover">
								<div class="row">
									<div class="col-12 col-sm-6 col-md-12">
										<div class="form__img">
											<asp:Image ID="Image1" runat="server"  />
											
										</div>
									</div>
									<asp:FileUpload ID="FileUpload1"  runat="server" BackColor="#999999" BorderColor="#999999" accept=".png,.jpg,.jpeg" onchange="this.form.submit()"  />
								</div>
							</div>

							<div class="col-12 col-md-7 form__content">
								<div class="row">
									<div class="col-12">
										
										<asp:TextBox ID="TextBox1" runat="server"  class="form__input" placeholder="Film Adı" ></asp:TextBox>
									</div>

									<div class="col-12">
										
										<asp:TextBox ID="TextBox2" runat="server" class="form__textarea" placeholder="Açıklama" TextMode="MultiLine"></asp:TextBox>
									</div>

									<div class="col-12 col-sm-6 col-lg-3">
										
										<asp:TextBox ID="TextBox3" runat="server" class="form__input" placeholder="Film Süresi"></asp:TextBox>
									</div>

									<div class="col-12 col-sm-6 col-lg-3">
										
										<asp:TextBox ID="TextBox4" runat="server" class="form__input" placeholder="Film Türü"></asp:TextBox>
									</div>

								

									<div class="col-12 col-sm-6 col-lg-3">
										
										<asp:TextBox ID="TextBox5" runat="server" class="form__input" placeholder="Film Puanı"></asp:TextBox>
									</div>
									<div class="col-12 col-sm-6 col-lg-3">
										
										<asp:TextBox ID="TextBox6" runat="server" class="form__input" placeholder="Film Url"></asp:TextBox>
									</div>

									

									

									
								</div>
							</div>

							
							
							<div class="col-12">
								<div class="row">
									<!-- movie -->
									
									<!-- end movie -->

									<!-- tv series -->
									<div class="col-12">
										<div class="collapse multi-collapse" id="multiCollapseExample2">
											<!-- season -->
											<div class="form__season">
												<div class="form__season-title">
													<div class="row">
														<div class="col-12">
															<span class="form__title">Season #1</span>
														</div>

														<div class="col-12 col-sm-6 col-md-5 col-xl-6">
															<input type="text" class="form__input" placeholder="Season title">
														</div>

														<div class="col-12 col-sm-6 col-md-4 col-xl-4">
															<input type="text" class="form__input" placeholder="Season info">
														</div>

														<div class="col-12 col-sm-4 col-md-3 col-xl-2">
															<button class="form__btn form__btn--add">add season</button>
														</div>
													</div>
												</div>

												<!-- episode -->
												<div class="form__episode">
													<div class="row">
														<div class="col-12">
															<span class="form__title">Episode #1</span>
															<button class="form__delete" type="button">
																<i class="icon ion-ios-close"></i>
															</button>
														</div>

														<div class="col-12 col-md-6">
															<input type="text" class="form__input" placeholder="Episode title 1">
														</div>

														<div class="col-12 col-md-6">
															<input type="text" class="form__input" placeholder="Air date">
														</div>

														<div class="col-12">
															<div class="form__video">
																<label id="s1s1" for="form__video-upload1">Upload episode 1</label>
																<input data-name="#s1s1" id="form__video-upload1" name="s1s1" class="form__video-upload" type="file" accept="video/mp4,video/x-m4v,video/*">
															</div>
														</div>
													</div>
												</div>
												<!-- end episode -->

												<!-- episode -->
												<div class="form__episode">
													<div class="row">
														<div class="col-12">
															<span class="form__title">Episode #2</span>
															<button class="form__delete" type="button">
																<i class="icon ion-ios-close"></i>
															</button>
														</div>

														<div class="col-12 col-md-6">
															<input type="text" class="form__input" placeholder="Episode title 2">
														</div>

														<div class="col-12 col-md-6">
															<input type="text" class="form__input" placeholder="Air date">
														</div>

														<div class="col-12 col-sm-8 col-md-9 col-xl-10">
															<div class="form__video">
																<label id="s1s2" for="form__video-upload2">Upload episode 2</label>
																<input data-name="#s1s2" id="form__video-upload2" name="s1s2" class="form__video-upload" type="file" accept="video/mp4,video/x-m4v,video/*">
															</div>
														</div>

														<div class="col-12 col-sm-4 col-md-3 col-xl-2">
															<button class="form__btn form__btn--add">add episode</button>
														</div>
													</div>
												</div>
												<!-- end episode -->
											</div>
											<!-- end season -->
										</div>
									</div>
									<!-- end tv series -->

									<div class="col-12">
										
										<asp:Button ID="Button2" runat="server" Text="Ekle"  class="form__btn" OnClick="Button2_Click" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end form -->
			</div>
		</div>
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


<!-- Mirrored from dmitryvolkov.me/demo/flixgo2.0/admin/add-item.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 22 Dec 2021 17:34:42 GMT -->
</html>