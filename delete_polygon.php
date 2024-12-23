<?php
include 'koneksi.php';
session_start();

$id = $_GET['id'];

$queryResult = $conn->query("DELETE FROM polygon WHERE id='$id'");

if ($queryResult) {
    $_SESSION['pesan'] = 'Data kecamatan berhasil dihapus';
    echo "<script>
    window.location.href = 'polygon.php';
    </script>";
}
?>