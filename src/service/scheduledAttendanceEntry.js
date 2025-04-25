import cron from "node-cron"
import { PrismaClient } from "@prisma/client";
// import { use } from "express/lib/application";


// 
const prisma=new PrismaClient();
let count =0;
const scheduledtask=async ()=>{
    console.log("I am scheduled task running at",Date.now());
    console.log("I am running at: ",count," times.");
    count++;
    
    try {
        let users=await prisma.user.findMany({
            where:
            {membershipStatus:'active',
                locationId:1
            },
            select:{
                userId:true,
                locationId:true,
                membershipStatus:true,
                fullName:true
            }
        })
        console.log("Users: ",users);
        console.log("Total No. of Users: ",users.length);
        console.log("Task Executed successfully");
        const date=getTodaysDate();
        await prisma.schedularLog.create({
            data:{
                schedularId:1,
                executedDate:date
            }
        });
        
    } catch (error) {
        console.log("something went wrong...",error)
    }
    
}

export async function checkSchedule(schedularId){
   const todaysDate=getTodaysDate();
   console.log("Date: ",todaysDate);
   console.log("ScheduleId: ",schedularId);
   
   
//    try {
//         let val=await prisma.schedularLog.findUnique({
//         where:{
//             executedDate:todaysDate
//         }
//     });

//     console.log("Schedular Log DB: ",val)
//     if(val!=null){
//         console.log("Already triggered");
        
//     }
//     else{
//         console.log("scheduled Task Triggering");
//         // scheduledtask();
        

//     }


//    } catch (error) {
//     console.log("checkSchedule Failed: ",error);
//    }
}

export function taskSchedular(){
    cron.schedule("*/2 * * * * *",()=>checkSchedule("schedule_1"));
    cron.schedule("*/5 * * * * *",()=>checkSchedule("schedule_2"));

}


const getTodaysDate=()=>{
    const today = new Date();
    today.setUTCHours(0, 0, 0, 0);
    // const year = today.getFullYear();
    // const month = String(today.getMonth() + 1).padStart(2, '0'); // Month is 0-indexed, so add 1
    // const day = String(today.getDate()).padStart(2, '0');

    // const todayFormatted = `${year}-${month}-${day}`;
    
    console.log(today.toISOString()); // Output: 2025-04-23
    return  today.toISOString();
    // return todayFormatted

}