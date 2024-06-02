const router = require('express').Router();
const { signupValidation, loginValidation } = require('../utils/validation');
const {
    testing,
    createUser,
    loginUser,
    createUserData,
    isCreateUserDataCompleted
} = require('../controllers/auth_controller');
const { isAdmin } = require('../middleware/isAdmin');

router.get('/', testing);
router.post('/createUser', createUser);
router.post('/createUserData', createUserData);
router.post('/login', loginValidation, loginUser);

router.get('/isCreateUserDataCompleted/:email', isCreateUserDataCompleted);

module.exports = router;