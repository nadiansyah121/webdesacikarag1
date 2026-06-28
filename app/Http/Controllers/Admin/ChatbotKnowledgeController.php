<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ChatbotKnowledge;
use RealRashid\SweetAlert\Facades\Alert;

class ChatbotKnowledgeController extends Controller
{
    public function index()
    {
        $knowledges = ChatbotKnowledge::latest()->get();

        return view('admin.chatbot-knowledge.index', compact('knowledges'));
    }

    public function create()
    {
        return view('admin.chatbot-knowledge.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'keyword' => 'required',
            'answer' => 'required'
        ]);

        ChatbotKnowledge::create([
            'keyword' => $request->keyword,
            'answer' => $request->answer
        ]);

        Alert::success('Berhasil', 'Data berhasil ditambahkan');

        return redirect()->route('chatbot-knowledge.index');
    }

    public function edit($id)
    {
        $knowledge = ChatbotKnowledge::findOrFail($id);

        return view('admin.chatbot-knowledge.edit', compact('knowledge'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'keyword' => 'required',
            'answer' => 'required'
        ]);

        $knowledge = ChatbotKnowledge::findOrFail($id);

        $knowledge->update([
            'keyword' => $request->keyword,
            'answer' => $request->answer
        ]);

        Alert::success('Berhasil', 'Data berhasil diubah');

        return redirect()->route('chatbot-knowledge.index');
    }

    public function destroy($id)
    {
        $knowledge = ChatbotKnowledge::findOrFail($id);

        $knowledge->delete();

        Alert::success('Berhasil', 'Data berhasil dihapus');

        return redirect()->route('chatbot-knowledge.index');
    }
}