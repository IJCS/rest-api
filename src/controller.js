import {pool} from './db.js';

class LibrosController{
  async getAll(req, res){
    const [result] = await pool.query('SELECT * FROM libros');
    res.json(result);
  }

  async getOne(req, res){
    try {
      const carga = req.body;
      const [result] = await pool.query(`SELECT * FROM libros WHERE id=(?)`,[carga.id]);
      res.json(result);
    } catch (e) {
      res.json({"Error":e});
    }
  }

  async add(req, res){
    try {
      const carga = req.body;
      if(carga.nombre && carga.autor && carga.categoria && carga.año && carga.ISBN){
        throw new Error("Datos Requeridos");
      }
      const [result] = await pool.query(`INSERT INTO libros (nombre , autor , categoria , \`año-publicacion\` , ISBN ) VALUES (?, ?, ?, ?, ?)`,[carga.nombre,carga.autor,carga.categoria,carga.año,carga.ISBN]);
      res.json({"ID Insertado":result.insertId});
    } catch (e) {
      console.log(e);
    }
  }

  async remove(req, res){
    try
    {
      const carga = req.body;
      const [result] = await pool.query(`DELETE FROM libros WHERE id =(?)`,[carga.id]);
      res.json({"Registros eliminados":result.affectedRows});
    }
    catch (e)
    {
      res.json({"Error":e});
    }

  }

  async modify(req, res){
    const carga = req.body;
    const [result] = await pool.query(`UPDATE libros SET nombre = (?), autor=(?), categoria=(?), \`año-publicacion\` = (?), ISBN= (?) WHERE id = (?)`, [carga.nombre,carga.autor,carga.categoria,carga.año,carga.ISBN,carga.id]);
    res.json({"Registros modificados":result.affectedRows});
  }

  async getISBN(req,res){
    const carga = req.body;
    const [result] = await pool.query(`SELECT * FROM libros WHERE ISBN=(?)`,[carga.ISBN]);
    res.json(result);
  }

  async rmvISBN(req,res){
    const carga = req.body;
    const [result] = await pool.query(`DELETE FROM libros WHERE ISBN =(?)`,[carga.ISBN]);
    res.json({"Registros eliminados":result.affectedRows});
  }

  async mdfISBN(req, res){
    const carga = req.body;
    const [result] = await pool.query(`UPDATE libros SET nombre = (?), autor=(?), categoria=(?), \`año-publicacion\` = (?) WHERE ISBN = (?)`, [carga.nombre,carga.autor,carga.categoria,carga.año,carga.ISBN]);
    res.json({"Registros modificados":result.affectedRows});
  }


}

export const libro = new LibrosController();
