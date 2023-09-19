const express = require("express");
const mongoose = require('mongoose');
const authRouter = express.Router();
const User = require("../models/user");
const bcryptjs = require("bcryptjs");

// authRouter.get("/user", (req, res) => {
//     res.json({ msg: "Elias G/Amanuel"});
// });

// SIGN UP ROUTE
authRouter.post("/api/signup", async (req, res) => {
    try {
// console.log(req.body);
const { name, email, password } = req.body;

const existingUser = await User.findOne({ email });
if(existingUser) {
 return res.status(400).json({ msg: "User with same email already exists!" });
}
const hashedPassword = await bcryptjs.hash(password, 8);
let user = new User({
 email,
 password:hashedPassword,
 name
})
user = await user.save();
res.json(user);
 // get the date from the client/ frontend

 // post that data in to the database

 // return that data to the user
    }catch(e) {
        res.status(500).json({ error: e.message });
    }
   
});

module.exports = authRouter;