exports.retrieveBaseURL = (tipoBaseURL) => {
  switch (tipoBaseURL) {
  
    case 'USER_BACKEND': {
      return process.env.BACKEND_BASE_URL
    }
     
    default:
      return {}
    }
  }
  