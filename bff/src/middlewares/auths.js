const jwt = require("jsonwebtoken");
const { promisify } = require("util");

require("dotenv").config();

module.exports = async (req, res, next) => {
  const authHeaders = req.headers.authorization;

  if (!authHeaders) {
    return res.status(401).send({
      message: "token não fornecido",
      error: true,
    });
  }

  let [, token] = authHeaders.split(" ");

  try {
    const secretkey = process.env.SECRET_KEY;
    token = token.replace(/"/g, '');
    const decoded = await promisify(jwt.verify)(token, secretkey)
      
    const idUser = decoded.idUser;

    req.idUser = idUser;
    req.token = token;

    return next();
  } catch (err) {
    return res.status(401).send({
      message: "token inválido",
      error: true,
    });
  }
};