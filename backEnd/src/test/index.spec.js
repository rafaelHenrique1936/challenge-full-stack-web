const controllers = require('../controllers/user');
const bllUser = require("../bll/user/index");

const mockRequest = (body = {}, params = {}) => {
    return { body, params };
};

const mockResponse = () => {
    const res = {};
    res.status = jest.fn().mockReturnValue(res);
    res.send = jest.fn().mockReturnValue(res);
    return res;
};

describe('index', () => {
    it('deve retornar a mensagem correta', async () => {
        const req = mockRequest();
        const res = mockResponse();
        await controllers.index(req, res);
        expect(res.status).toHaveBeenCalledWith(200);
        expect(res.send).toHaveBeenCalledWith({ error: false, message: "Endpoint BackEnd Usuário/Aluno está funcionando!" });
    });
});

describe('list', () => {
    it('deve chamar a função bllUser.list e retornar o resultado', async () => {
        const mockData = [{ id: 1, name: 'Teste' }];
        bllUser.list = jest.fn().mockResolvedValue(mockData);

        const req = mockRequest();
        const res = mockResponse();
        await controllers.list(req, res);

        expect(bllUser.list).toHaveBeenCalled();
        expect(res.status).toHaveBeenCalledWith(200);
        expect(res.send).toHaveBeenCalledWith(mockData);
    });

    it('deve retornar um erro 400 em caso de falha', async () => {
        const errorMessage = 'Erro ao listar usuários';
        bllUser.list = jest.fn().mockRejectedValue(new Error(errorMessage));

        const req = mockRequest();
        const res = mockResponse();
        await controllers.list(req, res);

        expect(bllUser.list).toHaveBeenCalled();
        expect(res.status).toHaveBeenCalledWith(400);
        expect(res.send).toHaveBeenCalledWith({ error: true, message: errorMessage });
    });
});

describe('include', () => {
    it('deve chamar a função bllUser.include e retornar o resultado', async () => {
        const mockBody = { name: 'John Doe', email: 'john@example.com',idUserType:1, phoneNumber:'34999669966', cpf:'10933377789', active: true, idEducationalInstitution: 1, ra:'35356565' };
        const mockResult = { id: 1, ...mockBody };
        bllUser.include = jest.fn().mockResolvedValue(mockResult);

        const req = mockRequest({ body: mockBody });
        const res = mockResponse();
        await controllers.include(req, res);

        expect(bllUser.include).toHaveBeenCalledWith(mockBody);
        expect(res.status).toHaveBeenCalledWith(200);
        expect(res.send).toHaveBeenCalledWith(mockResult);
    });

    it('deve retornar um erro 400 em caso de falha', async () => {
        const errorMessage = 'Erro ao incluir usuário';
        bllUser.include = jest.fn().mockRejectedValue(errorMessage);

        const req = mockRequest();
        const res = mockResponse();
        await controllers.include(req, res);

        expect(bllUser.include).toHaveBeenCalled();
        expect(res.status).toHaveBeenCalledWith(400);
        expect(res.send).toHaveBeenCalledWith({ error: true, message: errorMessage });
    });
});

describe('deleteUser', () => {
    it('deve chamar a função bllUser.deleteUser e retornar o resultado', async () => {
        const mockId = 4;
        const mockResult = { message: 'Usuário deletado com sucesso' };
        bllUser.deleteUser = jest.fn().mockResolvedValue(mockResult);

        const req = mockRequest({}, { idUser: mockId });
        const res = mockResponse();
        await controllers.deleteUser(req, res);

        expect(bllUser.deleteUser).toHaveBeenCalledWith(mockId);
        expect(res.status).toHaveBeenCalledWith(200);
        expect(res.send).toHaveBeenCalledWith(mockResult);
    });

    it('deve retornar um erro 400 em caso de falha', async () => {
        const mockId = 4;
        const errorMessage = 'Erro ao deletar usuário';
        bllUser.deleteUser = jest.fn().mockRejectedValue(new Error(errorMessage));

        const req = mockRequest({}, { idUser: mockId });
        const res = mockResponse();
        await controllers.deleteUser(req, res);

        expect(bllUser.deleteUser).toHaveBeenCalledWith(mockId);
        expect(res.status).toHaveBeenCalledWith(400);
        expect(res.send).toHaveBeenCalledWith({ message: errorMessage });
    });
});

