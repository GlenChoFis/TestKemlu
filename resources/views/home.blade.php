<!DOCTYPE html>
<html>

<head>
    <title>Negaras DataTable</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
        integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <!-- Make sure you put this AFTER Leaflet's CSS -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
        integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>

    <style>
        table {
            width: 100%;
        }

        .delete-btn {
            color: red;
            cursor: pointer;
        }

        #map {
            height: 400px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div id="map"></div>

        <h1 style="text-align: center">List Data Negara</h1>
        <table id="negarasTable" class="display">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Negara</th>
                    <th>Kawasan</th>
                    <th>Direktorat</th>
                    <th>Created_At</th>
                    <th>Action</th>
                </tr>
            </thead>

        </table>
    </div>

    <script>
        $(document).ready(function() {

            var map = L.map('map').setView([51.505, -0.09], 1);
            L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 19,
                attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
            }).addTo(map);
            $.ajax({
                type: "get",
                url: "/api/negara",
                success: function (response) {
                    response.data.negara.map((value)=>{
                        if(value.longitude && value.latitude){

                             L.marker([value.latitude, value.longitude]).addTo(map).bindPopup(`<b>${value.country_name}<br/>${value.region.nama_kawasan}<br/>${value.direktorat.nama_direktorat}</b>`);
                        }
                    });


                }
            });

            $('#negarasTable').DataTable({
                processing: true,
                serverSide: true,
                dom: 'rt',
                ajax: {
                    url: '/api/negara',
                    dataSrc: 'data.negara', // tells DataTables where to find the data
                    data: function(d) {
                        // You can manipulate the data here if needed
                        console.log(d)
                    },

                },
                columns: [{
                        data: 'id'
                    },
                    {
                        data: 'country_name'
                    },
                    {
                        data: 'region.nama_kawasan'
                    },
                    {
                        data: 'direktorat.nama_direktorat'
                    },
                    {
                        data: 'created_at'
                    },
                    {
                        data: 'id', // Use the 'id' field for the button's onclick
                        render: function(data, type, row) {
                            return `<button onClick="deleteNegara(${data})" class="delete-btn">Delete</button>`;
                        },
                        orderable: false,
                        searchable: false
                    }
                    // data:"id_negara",
                ]
            });
        });


        function deleteNegara(id) {
            if (confirm('Are you sure you want to delete this country?')) {
                $.ajax({
                    url: '/api/negara/' + id,
                    type: 'DELETE',
                    success: function(result) {
                        alert('Country deleted successfully.');
                        location.reload();
                    },
                    error: function(xhr, status, error) {
                        alert('An error occurred while deleting the country.');
                    }
                });
            }
        }
    </script>
</body>

</html>
