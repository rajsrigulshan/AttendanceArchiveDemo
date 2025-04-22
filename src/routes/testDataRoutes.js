import { Router } from "express";
import { InsertData } from "../controller/testDataController.js";
const testDataRouter=Router();


testDataRouter.get("/executeSql",InsertData);
// testDataRouter.get("/rollback",deleteData);
export {testDataRouter};