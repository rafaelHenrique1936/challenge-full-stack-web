const comunRoute = require("./comum/index");
const authRoute = require("./auth/index");
const userRoute = require("./user/index");
const middlewaresRoute = require("./middlewares/index");
const express = require("express");
const routes = express.Router();




routes.use(comunRoute);

routes.use(authRoute);

routes.use(middlewaresRoute);

routes.use(userRoute);








module.exports = routes;
