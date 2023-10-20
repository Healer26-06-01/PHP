<?php
require_once('check_login.php');
?>
<?php include "header.php" ?>

<?php include "sidebar.php" ?>
<?php
include "config.php";
try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  if (isset($_GET['id'])) {
    $stmt = $conn->prepare("SELECT * FROM booking where id='" . $_GET['id'] . "'");
    $stmt->execute();

    echo $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);

    $data = $stmt->fetch(PDO::FETCH_ASSOC);
  }
  foreach ($data as $value) {
?>
    <tr>
      <td><?php echo $value['id']; ?></td>
      <td><?php echo $value['traveller_id']; ?></td>


    </tr>
  <?php } ?>
<?php
} catch (PDOException $e) {
  echo "Error: " . $e->getMessage();
}
?>