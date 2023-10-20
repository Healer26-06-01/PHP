<?php include "header.php" ?>



<?php include "sidebar.php" ?>

<div class="page-wrapper">

    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-primary">Dashboard</h3>
        </div>
        <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
        </div>
    </div>


    <div style="margin-left:250px " class="container-fluid">

        <div class="row">

            <div class="card card-outline-primary">
                <div class="card-header">
                    <h4 class="m-b-0 text-white">Traveller Booking</h4>
                </div>
                <div class="card-body">
                    <form action="#">
                        <div class="form-body">
                            <h3 class="card-title m-t-15">Person Info</h3>
                            <hr>
                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Name</label>
                                        <input type="text" id="val-username" class="form-control" name="val-username" placeholder="Nhập tên">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <label class="control-label">Email</label>
                                        <input type="email" id="val-email" class="form-control" name="val-email" placeholder="Nhập địa chỉ email">
                                    </div>
                                </div>

                            </div>


                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Password </label>
                                        <input type="password" id="val-password" class="form-control" name="val-password" placeholder="Nhập mật khẩu">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <label class="control-label">Confirm Password </label>
                                        <input type="password" id="val-confirm-password" class="form-control" name="val-confirm-password" placeholder="Nhập lại mật khẩu">
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Gender</label>
                                        <select name="state_name" class="form-control custom-select" data-toggle="dropdown" required>
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

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <label class="control-label">Mobile </label>
                                        <input type="text" class="form-control" id="val-digits" name="val-digits" placeholder="Nhập số điện thoại" maxlength="10" required="">
                                    </div>
                                </div>

                            </div>


                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Address </label>
                                        <textarea class="form-control" id="val-suggestions" name="val-suggestions" rows="5" placeholder="Nhập địa chỉ"></textarea>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <label class="control-label">Photo</label>
                                        <input type="file" class="form-control" name="photo" required="">
                                    </div>
                                </div>

                            </div>





                        </div>
                        <div class="form-actions">

                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>
                            <button type="button" class="btn btn-inverse">Cancel</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>


    <?php include "footer.php" ?>