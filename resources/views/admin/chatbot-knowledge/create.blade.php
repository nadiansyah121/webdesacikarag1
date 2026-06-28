@extends('admin.layouts.main')

@section('content')

<div class="row">
    <div class="col-lg-12 d-flex align-items-strech">
        <div class="card w-100">

```
        <div class="card-header bg-primary">
            <div class="row align-items-center">
                <div class="col-6">
                    <h5 class="card-title fw-semibold text-white">
                        Tambah Pengetahuan Chatbot
                    </h5>
                </div>

                <div class="col-6 text-right">
                    <a href="{{ route('chatbot-knowledge.index') }}"
                       class="btn btn-warning float-end">
                        Kembali
                    </a>
                </div>
            </div>
        </div>

        <div class="card-body">

            <form method="POST"
                  action="{{ route('chatbot-knowledge.store') }}">

                @csrf

                <div class="mb-3">
                    <label for="keyword" class="form-label">
                        Keyword
                        <span style="color:red">*</span>
                    </label>

                    <input
                        type="text"
                        class="form-control"
                        name="keyword"
                        id="keyword"
                        value="{{ old('keyword') }}"
                        placeholder="Contoh: posyandu,jadwal posyandu,kapan posyandu">

                    <small class="text-muted">
                        Pisahkan beberapa keyword dengan tanda koma (,)
                    </small>

                    @error('keyword')
                        <div class="text-danger">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="answer" class="form-label">
                        Jawaban
                        <span style="color:red">*</span>
                    </label>

                    <textarea
                        class="form-control"
                        name="answer"
                        id="answer"
                        rows="6"
                        placeholder="Masukkan jawaban chatbot...">{{ old('answer') }}</textarea>

                    @error('answer')
                        <div class="text-danger">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <button
                    type="submit"
                    class="btn btn-primary m-1 float-end">
                    Simpan
                </button>

            </form>

        </div>
    </div>
</div>
```

</div>
@endsection
