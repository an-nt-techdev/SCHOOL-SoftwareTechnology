<!DOCTYPE html>
<html>
	<head>
		<?php require_once('layout/head.php'); ?>
	</head>
	
	<body class="bg-light">
		
		<?php
			//echo var_dump($data->getUserName_id());
			//echo $kind;
		?>

		<div class="container-fluid">
			<?php require_once('layout/header.php'); ?>
			 <!-- End Header -->
			
			<div class="row">
				<?php require_once('layout/sidebar.php'); ?>
				<!-- End Siderbar -->
				
				<div class="col-xl-10 col-lg-9">
					<div class="row">
						<section class="col-xl-12">
							<article class="bg-white border rounded p-3 mt-3">
								<h3 class="text-center mb-3">Thông tin</h3>
								<hr>
								
								<div class="row">
									<div class="col-md-3">
										<img class="rounded-circle w-100" src="<?php if ($kind != 'user') echo $data->getImage(); else echo 'View/images/male.png'; ?>">
									</div>
									<div class="col-md-9 pl-5">
<?php if ($kind == 'user') {?>
										<div class="row">
											<h5 class="col-3">Tài khoản</h5>
											<p class="col-9">: <?php echo $data->getUsername_id(); ?></p>
										</div>
										<div class="row">
											<h5 class="col-3">Họ tên</h5>
											<p class="col-9">: <?php echo $data->getName(); ?></p>
										</div>
										<div class="row">
											<h5 class="col-3">Ngày sinh</h5>
											<p class="col-9">: <?php echo $data->getBirthday(); ?></p>
										</div>
										<div class="row">
											<h5 class="col-3">Email</h5>
											<p class="col-9">: <?php echo $data->getEmail(); ?></p>
										</div>
										<div class="row">
											<h5 class="col-3">Giới tính</h5>
											<p class="col-9">: <?php if ($data->getSex() == 0) echo "Nam"; else echo "Nữ"; ?></p>
										</div>
<?php 
}
else {?>
										<div class="row">
											<h5 class="col-3"><b>Họ tên:</b></h5>
											<p class="col-12"><?php echo $data->getName(); ?></p>
										</div>
										<div class="row">
											<h5 class="col-3"><b>Thông tin:</b></h5> 
											<p class="col-12" style="text-align: justify;"> <?php echo $data->getDetail(); ?></p>
										</div>
<?php } ?>
									</div>
								</div>
							</article>
							<!-- Show Information -->

