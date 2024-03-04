const express = require("express");
const router = express.Router();

const authMiddlesware = require("../../middlewares/auths");


router.use(authMiddlesware);


module.exports = router;
