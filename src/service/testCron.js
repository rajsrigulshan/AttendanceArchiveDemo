import cron from "node-cron"
import { PrismaClient } from "@prisma/client"

const prism=new PrismaClient();

function testSchedularFunction(schedularId){
    console.log("I got triggered.....");
    console.log("name is", schedularId)

}

export function testSchedule(){
    const task=cron.schedule("* * * * *",()=>testSchedularFunction("Task_1"))
    
}
