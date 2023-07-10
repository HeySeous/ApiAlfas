const connection = require('../database/config');

const alumnos_certificadoGet = async(req, res) => {
    //res.json('ruta para obtener todos los alumnos_certificados');
    try{
        const {expediente} = req.params;

        connection.query(`SELECT a.nombres, a.apellidos, c.nombre, c.descripcion, ac.fechaInicio, ac.fechaFin FROM alumnos a INNER JOIN alumnos_certificados ac ON a.expediente = ac.expediente_alumno
        INNER JOIN certificados c ON ac.certificado_id = c.id WHERE a.expediente = ${expediente};`, (err, results) => {
            res.json(results);
        })
        
    }catch(error){
        console.log(error);
    }
}

const alumnos_certificadoPost = async(req, res) => {
    //res.json('se registra un certificado a un un alumno');
    try{
        const {expediente_alumno, certificado_id, fechaInicio, fechaFin} = req.body;

        connection.query(`INSERT INTO alumnos_certificados(expediente_alumno, certificado_id, fechaInicio, fechaFin) 
        VALUES(${expediente_alumno}, ${certificado_id}, "${fechaInicio}", "${fechaFin}")`, (err, results) => {
            res.json(results);
        });
    }catch(error){  
        console.log(error);
    }
}

module.exports = {
    alumnos_certificadoGet,
    alumnos_certificadoPost
}