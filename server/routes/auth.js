const express = require("express");

const authRouter = express.Router();

// authRouter.get("/user", (req, res) => {
//     res.json({ msg: "Elias G/Amanuel"});
// });

authRouter.post("api/signup", (req, res) => {
    // get the date from the client/ frontend

    // post that data in to the database

    // return that data to the user
});

module.exports = authRouter;