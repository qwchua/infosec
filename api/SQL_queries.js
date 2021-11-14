//get product info with product id
app.get('/api/product/:id', (req, res)=> {
    const productId = req.body.productId;
    const sqlSelect = `SELECT * FROM Product WHERE product_id = ${req.params.id}`
    db.query(sqlSelect, (err, result) => {
        res.send(result);
    })
})

//find userid with email
app.get('/api/getuserid/:email', (req, res)=> {
    const sqlSelect = `SELECT * FROM Account WHERE email = "${req.params.email}"`
    db.query(sqlSelect, (err, result) => {
        res.send(result);
    })
})

//get user info
app.get('/api/getuserinfo/:id', (req, res)=> {
    const sqlSelect = `SELECT * FROM Account WHERE user_id = ${req.params.id}`
    db.query(sqlSelect, (err, result) => {
        res.send(result);
  })
})

//get user purchase
app.get('/api/getpurchases/:buyerid', (req, res)=> {
    const sqlSelect = `SELECT * FROM CRUDDatabase.OrderHistory WHERE buyer_id = ${req.params.buyerid}`
    db.query(sqlSelect, (err, result) => {
        if(err) throw err;
        res.send(result);
  })
})

//check if user bookmarked product
app.post('/api/checkbookmark', (req, res)=> {
    const userid = req.body.user_id;
    const productid = req.body.product_id
    console.log(req.body)
    const sql = `SELECT * FROM CRUDDatabase.Bookmark WHERE user_id = ? AND product_id = ?`
    let query = db.query(sql,[userid,productid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//get user bookmarks
app.get('/api/getbookmarks/:userid', (req, res)=> {
    const sql = `SELECT * FROM CRUDDatabase.Bookmark b, CRUDDatabase.Product p WHERE p.product_id = b.product_id AND b.user_id = ${req.params.userid}`
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//get user sales
app.get('/api/sales/:userid', (req, res)=> {
    const sql = `SELECT o.order_id, o.order_date, o.buyer_name, o.buyer_address, o.buyer_postal, o.buyer_phone, p.product_name, p.price FROM CRUDDatabase.OrderHistory o, CRUDDatabase.Product p WHERE o.product_id = p.product_id AND o.seller_id= ${req.params.userid}`
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//get user reviews
app.get('/api/reviews/:userid', (req, res)=> {
    const sql = `SELECT o.buyer_name, o.review_desc, o.rating FROM CRUDDatabase.OrderHistory o, CRUDDatabase.Account a WHERE o.seller_id = a.user_id AND a.user_id = ${req.params.userid}`
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//get user average score
app.get('/api/averagereviewscore/:userid', (req, res)=> {
    const sql = `SELECT AVG(rating) as 'averageScore' FROM CRUDDatabase.OrderHistory o, CRUDDatabase.Account a WHERE o.seller_id = a.user_id AND a.user_id = ${req.params.userid}`
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//get user total number of reviews
app.get('/api/totalnumreviews/:userid', (req, res)=> {
    const sql = `SELECT COUNT(rating) as 'totalNumOfReviews' FROM CRUDDatabase.OrderHistory o, CRUDDatabase.Account a WHERE o.seller_id = a.user_id AND a.user_id = ${req.params.userid}`
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//get user purchase
app.get('/api/purchases/:userid', (req, res)=> {
    const sql = `SELECT o.order_id, o.order_date,a.username, p.product_name, p.price FROM CRUDDatabase.OrderHistory o, CRUDDatabase.Product p, CRUDDatabase.Account a WHERE o.product_id = p.product_id AND p.seller_id = a.user_id AND o.buyer_id= ${req.params.userid}`
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

//update review on order history table
app.post('/api/review/:orderid', (req, res)=> {
    const review_des = req.body.review_des;
    const rating = req.body.rating;
    const orderid = req.body.orderid;

    const sql = `UPDATE CRUDDatabase.OrderHistory SET review_desc = ?, rating = ? WHERE order_id = ?`
    let query = db.query(sql,[review_des,rating,orderid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})


//get seller listings with userid
app.get('/api/sellerlistings/:id', (req, res)=> {
    const sqlSelect = `SELECT * FROM Product WHERE seller_id = ${req.params.id} ORDER BY date DESC`
    db.query(sqlSelect, (err, result) => {
        if(err) throw err;
        res.send(result);
  })
})


//search query for products
app.get('/api/search/:searchquery', (req, res)=> {
    const sqlSelect = `SELECT * FROM CRUDDatabase.Product WHERE product_name LIKE "%${req.params.searchquery}%"`
    db.query(sqlSelect, (err, result) => {
        if(err) throw err;
        res.send(result);
  })
})


//get latest category products
app.get('/api/category/:categoryid', (req, res)=> {
    const sqlSelect = `SELECT * FROM CRUDDatabase.Product WHERE category = "${req.params.categoryid}" ORDER BY date DESC`
    db.query(sqlSelect, (err, result) => {
        if(err) throw err;
        res.send(result);
  })
})

//get latest 20 items for homepage
app.get('/api/homeproducts', (req, res)=> {
    const sqlSelect = `SELECT * FROM Product ORDER BY date DESC LIMIT 20`
    db.query(sqlSelect, (err, result) => {
        if(err) throw err;
        res.send(result);
  })
})

//create user and insert into accounts table
app.post("/api/createuser", (req, res) => {
    let userinfo = {
        email: req.body.email,
        username: req.body.username,
        name: req.body.name
    };
    let sql = 'INSERT INTO CRUDDatabase.Account SET ?';
    let query = db.query(sql,userinfo,(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send('user added')
    })
})

//user listing item
app.post("/api/list", (req, res) => {
    let sql = 'INSERT INTO CRUDDatabase.Product SET ?';
    let query = db.query(sql,req.body,(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send('product added')
    })
})

//insert bookmark
app.post("/api/insertbookmark", (req, res) => {
    let sql = 'INSERT INTO CRUDDatabase.Bookmark SET ?';
    let query = db.query(sql,req.body,(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send('bookmark added')
    })
})

//delete bookmark
app.post("/api/deletebookmark", (req, res) => {
    const userid = req.body.user_id;
    const productid = req.body.product_id

    let sql = 'DELETE FROM CRUDDatabase.Bookmark WHERE user_id = ? AND product_id = ?';
    let query = db.query(sql,[userid,productid],(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send('bookmark added')
    })
})

//user make order
app.post("/api/makeorder", (req, res) => {
    let order = req.body;
    let sql = 'INSERT INTO CRUDDatabase.OrderHistory SET ?';
    let query = db.query(sql,order,(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send('order added')
    })
})