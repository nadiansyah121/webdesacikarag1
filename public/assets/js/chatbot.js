const chatBtn = document.getElementById('chatBtn');
const chatPopup = document.getElementById('chatPopup');
const chatMessages = document.getElementById('chatMessages');

let isDragging = false;
let moved = false;
let offsetX = 0;
let offsetY = 0;

function toggleChat()
{
    chatPopup.style.display =
        chatPopup.style.display === 'flex'
        ? 'none'
        : 'flex';
}

chatBtn.addEventListener('click', function()
{
    if(moved)
    {
        moved = false;
        return;
    }

    toggleChat();
});

chatBtn.addEventListener('mousedown', function(e)
{
    isDragging = true;

    offsetX = e.clientX - chatBtn.getBoundingClientRect().left;
    offsetY = e.clientY - chatBtn.getBoundingClientRect().top;

    chatBtn.style.left = chatBtn.offsetLeft + 'px';
    chatBtn.style.top = chatBtn.offsetTop + 'px';
    chatBtn.style.right = 'auto';
    chatBtn.style.bottom = 'auto';
});

document.addEventListener('mousemove', function(e)
{
    if(!isDragging) return;

    moved = true;

    let x = e.clientX - offsetX;
    let y = e.clientY - offsetY;

    chatBtn.style.left = x + 'px';
    chatBtn.style.top = y + 'px';
});

document.addEventListener('mouseup', function()
{
    isDragging = false;
});

function handleEnter(event)
{
    if(event.key === 'Enter')
    {
        sendMessage();
    }
}

function addUserMessage(message)
{
    chatMessages.innerHTML += `
        <div class="user-msg">
            <div class="chat-bubble user-bubble">
                ${message}
            </div>
        </div>
    `;

    chatMessages.scrollTop = chatMessages.scrollHeight;
}

// Quick chat
function askQuick(text)
{
    document.getElementById('userInput').value = text;
    sendMessage();
}
const slider = document.querySelector('.quick-chat');

let isDown = false;
let startX;
let scrollLeft;

slider.addEventListener('mousedown', (e) => {
    isDown = true;
    slider.classList.add('active');

    startX = e.pageX - slider.offsetLeft;
    scrollLeft = slider.scrollLeft;
});

slider.addEventListener('mouseleave', () => {
    isDown = false;
    slider.classList.remove('active');
});

slider.addEventListener('mouseup', () => {
    isDown = false;
    slider.classList.remove('active');
});

slider.addEventListener('mousemove', (e) => {
    if (!isDown) return;

    e.preventDefault();

    const x = e.pageX - slider.offsetLeft;
    const walk = (x - startX) * 2;

    slider.scrollLeft = scrollLeft - walk;
});

function addBotMessage(message)
{
    const wrapper = document.createElement('div');

    wrapper.className = 'bot-msg';

    wrapper.innerHTML = `
        <div class="bot-avatar">🤖</div>

        <div class="chat-bubble bot-bubble"></div>
    `;

    chatMessages.appendChild(wrapper);

    const bubble = wrapper.querySelector('.bot-bubble');

    // Jika ada HTML/link tampilkan langsung
    const hasHtml = /<[^>]+>/.test(message);

    if(hasHtml)
    {
        bubble.innerHTML = message;

        chatMessages.scrollTop = chatMessages.scrollHeight;

        return;
    }

    // Efek mengetik untuk teks biasa
    const words = message.split(' ');
    let index = 0;

    const timer = setInterval(() =>
    {
        if(index >= words.length)
        {
            clearInterval(timer);
            return;
        }

        bubble.innerHTML += words[index] + ' ';

        chatMessages.scrollTop = chatMessages.scrollHeight;

        index++;

    }, 40);
}

async function sendMessage()
{
    let input = document.getElementById('userInput');
    let message = input.value.trim();

    if(message === '') return;

    addUserMessage(message);

    input.value = '';

    const typingId = 'typing-' + Date.now();

    chatMessages.innerHTML += `
        <div class="bot-msg" id="${typingId}">
            <div class="bot-avatar">🤖</div>

            <div class="chat-bubble bot-bubble typing">
                Sedang mengetik...
            </div>
        </div>
    `;

    chatMessages.scrollTop = chatMessages.scrollHeight;

    try
    {
        const csrfToken = document
            .querySelector('meta[name="csrf-token"]')
            .getAttribute('content');

        let response = await fetch('/chatbot', {
            method: 'POST',
            credentials: 'same-origin',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'X-CSRF-TOKEN': csrfToken
            },
            body: JSON.stringify({
                message: message
            })
        });

        if (!response.ok)
        {
            throw new Error('HTTP Error : ' + response.status);
        }

        let data = await response.json();

        document.getElementById(typingId)?.remove();

        let reply = data.reply;

        // URL jadi link
        reply = reply.replace(
            /(https?:\/\/[^\s]+)/g,
            '<a href="$1" target="_blank" class="chat-link">$1</a>'
        );

        // Enter jadi <br>
        reply = reply.replace(/\n/g, '<br>');

        setTimeout(() =>
        {
            addBotMessage(reply);
        }, 1000);
    }
    catch(error)
    {
        console.error(error);

        document.getElementById(typingId)?.remove();

        addBotMessage('❌ Gagal terhubung ke server.');
    }
}
