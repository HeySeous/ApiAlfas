const connection = require('../database/config');

const alumnosGet = async(req, res) => {
   //res.json('ruta para obtener todos los alumnos');
   try {
        connection.query('SELECT * FROM alumnos;', (err, results) => {
            res.json(results);
        });
    } catch (error) {
        console.log(error)
}


}

const alumnoGet = async(req, res) => {
    //res.json('ruta para un alumno');
    try{
        const {expediente} = req.params;

        connection.query(`SELECT * FROM alumnos WHERE expediente = ${expediente};`, (err, results) => {
            res.json(results);
        })
        
    }catch(error){
        console.log(error);
    }
}

const alumnoPost = async(req, res) => {
    //res.json('se registro un alumno');
    try{
        const {expediente, nombres, apellidos, correo, skills} = req.body;

        connection.query(`INSERT INTO alumnos(expediente, nombres, apellidos, correo, skills) 
        VALUES(${expediente}, "${nombres}", "${apellidos}", "${correo}", "${skills}")`, (err, results) => {
            res.json(results);
        });
    }catch(error){
        console.log(error);
    }
}

module.exports = {
    alumnosGet,
    alumnoGet,
    alumnoPost
}