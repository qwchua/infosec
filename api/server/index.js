const express = require('express');
const bodyParser =  require('body-parser')
const cors = require('cors')
const app = express();
const mysql = require('mysql');

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'rootTIC2601',
    database: 'CRUDDatabase',
});

app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({extended: true}))

//search query for book products (insecure)
app.get('/api/search1/:searchquery', (req, res)=> {
    const sqlSelect = `SELECT product_name, price, stock FROM CRUDDatabase.books WHERE product_name LIKE "%${req.params.searchquery}%"`
    console.log(sqlSelect);
    db.query(sqlSelect, (err, result) => {
        res.send(result);
  })
})

//search query for book products (secured)
app.get('/api/search2/:searchquery', (req, res)=> {
    const query = '%' + req.params.searchquery + '%';
    const sqlSelect = "SELECT product_name, price, stock FROM CRUDDatabase.books WHERE product_name LIKE " + db.escape(query);
    console.log(sqlSelect);
    db.query(sqlSelect, (err, result) => {
        if(err) throw err;
        res.send(result);
  })
})

app.listen(3001, ()=> {
    console.log('running server on port 3001');
})


