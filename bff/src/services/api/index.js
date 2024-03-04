const axios = require('axios');
const { retrieveHeader } = require("../headers/index.js")
const { retrieveBaseURL } = require("../baseURL/index.js")

exports.getAxiosAuthenticator = async (endpoint, type, authHeader) => {

  const baseURL = retrieveBaseURL(type)
  const url = baseURL + endpoint;

  const headers = {
    'Content-Type': 'application/json;charset=UTF-8',
    'Access-Control-Allow-Origin': '*',
    Authorization: `Basic ${authHeader}`,
  }

  return await axios
    .get(url, {
      headers: headers,
    })

};

exports.postAxios = async (endPoint, param, type) => {

  const baseURL = retrieveBaseURL(type)
  const headers = await retrieveHeader(type)
  const url = baseURL + endPoint;

  return await axios
    .post(url, param, {
      headers: headers,
    })
};

exports.putAxios = async (endPoint, param, type) => {

  const baseURL = retrieveBaseURL(type)
  const headers = await retrieveHeader(type)
  const url = baseURL + endPoint;

  return await axios
    .put(url, param, {
      headers: headers,
    })

};

exports.deleteAxios = async (endPoint, type) => {

  const baseURL = retrieveBaseURL(type)
  const headers = await retrieveHeader(type)
  const url = baseURL + endPoint;

  return await axios.delete(url, {
    headers,
  })

};

exports.getAxios = async (endpoint, type) => {

  const baseURL = retrieveBaseURL(type)
  const headers = await retrieveHeader(type)
  const url = baseURL + endpoint;

  return await axios
    .get(url, {
      headers: headers,
    })

};