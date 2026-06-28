<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChatbotKnowledge extends Model
{
    protected $table = 'chatbot_knowledges';

    protected $fillable = [
        'keyword',
        'answer'
    ];
}