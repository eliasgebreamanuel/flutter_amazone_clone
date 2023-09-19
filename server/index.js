console.log("Hello World");

const express = require('express');
const mongoose = require('mongoose');

const authRouter = require("./routes/auth");
const PORT = 3000;

const app = express();

// middleware
app.use(authRouter);
// CREATING AN API
// GET, PUT, POST, DELETE, UPDATE -> CRUD
// app.get('/', (req, res) => {
//     res.json({name: 'Elias'})
// });
// app.get("/hello-world", (req, res) => {
//     res.json({msg:"hello world"});
// });
// Connections
const DB = "mongodb+srv://root:root@cluster0.1mevaf6.mongodb.net/?retryWrites=true&w=majority";
mongoose.connect(DB)
.then(() => {
    console.log("Connection To DB Successful");
}).catch((e) => {
    console.log(e);
});



app.listen(PORT, () => {
    console.log(`Connected at port ${PORT}`);
})