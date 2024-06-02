const asyncHandler = require('express-async-handler');
const Expense = require('../models/expenseModel');

const createBackupExpense = asyncHandler(async (req, res) => {
  try {
    const { email } = req.body;
    const userData = await Expense.findOne({ email: email });
    // return res.json({ userData: userData });
    if (userData === null || userData === undefined) {
      const expense = await Expense.create(req.body);
      return res.status(201).json({
        status: 'success',
        data: expense,
      });
    } else {
      console.log(userData._id);
      console.log('yha to aya hai');

      const result = await Expense.findOneAndUpdate({ email: email }, req.body, { new: true });

      return res.status(201).json({
        status: 'success',
        data: result,
      });
    }


  } catch (err) {
    res.status(500).json({
      status: 'error',
      message: err.message,
    });
    throw new Error(err.message);
  }

});

getExpenses = asyncHandler(async (req, res) => {
  try {
    const { email, username, userId } = req.body;

    if (email === undefined && username === undefined && userId === undefined) return res.status(404).json({ status: "fail", message: "User data is not provided" });
    let expense;
    if (email !== undefined) {
      expense = await Expense.findOne({ email: email });
    } else if (username !== undefined) {
      expense = await Expense.findOne({ username: username });
    } else {
      expense = await Expense.findOne({ _id: userId });
    }

    console.log(expense);

    return res.json({
      expense: expense
    });
  } catch (err) {
    throw new Error(err.message);

  }
});

module.exports = {
  createBackupExpense,
  getExpenses,
}