const router = require('express').Router();
const {
  createBackupExpense,
  getExpenses
} = require('../controllers/expense_controller');

// * get requests
router.get('/', getExpenses);

// * post requests
router.post('/', createBackupExpense);

module.exports = router;