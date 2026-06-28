
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Website Portal Desa Cikarag</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <!-- Favicons -->
  <link href="/assets/img/logo_desa.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="{{ asset('assets/css/chatbot.css') }}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/style.css" rel="stylesheet">

  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<body>

  @include('partials.header')

  <main id="main">

    @yield('content')

  </main><!-- End #main -->

  @include('partials.footer')

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="/assets/vendor/aos/aos.js"></script>
  <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/assets/js/main.js"></script>

  <!-- Sweet Alert -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  @include('sweetalert::alert')

  @include('partials.chatbot')
    <script src="{{ asset('assets/js/chatbot.js') }}"></script>

@if($announcement)
<div class="modal fade" id="announcementModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title">
                    📢 Pengumuman Desa
                </h5>

                <button type="button"
                        class="btn-close btn-close-white"
                        data-bs-dismiss="modal">
                </button>
            </div>

            <div class="modal-body">
                <h4>{{ $announcement->title }}</h4>

                <hr>

                {!! \Illuminate\Support\Str::limit(strip_tags($announcement->body), 300) !!}

                <br><br>

                <a href="/announcement/{{ $announcement->slug }}"
                   class="btn btn-primary">
                    Lihat Selengkapnya
                </a>
            </div>

        </div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {

    let key = 'announcement-{{ $announcement->id }}';

    if (!localStorage.getItem(key)) {
        let modal = new bootstrap.Modal(
            document.getElementById('announcementModal')
        );

        modal.show();

        localStorage.setItem(key, 'opened');
    }
});
</script>
@endif

<script>
document.addEventListener('DOMContentLoaded', function () {
    if (localStorage.getItem('announcement_read')) {
        document
            .getElementById('announcementBadge')
            ?.remove();
    }
});
</script>

</body>

</html>