const { postAxios, getAxios, deleteAxios, putAxios } = require('../../services/api/index')

const index = (req, res) => res.status(200).send({ error: false, message: "Endpoint BFF Usuário/Aluno está funcionando!" });

const include = async (req, res) => {

  const body = req.body;
  const dataUser = { body: body };

  await postAxios(`/v1/users`, dataUser, "USER_BACKEND")
    .then((r) => res.status(200).send(r.data))
    .catch((e) => {
      res.status(400).send({ error: true, message: e.response.data.message })
    });

};

const list = async (req, res) => {

  await getAxios(`/v1/users`, "USER_BACKEND")
    .then((r) => res.status(200).send(r.data))
    .catch((e) => {
      res.status(400).send({ error: true, message: e.response.data.message })
    });

};

const deleteUser = async (req, res) => {

  let { idUser } = req.params

  await deleteAxios(`/v1/users/${idUser}`, "USER_BACKEND")
    .then((r) => res.status(200).send(r.data))
    .catch((e) => {
      res.status(400).send({ error: true, message: e.response.data.message })
    });

};

const alterUser = async (req, res) => {

  let { idUser } = req.params

  const body = req.body;
  const dataUser = { body: body };

  await putAxios(`/v1/users/${idUser}`, dataUser, "USER_BACKEND")
    .then((r) => res.status(200).send(r.data))
    .catch((e) => {
      res.status(400).send({ error: true, message: e.response.data.message })
    });

};

const typeUserList = async (req, res) => {

  await getAxios(`/v1/typeUser`, "USER_BACKEND")
    .then((r) => res.status(200).send(r.data))
    .catch((e) => {
      res.status(400).send({ error: true, message: e.response.data.message })
    });
    
};

const educationalInstitutionList = async (req, res) => {

  await getAxios(`/v1/educationalInstitution`, "USER_BACKEND")
    .then((r) => res.status(200).send(r.data))
    .catch((e) => {
      res.status(400).send({ error: true, message: e.response.data.message })
    });

};

module.exports = {
  index,
  include,
  list,
  deleteUser,
  alterUser,
  typeUserList,
  educationalInstitutionList
};
