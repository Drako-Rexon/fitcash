const asyncHandler = require('express-async-handler');
const Health = require('../models/healthModel');
const User = require('../models/userModel');

const createHealthData = asyncHandler(async (req, res) => {

  try {
    const { email } = req.body;
    if (!(await isUserExists(email)))
      return res.status(404).send({
        status: "fail",
        message: "user not found"
      });

    let health = await Health.findOne({ email: email });
    let healtUpdated;
    if (!health) {
      // create health data
      healtUpdated = await Health.create(req.body);
    } else {
      req.body.updatedAt = Date();
      // console.log(req.body);

      healtUpdated = await Health.findOneAndUpdate({ email: email }, req.body, { new: true });
    }


    res.send({ message: healtUpdated });
  } catch (err) {
    throw new Error(err.message);
  }
});

const getHealthData = asyncHandler(async (req, res) => {
  try {
    const { email } = req.body;
    const user = await Health.findOne({ email: email });
  } catch (err) {
    throw new Error(err.message);
  }
});

const isUserExists = async (email) => {

  const user = await User.findOne({ email: email });

  if (user) return true;
  return false;
}

module.exports = {
  createHealthData
};