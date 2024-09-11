const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

class Cliente extends Model { }

Cliente.init({
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    nome: {
        type: DataTypes.TEXT
    },
    senha: {
        type: DataTypes.TEXT
    },
    email: {
        type: DataTypes.TEXT
    },
    telefone: {
        type: DataTypes.STRING
    },
    data_d_ncm: {
        type: DataTypes.DATE
    },
    endereco: {
        type: DataTypes.TEXT
    }
}, {
    sequelize,
    modelName: 'clientes',
    timestamps: false
})

module.exports = Cliente