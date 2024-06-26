const { check } = require('express-validator');

exports.signupValidation = [
  check('name', 'Please enter name').not().notEmpty(),
  check('email', 'Please enter a valid mail').isEmail().normalizeEmail({ gmail_remove_dots: true }),
  check('password', 'Passwrod is required of length 4').isLength({ min: 4 })
]

exports.loginValidation = [
  check('name', 'Please enter name').not().notEmpty(),
  check('email', 'Please enter a valid mail').isEmail().normalizeEmail({ gmail_remove_dots: true }),
  check('password', 'Passwrod is required of length 4').isLength({ min: 4 })
]