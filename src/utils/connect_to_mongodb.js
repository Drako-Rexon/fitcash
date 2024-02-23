const mongoose = require('mongoose');

module.exports = mongoose.connect('mongodb://localhost:27017').then(() => {
  console.log("The DB has connected");
});