exports.retrieveHeader = (tipoHeader) => {
    switch (tipoHeader) {
        case 'USER_BACKEND': {
            const authorization = Buffer.from(
                `${process.env.BACKEND_AUTH_USER}:${process.env.BACKEND_AUTH_PASSWORD}`,
                'utf8'
            ).toString('base64');
            const headers = {
                'Content-Type': 'application/json;charset=UTF-8',
                'Access-Control-Allow-Origin': '*',
                Authorization: `Basic ${authorization}`,
            }

            return headers
        }

        default:
            return {}
    }
}
