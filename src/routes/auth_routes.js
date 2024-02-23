const router = require('express').Router();
const { signUpValidation } = require('../utils/validation');
const {
    testing,
    createUser,
    loginUser
} = require('../controllers/auth_controller');

router.get('/', testing);
router.post('/createUser', signUpValidation, createUser);
router.post('/login', signUpValidation, loginUser);


module.exports = router;