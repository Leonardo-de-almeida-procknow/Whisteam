const{Model,DataTypes}=require('sequelize');
const sequelize = require('../config/database');

class produto extends Model{}

produto.init({
    id_produto: {
        type: DataTypes.INTEGER,
        primarykey: true,
        autoincrement: true
    },
    nome_produto:{
        type:DataTypes.STRING
    },
    descrição:{
        type:DataTypes.TEXT
    },
    preco: {
        type:DataTypes.DECIMAL
    }
}, {
    sequelize,
    modelname:'produtos',
    timestamps:false
})