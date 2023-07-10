const connection = require('../database/config');

const adminsGet = async(req, res) => {
    //res.json('ruta para obtener todos los admins');
    try {
        connection.query('SELECT * FROM administradores;', (err, results) => {
            res.json(results);
        });
    } catch (error) {
        console.log(error)
    }
}
const adminGet = async(req, res) => {
    //res.json(ruta para obtener un admin);
    try{
        const {usuario, contrasena} = req.params;

        connection.query(`SELECT * FROM administradores WHERE usuario = "${usuario}" AND contrasena = "${contrasena}";`,
         (err, results) => {
            res.json(results);
        })
    } catch(error){
        console.log(error);
    }
}

module.exports = {
    adminsGet,
    adminGet
}