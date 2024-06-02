const mongoose = require('mongoose');

const healthModel = mongoose.Schema({
  email: {
    type: String,
    required: true
  },
  caloriesConsumed: [
    {
      date: { type: Date },
      caloriesBurned: { type: Number, default: null },
      caloriesConsumed: { type: Number, default: null },
    }
  ],
  steps: [
    {
      date: { type: Date },
      numberOfSteps: { type: Number, },
      caloriesBurned: { type: Number, default: null },
      caloriesConsumed: { type: Number, default: null },
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

module.exports = mongoose.model('health', healthModel);