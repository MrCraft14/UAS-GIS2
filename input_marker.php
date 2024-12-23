<?php include('template/header.php') ?>
<?php include('template/navbar.php') ?>
<?php include('koneksi.php');
session_start();
if (isset($_POST['simpan'])) {
    $nama = $_POST['nama'];
    $pemilik = $_POST['pemilik'];
    $alamat = $_POST['alamat'];
    $latitude = $_POST['latitude'];
    $longitude = $_POST['longitude'];

    $query = $conn->query("INSERT INTO marker(nama, pemilik, alamat, latitude, longitude)
    VALUES('$nama','$pemilik','$alamat','$latitude','$longitude')");

    if ($query) {
        $_SESSION['pesan'] = 'Data berhasil ditambahkan';
        echo "<script>window.location.href = 'marker.php'</script>";
    }
}
?>
<div class="page-content p-5" id="content">
    <button id="sidebarCollapse" type="button" class="btn btn-danger bg-danger rounded-pill shadow-sm px-4 mb-4"><i
            class="fa fa-bars mr-2"></i></button>
    <div class="row">
        <div class="col-lg-12 mb-2">
            <div id="maps" style="height:300px;"></div>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header">
                    Input Data
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>Nama</label>
                                <input type="text" class="form-control" name="nama" placeholder="Nama" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Pemilik</label>
                                <input type="text" class="form-control" name="pemilik" placeholder="Pemilik" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label>Alamat</label>
                                <input type="text" class="form-control" name="alamat" placeholder="Masukan Alamat" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label>Latitude</label>
                                <input type="text" class="form-control" name="latitude" id="latitude">
                            </div>
                            <div class="form-group col-md-4">
                                <label>Longitude</label>
                                <input type="text" class="form-control" name="longitude" id="longitude">
                            </div>
                        </div>
                        <button type="submit" name="simpan" class="btn btn-danger">simpan</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    let latlang = [0, 0];
    if (latlang[0] == 0 && latlang[1] == 0) {
        latlang = [-0.888027, 119.874639];
    }
    let mymap = L.map('maps').setView([-0.8931699926701577, 119.8647374574928], 14);
    let layerMap = L.tileLayer(
        'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibmF1ZmFsaGFtYmFsaTY1IiwiYSI6ImNtMnd4eWdlZDBidjYyanBwaHJnZ3FrbHAifQ.mJdw4Ew-5zOyObCXR8akhg', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
                '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
                'Imagery <a href="https://www.mapbox.com/">Mapbox</a>',
            id: 'mapbox/streets-v12',
        });
    mymap.addLayer(layerMap);

    let marker = new L.marker(latlang, {
        draggable: 'true'
    });

    marker.on('dragend', function(event) {
        let position = marker.getLatLng();
        marker.setLatLng(position).update();
        $("#latitude").val(position.lat);
        $("#longitude").val(position.lng);
    });

    mymap.addLayer(marker);
</script>
<?php include('template/footer.php') ?>