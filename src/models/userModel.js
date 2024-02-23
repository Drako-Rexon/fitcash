const mongoose = require('mongoose');

const userModel = new mongoose.Schema({
  name: {
    type: String,
  },
  username: {
    type: String,
    required: true
  },
  email: {
    type: String,
    required: true
  },
  gender: {
    type: String,
    required: true,
    default: "none"
  },
}, { timestamp: true });

module.exports = mongoose.model('users', userModel);

/**
 * birthday
 * weight: DataTypes.NUMBER
*/