const{Model,DataTypes}=require('sequelize');
const sequelize = require('../config/database');

class produto extends Model{}

produto.init({
    id_cliente: {
        type: DataTypes.INTEGER,
        primarykey: true,
        autoincrement: true
    },
    nome:{
        type:DataTypes.STRING
    },
    email: {
        type:DataTypes.TEXT
    },
    datanascimento: {
        type:DataTypes.DATE
    },
    senha: {
        type:DataTypes.TEXT
    },
    telefone: {
        type:DataTypes.num
    },
    endereco: {
        type:DataTypes.TEXT
    }
}, {
    sequelize,
    modelname:'produtos',
    timestamps:false
})