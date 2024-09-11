const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

class Jogo extends Model { }

Jogo.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nome: {
        type: DataTypes.TEXT
    },
    cria_destr: {
        type: DataTypes.TEXT
    },
    desc: {
        type: DataTypes.TEXT
    },
    avali: {
        type: DataTypes.DECIMAL
    },
    preco: {
        type: DataTypes.DECIMAL
    },
    ida_rec: {
        type: DataTypes.TEXT
    },
    dt_lc: {
        type: DataTypes.DATE
    }
}, {
    sequelize,
    modelName: 'jogos',
    timestamps: false
})

module.exports = Jogo