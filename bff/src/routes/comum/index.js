const express = require("express");
const router = express.Router();

const user = require("../../controllers/user");
const auth = require("../../controllers/auth");



router.route("/v1/user/index")
    .get(user.index);


router.route("/v1/auth/index")
    .get(auth.index);


module.exports = router;