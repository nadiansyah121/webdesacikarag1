@extends('layouts.main')

@section('content')

<div class="container py-5">

    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h3 class="mb-0">Tentang Website Desa Cikarag</h3>
        </div>

        <div class="card-body">

            <h4>Informasi Aplikasi</h4>

            <table class="table table-bordered">
                <tr>
                    <th width="30%">Nama Aplikasi</th>
                    <td>Website Portal Desa Cikarag</td>
                </tr>

                <tr>
                    <th>Versi Aplikasi</th>
                    <td>v1.0.0</td>
                </tr>

                <tr>
                    <th>Tahun Pembuatan</th>
                    <td>2026</td>
                </tr>
            </table>

            <h4 class="mt-4">Developer</h4>

            <table class="table table-bordered">
                <tr>
                    <th width="30%">Nama Developer</th>
                    <td>Mahasiswa Bina Sarana Informatika Angkatan 2023</td>
                    
                </tr>

                <tr>
                    <th>Deskripsi</th>
                    <td>
                        Website ini dibuat sebagai media informasi dan pelayanan
                        digital Desa Cikarag untuk membantu masyarakat memperoleh
                        informasi desa secara cepat dan mudah.
                    </td>
                </tr>
            </table>

            <h4 class="mt-4">Fitur Website</h4>

            <ul>
                <li>Dashboard Informasi Desa</li>
                <li>Berita Desa</li>
                <li>UMKM Desa</li>
                <li>Layanan Desa</li>
                <li>Pengumuman</li>
                <li>Data Statistik Desa</li>
                <li>ChatBot AI Desa</li>
            </ul>

            <div class="alert alert-info mt-4">
                Terima kasih kepada semua pihak yang telah mendukung pembangunan
                Website Portal Desa Cikarag.<br>Semoga website ini dapat memberikan
                manfaat bagi masyarakat dan menjadi kenang-kenangan atas proses
                pengembangan digital desa.
            </div>

        </div>
    </div>

</div>

@endsection