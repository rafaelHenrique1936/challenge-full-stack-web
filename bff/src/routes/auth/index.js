const express = require("express");
const router = express.Router();
const authController = require("../../controllers/auth");


//router.route("/v1/autenticarHash/:id")
//   .get(authController.autenticarHash);

router.route("/v1/login")
    .post(authController.login);

module.exports = router;