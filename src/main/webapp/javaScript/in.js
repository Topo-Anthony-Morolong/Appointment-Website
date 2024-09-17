require('dotenv').config();
const express = require('express');
const mysql = require('mysql');
const http = require('http');
const socketIo = require('socket.io');
const app = express();
const server = http.createServer(app);
const io = socketIo(server);
// Create a connection to the database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'messages'
});
// Connect to the database
db.connect((err) => {
    if (err) throw err;
    console.log('Connected to the database');
});
// Function to fetch all users
const getUsers = (callback) => {
    const sql = 'SELECT * FROM users';
    db.query(sql, (err, results) => {
        if (err) return callback(err, null);
        callback(null, results);
    });
};
// Function to insert a new user
const addUser = (username, email, usertype, content, callback) => {
    const sql = 'INSERT INTO users (username, email, usertype, content) VALUES (?, ?, ?, ?)';
    db.query(sql, [username, email, usertype, content], (err, result) => {
        if (err) return callback(err, null);
        callback(null, result);
    });
};
// Serve the static files
app.use(express.static('public'));
// Endpoint to fetch users
app.get('/users', (req, res) => {
    getUsers((err, users) => {
        if (err) return res.status(500).send('Error fetching users');
        res.json(users);
    });
});
// Socket.io connection
io.on('connection', (socket) => {
    console.log('a user connected');
    socket.on('chat message', (data) => {
        const { senderId, recipientId, content } = data;
        const sql = 'UPDATE users SET content = CONCAT(IFNULL(content, ""), ?) WHERE id IN (?, ?)';
        db.query(sql, [`User ${senderId} to User ${recipientId}: ${content}\n`, senderId, recipientId], (err, result) => {
            if (err) return console.error('Error updating messages:', err);
            io.emit('chat message', data);
        });
    });
    socket.on('disconnect', () => {
        console.log('user disconnected');
    });
});
server.listen(3000, () => {
    console.log('Server is running on port 3000');
});