@extends('admin.layouts.main')

@section('content')

<div class="row">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card w-100">

```
        <div class="card-header bg-primary">
            <div class="row align-items-center">
                <div class="col-6">
                    <h5 class="card-title fw-semibold text-white">
                        Pengetahuan Chatbot
                    </h5>
                </div>

                <div class="col-6 text-right">
                    <a href="{{ route('chatbot-knowledge.create') }}"
                       class="btn btn-warning float-end">
                        Tambah Data
                    </a>
                </div>
            </div>
        </div>

        <div class="card-body">

            <div class="table-responsive">
                <table id="table_id" class="table display">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Keyword</th>
                            <th>Jawaban</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($knowledges as $item)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $item->keyword }}</td>
                            <td>{{ Str::limit($item->answer,100) }}</td>
                            <td>

                                <a href="{{ route('chatbot-knowledge.edit',$item->id) }}"
                                   class="btn btn-warning mb-1">
                                    <i class="ti ti-edit"></i>
                                </a>

                                <form
                                    id="{{ $item->id }}"
                                    action="{{ route('chatbot-knowledge.destroy',$item->id) }}"
                                    method="POST"
                                    class="d-inline">

                                    @csrf
                                    @method('DELETE')

                                    <button
                                        type="button"
                                        class="btn btn-danger swal-confirm mb-1"
                                        data-form="{{ $item->id }}">
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
```

</div>

<script>
$(document).ready(function () {
    $('#table_id').DataTable();
});
</script>

@endsection
