const express = require('express');
const router = express.Router();
const jogoController = require('../controlador/controladorjogos');

// Rota para criar um novo jogo
router.post('/jogos', jogoController.createJogo);

// Rota para obter todos os jogos
router.get('/jogos', jogoController.getAllJogos);

// Rota para obter um jogo pelo ID
router.get('/jogos/:id', jogoController.getJogoById);

// Rota para atualizar um jogo
router.put('/jogos/:id', jogoController.updateJogo);

// Rota para deletar um jogo
router.delete('/jogos/:id', jogoController.deleteJogo);

module.exports = router;