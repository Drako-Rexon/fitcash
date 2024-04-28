const router = require('express').Router();
const {
  createHealthData,
} = require('../controllers/health_controller');

router.post('/createHealthData', createHealthData)

module.exports = router;