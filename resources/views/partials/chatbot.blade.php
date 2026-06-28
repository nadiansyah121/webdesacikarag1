<!-- CHATBOT AI -->
<!-- CHAT BUTTON -->
<button id="chatBtn">💬</button>

<!-- CHAT POPUP -->
<div id="chatPopup">

    <div id="chatHeader">
        <div class="header-left">
            <div class="bot-avatar-header">🤖</div>

            <div>
                <div class="chat-title">ChatBot Desa Cikarag</div>
                <small class="chat-status">
                    <span class="online-dot"></span>
                    Online
                </small>
            </div>
        </div>

        <span class="close-chat" onclick="toggleChat()">✕</span>
    </div>

    <div id="chatMessages">

        <div class="bot-msg">
            <div class="bot-avatar">🤖</div>

            <div class="chat-bubble bot-bubble">
                👋 Halo, saya ChatBot Desa Cikarag.<br>
                Ada yang bisa saya bantu hari ini?
            </div>
        </div>

    </div>
<div class="quick-chat">
    <button onclick="askQuick('siapa kepala desa cikarag?')">
        👤 Kepala Desa
    </button>

    <button onclick="askQuick('visi desa')">
        🎯 Visi Desa
    </button>

    <button onclick="askQuick('misi desa')">
        📌 Misi Desa
    </button>

    <button onclick="askQuick('sejarah desa')">
        📖 Sejarah
    </button>

    <button onclick="askQuick('umkm')">
        🏪 UMKM
    </button>

    <button onclick="askQuick('berita terbaru')">
        📰 Berita
    </button>
</div>
    <div id="chatInputArea">
        <input
            type="text"
            id="userInput"
            placeholder="Tulis pertanyaan..."
            onkeypress="handleEnter(event)"
        >

        <button onclick="sendMessage()">➤</button>
    </div>

</div>