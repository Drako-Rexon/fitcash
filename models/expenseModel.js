const mongoose = require('mongoose');

const expenseModel = mongoose.Schema({
  username: {
    type: String,
    required: true
  },
  email: {
    type: String,
    required: true
  },
  expenses: [
    {
      id: { type: Number },
      amount: { type: Number },
      date: { type: Date },
      mode: { type: String },
      category: { type: String }, note: { type: String },
      tags: [{ type: String }],
      createdAt: { type: Date },
      updatedAt: { type: Date }
    }
  ],
  createdAt: {
    type: Date,
    default: Date.now
  },
  updatedAt: {
    type: Date,
    default: Date.now
  }
}, { timestamp: true });

module.exports = mongoose.model('expenses', expenseModel);