const { postAxios } = require('../../services/api/index')

const index = (req, res) => res.status(200).send({ error: false, message: "Endpoint auth está funcionando!" });

const login = async (req, res) => {

  const jsonString  = Object.keys(req.body)[0];

  body = JSON.parse(jsonString)

  await postAxios(`/v1/login`, body, "USER_BACKEND")
    .then((r) => res.status(200).send(r.data))
    .catch((e) => {

      res.status(400).send({ error: true, message: e.response.data.message })

    });

};



module.exports = {
  index,
  login
};
