<?php
    $conn = new mysqli("localhost", "root", "", "uas_pk_gis");

    if (!$conn) {
        echo 'koneksi gagal';
    }
?>