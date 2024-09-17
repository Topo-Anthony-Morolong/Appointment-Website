require('dotenv').config();
const mysql = require('mysql');
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'messages'
});
db.connect((err) => {
    if (err) throw err;
    console.log('Connected to the database');
    const createUsersTable = `
CREATE TABLE IF NOT EXISTS users (
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(255),
email VARCHAR(255),
usertype VARCHAR(255),
content TEXT
);
`;
    db.query(createUsersTable, (err, result) => {
        if (err) throw err;
        console.log('Users table created or already exists');
        const insertUsers = `
INSERT INTO users (id, username, email, usertype, content) VALUES
(1, 'doctor', 'doctor@example.com', 'doctor', ''),
(2, 'patient', 'patient@example.com', 'patient', ''),
(3, 'admin', 'admin@example.com', 'admin', '')
ON DUPLICATE KEY UPDATE id=id;
`;
        db.query(insertUsers, (err, result) => {
            if (err) throw err;
            console.log('Users inserted or already exist');
            db.end();
        });
    });
});