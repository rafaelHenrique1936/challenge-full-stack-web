const express = require("express");

const router = express.Router();

const user = require("../../controllers/user/index");

const authMiddleware = require("../../middlewares/authsEndpoint");

router.route("/v1/users")
    .all(authMiddleware)
    .post(user.include)
    .get(user.list);

router.route("/v1/users/:idUser")
    .all(authMiddleware)
    .delete(user.deleteUser)
    .put(user.alterUser);

router.route("/v1/typeUser")
    .all(authMiddleware)
    .get(user.typeUserList);

router.route("/v1/educationalInstitution")
    .all(authMiddleware)
    .get(user.educationalInstitutionList);

module.exports = router;