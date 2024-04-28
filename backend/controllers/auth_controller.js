require('dotenv').config({ path: '../.env' });
const asyncHandler = require('express-async-handler');
const { validationResult } = require('express-validator');
const db = require('../utils/connect_to_mongodb');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const User = require('../models/userModel');

const testing = asyncHandler(async (req, res) => {
  res.send('/api/auth is working');
});


// * create user
const createUser = asyncHandler(async (req, res) => {
  const err = validationResult(req);

  if (!err.isEmpty()) {
    return res.status(400).send({
      status: "error",
      message: err.array()
    });
  }

  try {

    const { email, name, gender, username } = req.body;
    const findUser = await User.findOne({ 'email': email });

    if (findUser) return res.status(403).json({ status: "failed", message: "User is already exists" });

    const { password } = req.body;
    const salt = await bcrypt.genSalt(10);
    const hashedPassword = await bcrypt.hash(password, salt);

    const user = User({ 'name': name, 'email': email, 'password': hashedPassword, 'gender': gender, 'username': username, });

    const userCreated = await user.save();

    return res.status(201).send(userCreated);
  } catch (err) {
    throw new Error(err);
  }
});

const createUserData = asyncHandler(async (req, res) => {
  try {
    const { email } = req.body;
    const user = await User.findOne({ email: email });
    // console.log(email);
    // console.log(user);
    if (!user) return res.status(404).json({ status: "failed", message: "User not found" });

    const { name, gender, username } = req.body;
    const updateUser = await User.findOneAndUpdate(
      { email: email },
      { name: name, gender: gender, username: username, },
      { new: true });


    return res.status(201).json({ status: "success", message: updateUser });
  } catch (err) {
    throw new Error(err);
  }
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

  try {
    let response = {
      status: "success",
      message: "user logged in successfully"
    }

    const token = jwt.sign({
      status: "success",
      message: "user logged in successfully"
    }, 'hello', { algorithm: 'RS256' }, async function (err, token) {
      console.log(token);
    });

    console.log('yaha');

    return res.send(token);
  } catch (err) {
    throw new Error(err.message.array);
  }

});

const isCreateUserDataCompleted = asyncHandler(async (req, res) => {
  try {
    const { email } = req.params;
    // console.log(email); // return;
    const user = await User.findOne({ email: email });
    // console.log(user);
    if (!user) return res.status(404).json({ status: "failed", message: "User not found" });

    if (user.gender === undefined || user.username === undefined) return res.status(404).json({ status: "fail", message: "user data does not exist" });

    return res.status(200).json({ status: "success", message: "user data is completed" });
  } catch (err) {

  }
})

module.exports = {
  testing,
  createUser,
  loginUser,
  createUserData,
  isCreateUserDataCompleted
}