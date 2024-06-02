const mongoose = require('mongoose');

const userModel = mongoose.Schema({
  name: {
    type: String,
    required: true
  },
  username: {
    type: String,
    deafult: null
  },
  email: {
    type: String,
    required: true
  },
  gender: {
    type: String,
    default: null
  },
  password: {
    type: String,
    required: true,
  },
  createdAt: {
    type: Date,
    default: Date.now
  },
  updatedAt: {
    type: Date,
    default: Date.now
  }
}, { timestamp: true });

module.exports = mongoose.model('users', userModel);

/**
 * birthday
 * weight: DataTypes.NUMBER
*/