require('dotenv').config();
const cors = require('cors');
const express = require('express');
const bodyParser = require('body-parser');
const authRoute = require('./routes/auth_routes');
const connectDB = require('./utils/connect_to_mongodb');

connectDB;

const app = express();

// * app use features
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());

// * routes are below
app.use('/api/auth', authRoute);

// ! error handling
app.use((err, req, res, next) => {
    err.statusCode = err.statusCode || 500;
    err.message = err.message || 'Internal Server Error';
    res.status(err.statusCode).json({
        message: err.message
    });
});


app.get('/', (req, res) => {
    res.send('server has started');
});

app.listen(process.env.PORT, () => {
    console.log(`http://localhost:` + process.env.PORT);
});