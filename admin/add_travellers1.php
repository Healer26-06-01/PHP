<?php
require_once('check_login.php');
?>
<?php include "header.php" ?>

<?php include "sidebar.php" ?>


<div class="page-wrapper">

    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-primary">Add Traveller Details</h3>
        </div>
        <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Travellers</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
        </div>
    </div>


    <div class="container-fluid">


        <div class="row justify-content-center">

            <div class="col-lg-6">


                <div class="card">
                    <div class="card-body">
                        <div class="form-validation">
                            <form class="form-valide" action="operations/travellers.php" method="post" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-username">Name <span class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="val-username" name="val-username" placeholder="Nhập tên">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-email">Email <span class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <input type="email" class="form-control" id="val-email" name="val-email" placeholder="Nhập địa chỉ email">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-password">Password <span class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <input type="password" class="form-control" id="val-password" name="val-password" placeholder="Nhập mật khẩu">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-confirm-password">Confirm Password <span class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <input type="password" class="form-control" id="val-confirm-password" name="val-confirm-password" placeholder="Nhập lại mật khẩu">
                                    </div>
                                </div>
                                <div class="dropdown">
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label" for="val-username">State Name <span class="text-danger">*</span></label>
                                        <div class="col-lg-6">
                                            <select name="state_name" class="form-control" data-toggle="dropdown" required>
                                                <option value=""> Chọn tỉnh</option>
                                                <option value="Tinh Lam Dong">Tỉnh Lâm Đồng</option>
                                            <option value="Tinh Long An">Tỉnh Long An</option>
                                            <option value="Tinh Tien Giang">Tỉnh Tiền Giang</option>
                                            <option value="Tinh Ben Tre">Tỉnh Bến Tre</option>
                                            <option value="Tinh Vinh Long">Tỉnh Vĩnh Long</option>
                                            <option value="Tinh Kien Giang">Tỉnh Kiên Giang</option>
                                            <option value="Tinh Hau Giang">Tỉnh Hậu Giang</option>
                                            <option value="Tinh Bac Lieu">Tỉnh Bạc Liêu</option>

                                            </select>
                                        </div>
                                    </div>
                                </div>




                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-digits">Mobile <span class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="val-digits" name="val-digits" placeholder="Nhập số điện thoại" maxlength="10" required="">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-suggestions">Address<span class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <textarea class="form-control" id="val-suggestions" name="val-suggestions" rows="5" placeholder="Nhập địa chỉ"></textarea>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-digits">Photo <span class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <input type="file" class="form-control" name="photo" required="">
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <div class="col-lg-8 ml-auto">
                                        <button type="submit" class="btn btn-primary" name="submit">Submit</button>

                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>

            </div>
        </div>

    </div>


    <?php include "footer.php" ?>