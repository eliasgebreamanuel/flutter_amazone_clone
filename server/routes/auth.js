const express = require("express");
const mongoose = require('mongoose');
const authRouter = express.Router();
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
 const jwt = require("jsonwebtoken");
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


// SIGNIN ROUTE

authRouter.post("/api/signin", async (req, res) => {
    try {
        const { email, password } = req.body;

        const user = await User.findOne({ email });
        if(!user) {
            return res.status(400).json({msg: "User with this email does n ot exist"});
        }

        const isMatch = await bcryptjs.compare(password, user.password);
        if(!isMatch){
            return res.status(400).json({ msg: "Incorrect password." });
        }
        const token = jwt.sign({id: user._id}, "passwordKey");
        res.json({token, ...user._doc});
    }catch(e) {
        res.status(500).json({ error: e.message });
    }
})
module.exports = authRouter;