const connection = require('../database/config');

const certificadosGet = (req, res) => {
    //res.json('ruta para obtener todos los certificados');
    try{
        connection.query(`SELECT * FROM certificados;`, (err,results) => {
            res.json(results);
        })
    }catch(error){
        console.log(error);
    }
}

const certificadoGet = async(req, res) => {
    //res.json('ruta para un certificado');
    try {
        const {idPara} = req.params;
        connection.query(`SELECT * FROM certificados WHERE id=${idPara}`,(err,results) => {
            res.json(results);
        });
    } catch (error) {
        console.log(error)
    }
    
}

const certificadoPost = async(req, res) => {
    //res.json('ruta para registrar un certificado');
    try{
        const {nombre, descripcion, logo} = req.body;

        connection.query(`INSERT INTO certificados(nombre, descripcion, logo) VALUES("${nombre}","${descripcion}","${logo}")`, (err, results) => {
            res.json(results);
        });
    }catch(error){
        console.log(error);
    }
}

module.exports = {
    certificadosGet,
    certificadoGet,
    certificadoPost
}