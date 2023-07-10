const {Router} = require('express');

const router = Router();

const {certificadosGet, certificadoGet, certificadoPost} = require('../controllers/certificados');

router.get('/', certificadosGet);
router.get('/:id', certificadoGet);
router.post('/', certificadoPost);

module.exports = router;