describe('alterUser', () => {
    it('deve chamar a função bllUser.alterUser e retornar o resultado', async () => {
        const mockId = 4;
        const mockBody = { name: 'John Doe', email: 'john@example.com', phonenumber: '34999996666', active: true };
        const mockResult = { message: 'Usuário alterado com sucesso' };
        bllUser.alterUser = jest.fn().mockResolvedValue(mockResult);

        const req = mockRequest({ body: mockBody }, { idUser: mockId });
        const res = mockResponse();
        await controllers.alterUser(req, res);

        expect(bllUser.alterUser).toHaveBeenCalledWith(mockId, mockBody);
        expect(res.status).toHaveBeenCalledWith(200);
        expect(res.send).toHaveBeenCalledWith(mockResult);
    });

    it('deve retornar um erro 400 em caso de falha', async () => {
        const mockId = 4;
        const mockBody = { name: 'John Doe', email: 'john@example.com', phonenumber: '34999996666', active: true };
        const errorMessage = 'Erro ao alterar usuário';
        bllUser.alterUser = jest.fn().mockRejectedValue(new Error(errorMessage));

        const req = mockRequest( { body: mockBody }, { idUser: mockId });
        const res = mockResponse();
        await controllers.alterUser(req, res);

        expect(bllUser.alterUser).toHaveBeenCalledWith(mockId, mockBody);
        expect(res.status).toHaveBeenCalledWith(400);
        expect(res.send).toHaveBeenCalledWith({ message: errorMessage });
    });
});

describe('typeUserList', () => {
    it('deve chamar a função bllUser.typeUserList e retornar o resultado', async () => {
        const mockResult = [{ id: 1, type: 'Admin' }];
        bllUser.typeUserList = jest.fn().mockResolvedValue(mockResult);

        const req = mockRequest();
        const res = mockResponse();
        await controllers.typeUserList(req, res);

        expect(bllUser.typeUserList).toHaveBeenCalled();
        expect(res.status).toHaveBeenCalledWith(200);
        expect(res.send).toHaveBeenCalledWith(mockResult);
    });

    it('deve retornar um erro 400 em caso de falha', async () => {
        const errorMessage = 'Erro ao listar tipos de usuário';
        bllUser.typeUserList = jest.fn().mockRejectedValue(new Error(errorMessage));

        const req = mockRequest();
        const res = mockResponse();
        await controllers.typeUserList(req, res);

        expect(bllUser.typeUserList).toHaveBeenCalled();
        expect(res.status).toHaveBeenCalledWith(400);
        expect(res.send).toHaveBeenCalledWith({ error: true, message: errorMessage });
    });
});

describe('educationalInstitutionList', () => {
    it('deve chamar a função bllUser.educationalInstitutionList e retornar o resultado', async () => {
        const mockResult = [{ id: 1, name: 'University' }];
        bllUser.educationalInstitutionList = jest.fn().mockResolvedValue(mockResult);

        const req = mockRequest();
        const res = mockResponse();
        await controllers.educationalInstitutionList(req, res);

        expect(bllUser.educationalInstitutionList).toHaveBeenCalled();
        expect(res.status).toHaveBeenCalledWith(200);
        expect(res.send).toHaveBeenCalledWith(mockResult);
    });

    it('deve retornar um erro 400 em caso de falha', async () => {
        const errorMessage = 'Erro ao listar instituições educacionais';
        bllUser.educationalInstitutionList = jest.fn().mockRejectedValue(new Error(errorMessage));

        const req = mockRequest();
        const res = mockResponse();
        await controllers.educationalInstitutionList(req, res);

        expect(bllUser.educationalInstitutionList).toHaveBeenCalled();
        expect(res.status).toHaveBeenCalledWith(400);
        expect(res.send).toHaveBeenCalledWith({ error: true, message: errorMessage });
    });
});
