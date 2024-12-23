<?php
include 'koneksi.php';
session_start();

$id = $_GET['id'];

$queryResult = $conn->query("DELETE FROM marker WHERE id='$id'");

if ($queryResult) {
    $_SESSION['pesan'] = 'Data apotik berhasil dihapus';
    echo "<script>
    window.location.href = 'marker.php';
    </script>";
}
?>