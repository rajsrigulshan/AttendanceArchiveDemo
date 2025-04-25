import express from "express"
import { testDataRouter } from "./src/routes/testDataRoutes.js";
import { taskSchedular } from "./src/service/scheduledAttendanceEntry.js";
import { testSchedule } from "./src/service/testCron.js";
const app = express();

// testSchedule();
taskSchedular();

// testing express......
app.get("/", async (req, res) => {
    console.log("hellow world.....");
    res.status(200).send("hellow World......",todayFormatted)
    return;

})

app.use('/testData', testDataRouter)


app.listen(3000);
console.log("Server running on port:3000");