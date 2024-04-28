const isAdmin = (req, res, next) => {

  if (req.headers.authorization == null) {
    return res.status(401).send({
      status: "fail",
      message: "token is required"
    });
  }
  try {

    let token = req.headers.authorization.split(' ')[1];
    console.log(`${token}`);
    // TODO: jwt token parsing and verifying
    next();
  } catch (err) {
    throw new Error(err);
  }
}


module.exports = {
  isAdmin
}