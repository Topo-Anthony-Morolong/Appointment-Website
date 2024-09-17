const socket = io();

const messagesList = document.querySelector('.messages');
const messageInput = document.getElementById('message-input');
const sendButton = document.getElementById('send-button');
const senderSelect = document.getElementById('sender-select');
const recipientSelect = document.getElementById('recipient-select');

let currentSender = null;
let currentRecipient = null;

// Fetch users and populate the dropdowns
fetch('/users')
    .then(response => response.json())
    .then(users => {
        users.forEach(user => {
            const senderOption = document.createElement('option');
            senderOption.value = user.id;
            senderOption.textContent = user.username;
            senderSelect.appendChild(senderOption);

            const recipientOption = document.createElement('option');
            recipientOption.value = user.id;
            recipientOption.textContent = user.username;
            recipientSelect.appendChild(recipientOption);
        });
        currentSender = users[0].id;
        currentRecipient = users[0].id;
    })
    .catch(error => console.error('Error fetching users:', error));

senderSelect.addEventListener('change', () => {
    currentSender = senderSelect.value;
});

recipientSelect.addEventListener('change', () => {
    currentRecipient = recipientSelect.value;
});

sendButton.addEventListener('click', () => {
    const message = messageInput.value;
    if (message && currentSender && currentRecipient) {
        socket.emit('chat message', { senderId: currentSender, recipientId: currentRecipient, content: message });
        messageInput.value = '';
    }
});

/*socket.on('chat message', (data) => {
  const li = document.createElement('li');
  li.textContent = User ${data.senderId} to User ${data.recipientId}: ${data.content};
  li.className = 'message';
  messagesList.appendChild(li);
});*/

socket.on('chat message', (data) => {
    if (data && data.senderId && data.recipientId && data.content) {
        const li = document.createElement('li');
        li.textContent = `User ${data.senderId} to User ${data.recipientId}: ${data.content}`;
        li.className = 'message';
        messagesList.appendChild(li);
    } else {
        console.error('Invalid chat message data received:', data);
    }
});
