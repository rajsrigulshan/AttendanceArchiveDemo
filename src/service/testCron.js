import cron from "node-cron"
import { PrismaClient } from "@prisma/client"

const prism=new PrismaClient();

const testSchedularFunction=(schedularId)=>{
    console.log("I got triggered.....");
    console.log("name is", schedularId)

}

export function testSchedule(){
    const task=cron.schedule("* * * * * *",()=>testSchedularFunction("Task_1"),{
        name:"task 1"
    })
    
}
