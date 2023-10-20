<?php
require_once('check_login.php');
?>
<?php include "header.php" ?>

<?php include "sidebar.php" ?>

<div class="page-wrapper">

    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-primary">Expense Report</h3>
        </div>
        <div class="col-md-7 align-self-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Expense Report</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>
        </div>
    </div>

    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12">
                <div class="card card-outline-primary">

                    <div class="card-body">
                        <form class="form-valide" method="post">
                            <div class="form-body">
                                <h3 class="card-title m-t-15">Expense Report</h3>
                                <hr>
                                <div class="row p-t-20">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">From Date </label>
                                            <input type="date" class="form-control" name="from_date">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label class="control-label">To Date </label>
                                            <input type="date" class="form-control" name="to_date">
                                        </div>
                                    </div>

                                </div>




                            </div>
                            <div class="form-actions">

                                <button type="submit" class="btn btn-success" name="submit"> <i class="fa fa-check"></i> Show</button>
                                <a href="expense_report.php"><button type="button" class="btn btn-inverse">Cancel</button></a>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>



    <div class="container-fluid">

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <?php
                        if (isset($_SESSION['reply'])) {
                            print '<div class="alert alert-success mb-2" role="alert">' . $_SESSION['reply'] . '</div>';
                            unset($_SESSION['reply']);
                        }
                        ?>


                        <div class="table-responsive m-t-40">
                            <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Expense For</th>
                                        <th>Expense Name</th>
                                        <th>Amount</th>
                                        <th>Created Date</th>
                                        <th>Status</th>


                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>Id</th>
                                        <th>Expense For</th>
                                        <th>Expense Name</th>
                                        <th>Amount</th>
                                        <th>Created Date</th>
                                        <th>Status</th>

                                    </tr>
                                </tfoot>
                                <tbody>

                                    <?php
                                    include "config.php";

                                    try {

                                        if (isset($_POST['submit'])) {
                                            $from_date = $_POST['from_date'];
                                            $to_date = $_POST['to_date'];
                                            $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                                            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                                            $stmt = $conn->prepare("SELECT * FROM expense where created_date between '" . $_POST['from_date'] . "' and '" . $_POST['to_date'] . "'");
                                            $stmt->execute();


                                            $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
                                            $data = $stmt->fetchAll();



                                            foreach ($data as $value) {
                                                $stmt1 = $conn->prepare("SELECT * FROM expense_category where id='" . $value['expense_name'] . "'");
                                                $stmt1->execute();
                                                $abc = $stmt1->setFetchMode(PDO::FETCH_ASSOC);
                                                $expense = $stmt1->fetch(PDO::FETCH_ASSOC);


                                    ?>
                                                <tr>
                                                    <td><?php echo $value['id']; ?></td>
                                                    <td><?php echo $value['expense_for']; ?></td>
                                                    <td><?php echo $expense['expense_name']; ?></td>
                                                    <td><?php echo $value['amount']; ?></td>
                                                    <td><?php echo $value['created_date']; ?></td>
                                                    <td><?php echo $expense['status']; ?></td>





                                                </tr>
                                            <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


            </div>
        </div>

    </div>

<?php

                                        }
                                    } catch (PDOException $e) {
                                        echo "Error: " . $e->getMessage();
                                    }
?>





</tbody>
</table>
</div>
</div>
</div>


</div>
</div>

</div>

<?php include "footer.php";
