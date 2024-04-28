const mongoose = require('mongoose');

module.exports = mongoose.connect(process.env.MONGO_URL).then(() => {
  console.log("The DB has connected");
});