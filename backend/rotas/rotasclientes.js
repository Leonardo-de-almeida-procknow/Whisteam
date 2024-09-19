const express = require('express');
const router = express.Router();
const ClienteController = require('../controlador/controladorcliente');

// Rota para criar um novo produto
router.post('/clientes', ClienteController.createCliente);

// Rota para obter todos os clientes
router.get('/clientes', ClienteController.getAllClientes);

// Rota para obter um produto pelo ID
router.get('/clientes/:id', ClienteController.getClienteById);

// Rota para atualizar um produto
router.put('/clientes/:id', ClienteController.updateCliente);

// Rota para deletar um produto
router.delete('/clientes/:id', ClienteController.deleteCliente);

//rota para entrar em um produto
router.post('/clientes/login', ClienteController.login)

module.exports = router;