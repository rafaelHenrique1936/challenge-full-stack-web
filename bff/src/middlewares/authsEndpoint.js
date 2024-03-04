const { postAxios } = require("../services/api/index");
const { isEmpty } = require("lodash");

module.exports = async (req, res, next) => {
  let path = req.url;
  try {
    const method = req.method.toLowerCase();

    if (!isEmpty(req.route)) {
      path = req.route.path;
    } else {
      let indexOf = path.indexOf("?");
      if (indexOf !== undefined) {
        if (indexOf > 0) {
          path = path.substring(0, indexOf);
        }
      }
    }

    const param = {
      idUser: req.idUser,
      endPoint: path,
      method: method.toLowerCase(),
    };

    await postAxios(`/v1/authEndPoint`, { param: param }, "USER_BACKEND")

      .catch((e) => {
        res.status(401).send({ error: true, message: e?.response?.data?.message })
      });
    return next();

  } catch (err) {
    return res.status(401).send({
      message: "Usuário não autorizado",
      error: true,
    });
  }

};
