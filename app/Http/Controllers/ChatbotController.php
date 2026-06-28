<?php

namespace App\Http\Controllers;

use App\Models\Announcement;
use App\Models\Berita;
use App\Models\ChatbotKnowledge;
use App\Models\ChatHistory;
use App\Models\PerangkatDesa;
use App\Models\Sejarah;
use App\Models\Situs;
use App\Models\Umkm;
use App\Models\VisiMisi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
class ChatbotController extends Controller
{
private function saveChat($message, $reply)
{
    ChatHistory::create([
        'question' => $message,
        'answer'   => $reply
    ]);

    return response()->json([
        'reply' => $reply
    ]);
}
public function history()
{
    $histories = ChatHistory::latest()->paginate(20);

    $totalChat = ChatHistory::count();

    $todayChat = ChatHistory::whereDate(
        'created_at',
        today()
    )->count();

    $weekChat = ChatHistory::where(
        'created_at',
        '>=',
        now()->subDays(7)
    )->count();

    $monthChat = ChatHistory::whereMonth(
        'created_at',
        now()->month
    )->count();

    $topQuestions = ChatHistory::select(
            'question',
            DB::raw('COUNT(*) as total')
        )
        ->groupBy('question')
        ->orderByDesc('total')
        ->take(5)
        ->get();

    return view(
        'admin.chat-history.index',
        compact(
            'histories',
            'totalChat',
            'todayChat',
            'weekChat',
            'monthChat',
            'topQuestions'
        )
    );
}
   private function askAI($message)
{
    try {

        $response = Http::withToken(
            config('services.groq.key')
        )->post(
            'https://api.groq.com/openai/v1/chat/completions',
            [
                'model' => 'llama-3.3-70b-versatile',
                'messages' => [
                    [
                        'role' => 'system',
                        'content' =>
                            'Kamu adalah Asisten Website Desa Cikarag. Jawab dengan bahasa Indonesia yang sopan.'
                    ],
                    [
                        'role' => 'user',
                        'content' => $message
                    ]
                ]
            ]
        );

        if ($response->successful()) {
            return $response['choices'][0]['message']['content'];
        }

        return $response->body();

    } catch (\Exception $e) {
        return $e->getMessage();
    }
}
    public function chat(Request $request)
    {
        $message = strtolower(trim($request->message));

        $situs = Situs::first();
        $visiMisi = VisiMisi::first();
        $sejarah = Sejarah::first();

        // Salam
        if (
            str_contains($message, 'hallo') ||
            str_contains($message, 'halo') ||
            str_contains($message, 'hai') ||
            str_contains($message, 'assalamualaikum')
        ) 
        
        {

            $reply = 'Halo 👋 Selamat datang di Website Desa '.$situs->nm_desa.'. Ada yang bisa saya bantu?';

            return $this->saveChat($message, $reply);
        }

        // Nama Desa
        if (
            str_contains($message, 'nama desa') ||
            str_contains($message, 'desa apa')
        ) {

            $reply =
                'Nama desa adalah '.$situs->nm_desa.
                ', Kecamatan '.$situs->kecamatan.
                ', Kabupaten '.$situs->kabupaten.
                ', Provinsi '.$situs->provinsi.'.';

            return $this->saveChat($message, $reply);
        }

        // Visi
        if (str_contains($message, 'visi')) {

            $reply = $visiMisi->visi ?? 'Data visi belum tersedia.';

            return $this->saveChat($message, $reply);
        }

        // Misi
        if (str_contains($message, 'misi')) {

            $reply = $visiMisi->misi ?? 'Data misi belum tersedia.';

            return $this->saveChat($message, $reply);
        }

        // Sejarah
        if (
            str_contains($message, 'sejarah') ||
            str_contains($message, 'asal usul')
        ) {

            $reply = $sejarah->body ?? 'Data sejarah belum tersedia.';

            return $this->saveChat($message, $reply);
        }

        // Perangkat Desa
        if (
            str_contains($message, 'kepala desa') ||
            str_contains($message, 'sekretaris') ||
            str_contains($message, 'sekdes') ||
            str_contains($message, 'kaur') ||
            str_contains($message, 'kasi') ||
            str_contains($message, 'kadus') ||
            str_contains($message, 'dusun') ||
            str_contains($message, 'lurah')
        ) {

            $perangkats = PerangkatDesa::all();

            foreach ($perangkats as $perangkat) {

                $jabatan = strtolower($perangkat->jabatan);

                if (
                    str_contains($message, $jabatan) ||
                    str_contains($jabatan, $message)
                ) {

                    $reply =
                        $perangkat->nama .
                        ' menjabat sebagai ' .
                        $perangkat->jabatan;

                    return $this->saveChat($message, $reply);
                }
            }

            // Kepala Desa
            if (
                str_contains($message, 'kepala desa') ||
                str_contains($message, 'lurah')
            ) {

                $perangkat = PerangkatDesa::where(
                    'jabatan',
                    'LIKE',
                    '%kepala%'
                )->first();

                if ($perangkat) {

                    $reply =
                        $perangkat->nama .
                        ' menjabat sebagai ' .
                        $perangkat->jabatan;

                    return $this->saveChat($message, $reply);
                }
            }

            // Sekretaris Desa
            if (
                str_contains($message, 'sekretaris') ||
                str_contains($message, 'sekdes')
            ) {

                $perangkat = PerangkatDesa::where(
                    'jabatan',
                    'LIKE',
                    '%sekretaris%'
                )
                ->orWhere(
                    'jabatan',
                    'LIKE',
                    '%sekdes%'
                )
                ->first();

                if ($perangkat) {

                    $reply =
                        $perangkat->nama .
                        ' menjabat sebagai ' .
                        $perangkat->jabatan;

                    return $this->saveChat($message, $reply);
                }
            }

            return $this->saveChat(
                $message,
                'Data perangkat desa tidak ditemukan.'
            );
        }

        // Jumlah UMKM
        if (
            str_contains($message, 'jumlah umkm') ||
            str_contains($message, 'berapa umkm')
        ) {

            $reply =
                'Saat ini terdapat '.
                Umkm::count().
                ' UMKM yang terdaftar.';

            return $this->saveChat($message, $reply);
        }

        // Daftar UMKM
        if (
            str_contains($message, 'umkm') ||
            str_contains($message, 'produk')
        ) {

            $umkms = Umkm::latest()
                ->take(5)
                ->get();

            if ($umkms->isEmpty()) {

                return $this->saveChat(
                    $message,
                    'Belum ada data UMKM.'
                );
            }

            $reply = "🏪 Daftar UMKM:\n\n";

            foreach ($umkms as $umkm) {

                $reply .= "• ".$umkm->produk;

                if (!empty($umkm->harga)) {
                    $reply .= " - Rp ".number_format(
                        $umkm->harga,
                        0,
                        ',',
                        '.'
                    );
                }

                $reply .= "\n";
            }

            return $this->saveChat($message, $reply);
        }

        // Berita Terbaru
        if (
            str_contains($message, 'berita') ||
            str_contains($message, 'informasi terbaru') ||
            str_contains($message, 'kabar terbaru')
        ) {

            $beritas = Berita::latest()
                ->take(5)
                ->get();

            if ($beritas->isEmpty()) {

                return $this->saveChat(
                    $message,
                    'Belum ada berita yang tersedia.'
                );
            }

            $reply = "📰 Berita Terbaru Desa\n\n";

            foreach ($beritas as $berita) {

                $reply .= "📌 ".$berita->judul."\n";
                $reply .= url('/berita/'.$berita->slug)."\n\n";
            }

            return $this->saveChat($message, $reply);
        }   // ===============================
// Belajar Chatbot dari Database
// ===============================
$knowledges = ChatbotKnowledge::all();

foreach ($knowledges as $knowledge) {

    $keywords = explode(',', strtolower($knowledge->keyword));

    foreach ($keywords as $keyword) {

        $keyword = trim($keyword);

        if (
            str_contains($message, $keyword) ||
            str_contains($keyword, $message)
        ) {
            return response()->json([
                'reply' => $knowledge->answer
            ]);
        }
    }
}
            // pengumuman

    // Pengumuman
if (
    str_contains($message, 'pengumuman') ||
    str_contains($message, 'pengumuman terbaru') ||
    str_contains($message, 'info terbaru') ||
    str_contains($message, 'informasi desa')
) {

    $announcements = Announcement::latest()
        ->take(5)
        ->get();

    if ($announcements->isEmpty()) {
        return $this->saveChat(
            $message,
            'Belum ada pengumuman terbaru.'
        );
    }

    $reply = "📢 Pengumuman Terbaru Desa\n\n";

    foreach ($announcements as $announcement) {

        $reply .= "📌 ".$announcement->judul."\n";
        $reply .= url('/pengumuman/'.$announcement->slug)."\n\n";
    }

    return $this->saveChat($message, $reply);
}
        // Cek data knowledge terlebih dahulu
        $knowledge = ChatbotKnowledge::all();

        foreach ($knowledge as $item)
        {
            if (str_contains($message, strtolower($item->keyword)))
            {
                return $this->saveChat(
                    $message,
                    $item->answer
                );
            }
        }

        // Jika tidak ditemukan, tanya Gemini AI
        $reply = $this->askAI($message);

        return $this->saveChat($message, $reply);
    }
    public function clear()
{
    ChatHistory::truncate();

    return back()->with(
        'success',
        'Semua riwayat chatbot berhasil dihapus.'
    );
}
}
