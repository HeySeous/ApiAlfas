const {Router} = require('express');

const router = Router();

const {adminsGet,adminGet} = require('../controllers/admins');

router.get('/', adminsGet);
router.get('/:usuario/:contrasena', adminGet);


module.exports = router;