const express = require("express");
const mongoose = require('mongoose');
const authRouter = express.Router();
const User = require("../models/user");


// authRouter.get("/user", (req, res) => {
//     res.json({ msg: "Elias G/Amanuel"});
// });

authRouter.post("api/signup", async (req, res) => {
   // console.log(req.body);
   const { name, email, password } = req.body;

   const existingUser = await User.findOne({ email });
   if(existingUser) {
    return res.status(400).json({ msg: "User with same email already exists!" });
   }

    // get the date from the client/ frontend

    // post that data in to the database

    // return that data to the user
});

module.exports = authRouter;