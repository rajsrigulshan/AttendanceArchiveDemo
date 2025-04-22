import express from "express"
import { testDataRouter } from "./src/routes/testDataRoutes.js";
const app =express();



// testing express......
app.get("/",(req,res)=>{
    console.log("hellow world.....");
    res.status(200).send("hellow World......")
    return;
    
})

app.use('/testData',testDataRouter)


app.listen(3000);
console.log("Server running on port:3000");