<?php if ($kind != 'user' && $kind == 'singer') {?>
							<article class="bg-white border rounded p-3 mt-3">
								<h3>Những ca khúc của <?php echo $data->getName(); ?>:</h3>
								<section class="col-xl-13 py-3">
									<article class="bg-white border rounded p-3">
										<!-- <h3 class="text-center">Top trong tuần</h3> -->
										
										<table class="table table-hover table-striped rank">
											<thead>
												<th scope="col"><h3>Tên bài hát</h3></th>
												<th scope="col"><h3>Điểm</h3></th>
											</thead>
											<tbody>
											<?php 
												require_once SITE_ROOT.'/Model/WatchModel.php';
												require_once SITE_ROOT.'/Services/SongService.php';
												$ser = new SongService();
												$model = new WatchModel();
												$l = $ser->getSongBySingerId($data->getId());
												foreach ($l as $s) {
													$song = $model->getSongDetail($s->getId());
												?>
												<tr>
													<th><p class="name-song"><a href="?v=<?php echo $song->getSong_id(); ?>"><?php echo $song->getNameSong(); ?></a></p></th>
													<td class="score"><?php echo number_format($song->getPoint(),2); ?> <i class="fas fa-star"></i></td>
												</tr>
												<?php } ?>
											</tbody>
										</table>
									</article>
								</section>
							</article>
							<!-- End Introduction music -->
<?php } 
	else if ($kind == 'composer') {
?>
							<article class="bg-white border rounded p-3 mt-3">
								<h3>Những sáng tác của nhạc sĩ <?php echo $data->getName(); ?>:</h3>
								<section class="col-xl-13 py-3">
									<article class="bg-white border rounded p-3">
										<!-- <h3 class="text-center">Top trong tuần</h3> -->
										
										<table class="table table-hover table-striped rank">
											<thead>
												<th scope="col"><h3>Tên bài hát</h3></th>
												<th scope="col"><h3>Điểm</h3></th>
											</thead>
											<tbody>
											<?php 
												require_once SITE_ROOT.'/Model/WatchModel.php';
												require_once SITE_ROOT.'/Services/SongService.php';
												$ser = new SongService();
												$model = new WatchModel();
												$l = $ser->getSongByComposerId($data->getId());
												foreach ($l as $s) {
													$song = $model->getSongDetail1($s->getId());
												?>
												<tr>
													<th><p class="name-song"><a href="?v=<?php echo $song->getSong_id(); ?>"><?php echo $song->getNameSong(); ?></a></p></th>
													<td class="score"><?php echo number_format($song->getPoint(),2); ?> <i class="fas fa-star"></i></td>
												</tr>
												<?php } ?>
											</tbody>
										</table>
									</article>
								</section>
							</article>
							<!-- End Introduction music -->
<?php } ?>
<?php if ($kind == 'user') {?>
							<article class="bg-white border rounded p-3 mt-3">
								<h3>Cập nhật thông tin</h3>
								<hr>
								
								<form action="?page=infor&user=<?php echo $data->getUsername_id(); ?>&u=true" method="post">
									<div class="form-group form-row">
										<label class="col-md-3">Họ Tên:</label>
										<input class="col-md-4 form-control" type="text" name="name" 
											value="<?php echo $data->getName();?>">
									</div>
									
									<div class="form-group form-row">
										<label class="col-md-3">Ngày sinh:</label>
										<input class="col-md-4 form-control" type="date" name="birthday"
											value="<?php echo $data->getBirthday();?>">
									</div>
									
									<div class="form-group form-row">
										<label class="col-md-3">Email:</label>
										<input class="col-md-4 form-control" type="email" name="email"
											value="<?php echo $data->getEmail();?>">
									</div>
									
									<div class="form-group form-row">
										<label class="col-md-3">Giới tính:</label>
										<select class="col-md-4 form-control" name="sex">
											<option value="0" <?php if ($data->getSex() == 0) echo "selected"; ?> >Nam</option>
											<option value="1" <?php if ($data->getSex() == 1) echo "selected"; ?> >Nữ</option>
										</select>
									</div>
									<input class="btn btn-primary" type="submit" value="Cập nhật">
								</form>
							</article>
							<!-- End Edit Information -->
							
							<article class="bg-white border rounded p-3 mt-3">
								<h3>Đổi mật khẩu</h3>
								<hr>
								<form action="?page=infor&user=<?php echo $data->getUsername_id(); ?>&pass=true" method="post">
									<div class="form-group form-row">
										<label class="col-md-3">Mật khẩu:</label>
										<input class="col-md-4 form-control" type="password" name="password" placeholder="Mật khẩu..." required>
									</div>
									<div class="form-group form-row">
										<label class="col-md-3">Mật khẩu mới:</label>
										<input class="col-md-4 form-control" type="password" name="newPassword" placeholder="Mật khẩu mới..." required>
									</div>
									<div class="form-group form-row">
										<label class="col-md-3">Nhập lại mật khẩu:</label>
										<input class="col-md-4 form-control" type="password" name="againPassword" placeholder="Mật khẩu mới..." required>
									</div>
									
									<input class="btn btn-primary" type="submit" value="Đổi mật khẩu">
								</form>
							</article>
							<!-- End Edit Password -->
<?php } ?>
						</section>
						<!-- End Content -->
					</div>
					<!-- End Main Content -->
					
					<div class="row pt-3">
						<?php require_once('layout/footer.php'); ?>
					</div>
					<!-- End footer -->
					
				</div>
			</div>
		</div>
		
		<?php require_once('layout/loadScript.php'); ?>
	</body>
</html>