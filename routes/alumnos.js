const {Router} = require('express');

const router = Router();

const {alumnosGet, alumnoGet, alumnoPost} = require('../controllers/alumnos');

router.get('/', alumnosGet);
router.get('/:expediente', alumnoGet);
router.post('/', alumnoPost);

module.exports = router;