console.log("Hello World");

const express = require('express');


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

app.listen(PORT, () => {
    console.log(`Connected at port ${PORT}`);
})