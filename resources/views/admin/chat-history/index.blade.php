@extends('admin.layouts.main')

@section('content')

<div class="row mb-4">

  <div class="col-lg-3">
    <div class="card overflow-hidden bg-primary text-white">
      <div class="card-body p-4">
        <h5 class="card-title mb-3 fw-semibold text-white">
          Total Pertanyaan
        </h5>

        <div class="row align-items-center">
          <div class="col-8">
            <h4 class="fw-semibold mb-0 text-white">
              {{ $totalChat }}
            </h4>
          </div>

          <div class="col-4">
            <div class="d-flex justify-content-center">
              <i class="ti ti-message-chatbot" style="font-size:2rem;"></i>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

  <div class="col-lg-3">
    <div class="card overflow-hidden bg-success text-white">
      <div class="card-body p-4">
        <h5 class="card-title mb-3 fw-semibold text-white">
          Pertanyaan Hari Ini
        </h5>

        <div class="row align-items-center">
          <div class="col-8">
            <h4 class="fw-semibold mb-0 text-white">
              {{ $todayChat }}
            </h4>
          </div>

          <div class="col-4">
            <div class="d-flex justify-content-center">
              <i class="ti ti-calendar-event" style="font-size:2rem;"></i>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

  <div class="col-lg-3">
    <div class="card overflow-hidden bg-warning text-white">
      <div class="card-body p-4">
        <h5 class="card-title mb-3 fw-semibold text-white">
          7 Hari Terakhir
        </h5>

        <div class="row align-items-center">
          <div class="col-8">
            <h4 class="fw-semibold mb-0 text-white">
              {{ $weekChat }}
            </h4>
          </div>

          <div class="col-4">
            <div class="d-flex justify-content-center">
              <i class="ti ti-calendar-stats" style="font-size:2rem;"></i>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

  <div class="col-lg-3">
    <div class="card overflow-hidden bg-danger text-white">
      <div class="card-body p-4">
        <h5 class="card-title mb-3 fw-semibold text-white">
          Bulan Ini
        </h5>

        <div class="row align-items-center">
          <div class="col-8">
            <h4 class="fw-semibold mb-0 text-white">
              {{ $monthChat }}
            </h4>
          </div>

          <div class="col-4">
            <div class="d-flex justify-content-center">
              <i class="ti ti-calendar-event" style="font-size:2rem;"></i>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

</div>


</div>

<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">

            <div class="card-header bg-primary">
                <div class="row align-items-center">
                    <div class="col-6">
                        <h5 class="card-title fw-semibold text-white">
                            Riwayat Chatbot
                        </h5>
                    </div>

                <div class="col-6 text-end">

                    <button type="button"
                            class="btn btn-danger swal-confirm"
                            data-form="form-hapus-semua">
                        Hapus Semua
                    </button>

                    <form id="form-hapus-semua"
                        action="{{ route('chat-history.clear') }}"
                        method="POST">
                        @csrf
                        @method('DELETE')
                    </form>

                </div>
                </div>
            </div>

            <div class="card-body">

                <div class="table-responsive">
                    <table id="table_id" class="table display">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Waktu</th>
                                <th>Pertanyaan</th>
                                <th>Jawaban</th>
                                <th>Opsi</th>
                            </tr>
                        </thead>

                        <tbody>
                            @foreach ($histories as $chat)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>

                                    <td>
                                        {{ $chat->created_at->format('d-m-Y H:i') }}
                                    </td>

                                    <td>
                                        {{ $chat->question }}
                                    </td>

                                    <td>
                                        {!! nl2br(e($chat->answer)) !!}
                                    </td>

                                    <td>
                                        <form
                                            id="hapus-{{ $chat->id }}"
                                            action="{{ route('chat-history.destroy', $chat->id) }}"
                                            method="POST"
                                            class="d-inline">

                                            @csrf
                                            @method('DELETE')

                                            <button type="button"
                                                class="btn btn-danger swal-confirm"
                                                data-form="hapus-{{ $chat->id }}">
                                                <i class="ti ti-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>

                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {
    $('#table_id').DataTable();
});
</script>
<script>


  <script src="/admin/assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="/admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
  <script src="/admin/assets/js/sidebarmenu.js"></script>
  <script src="/admin/assets/js/app.min.js"></script>
  <script src="/admin/assets/libs/simplebar/dist/simplebar.js"></script>
  <script src="/admin/assets/js/dashboard.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  @include('sweetalert::alert')
  <script>
		$(".swal-confirm").click(function(e) {
			e.preventDefault();
			var form = $(this).attr('data-form');
			Swal.fire({
				title: 'Hapus Data Ini ?',
				text: "Anda tidak akan dapat mengembalikan data yang dihapus !",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#d33',
				cancelButtonColor: '#3085d6',
				confirmButtonText: 'Ya, hapus!',
				cancelButtonText: 'Batal'
			}).then((result) => {
				if (result.isConfirmed) {
					$('#' + form).submit();
				}
			})
		});
	</script>
    @endsection
