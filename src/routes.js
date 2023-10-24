import { Router } from 'express';
import { libro } from './controller.js';

export const router = Router();

router.get('/libros', libro.getAll);
router.post('/libro', libro.add);
router.delete('/libro', libro.remove)
router.put('/libro', libro.modify)
router.get('/libro', libro.getOne)
router.get('/isbn',libro.getISBN)
router.delete('/isbn',libro.rmvISBN)
