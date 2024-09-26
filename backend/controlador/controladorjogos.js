const Jogo = require('../modelo/jogos');

const JogosController = {
    createJogo: async (req, res) => {
        try {
            const novoJogo = await Jogo.create(req.body);
            res.json(novoJogo);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getAllJogos: async (req, res) => {
        try {
            const jogos = await Jogo.findAll();
            res.json(jogos);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getJogoByNome: async (req, res) => {
        try {
            const jogo = await Jogo.findOne({
                where: {
                    nome: req.params.nome
                }
            });
            if (!jogo) {
                return res.status(404).send('Jogo não encontrado');
            }
            res.json(jogo);
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    updateJogo: async (req, res) => {
        try {
            const jogo = await Jogo.findByPk(req.params.id);
            if (!jogo) {
                return res.status(404).send('Jogos não encontrado');
            }
            await jogo.update(req.body);
            res.send('Jogos atualizado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    deleteJogo: async (req, res) => {
        try {
            const jogo = await Jogo.findByPk(req.params.id);
            if (!jogo) {
                return res.status(404).send('Jogos não encontrado');
            }
            await jogo.destroy();
            res.send('Jogos deletado com sucesso');
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    pesquisaJogos: async (req, res) => {
        try {
            const jogos = await Jogo.findAll()
            res.send(jogos)
        } catch (error) {
            res.status(500).send(error.message);
        }
    },

    getJogoBycategoria: async (req, res) => {
        try {
            const jogos = await Jogo.findAll({
                where: {
                    categoria: req.params.categoria
                }
            });
            if (!jogos) {
                return res.status(404).send('Jogos não encontrado');
            }
            res.json(jogos);
        } catch (error) {
            res.status(500).send(error.message);
        }
    }
}
module.exports = JogosController;