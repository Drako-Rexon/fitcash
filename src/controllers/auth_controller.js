const asyncHandler = require('express-async-handler');
const { validationResult } = require('express-validator');
const db = require('../utils/connect_to_mongodb');
const bcrypt = require('bcryptjs');

const testing = asyncHandler(async (req, res) => {
  res.send('/api/auth is working');
});


// * create user
const createUser = asyncHandler([], async (req, res) => {
  const err = validationResult(req);
  let response;

  if (!err.isEmpty()) {
    return res.status(400).send({
      status: "error",
      message: err.array()
    });
  }

  try {

  } catch (err) {
    throw new Error(err);
  }

  res.send(response);
});

const loginUser = asyncHandler(async (req, res) => {
  const error = validationResult(req);
  let response;

  if (!error.isEmpty()) {
    return res.send({
      status: "fail",
      message: error.array()
    });
  }

  db.query(
    `SELECT * FROM users WHERE LOWER(email) = LOWER(${db.escape(req.body.email)})`,
    async (err, result) => {
      console.log(`RESULT: ${result}`);

      if (result == null) {
        return res.send({
          status: "failure",
          data: "The user doesn't exists"
        });
      }

      if (err) {
        return res.status(501).send({
          status: "failure",
          data: err
        });
      }

      const { name, password, email } = req.body;
      await bcrypt.hash(password, process.env.SALT, (err, hash) => {
        if (err) {
          res.status(500).send({
            status: "error",
            message: err
          });
        }
      });



      return res.status(200).send({
        status: "success",
        data: result
      })
    }
  )

});

module.exports = {
  testing,
  createUser,
  loginUser
}