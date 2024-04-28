require('dotenv').config({ path: './.env' });
const cors = require('cors');
const express = require('express');
const bodyParser = require('body-parser');
const authRoute = require('./routes/auth_routes');
const expenseRoute = require('./routes/expense_routes');
const healthRoute = require('./routes/health_route');
const connectDB = require('./utils/connect_to_mongodb');
const PORT = process.env.PORT || 3000;
connectDB;

const app = express();

// * app use features
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());

// * routes are below
app.use('/api/auth', authRoute);
app.use('/api/expense', expenseRoute);
app.use('/api/health', healthRoute);


// ! error handling
app.use((err, req, res, next) => {
    err.statusCode = err.statusCode || 500;
    err.message = err.message || 'Internal Server Error';
    res.status(err.statusCode).json({
        message: err.message
    });
});

app.get('/', (req, res) => {
    res.status(200).send('server has started');
});

app.get('*', (req, res, next) => {
    res.status(404).send({ status: "success", message: "the address not found" });
});


app.listen(PORT, () => {
    console.log(`http://localhost:` + process.env.PORT);
});