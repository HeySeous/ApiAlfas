const {Router} = require('express');

const router = Router();

const {alumnos_certificadoGet, alumnos_certificadoPost} = require('../controllers/alumnos_certificados');

router.get('/:expediente', alumnos_certificadoGet);
router.post('/', alumnos_certificadoPost);

module.exports = router;