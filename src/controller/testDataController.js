import { PrismaClient } from "@prisma/client";
// import { Request, Response } from "express";
import fs from "node:fs/promises";


const prisma = new PrismaClient();
export async function InsertData(req, res) {
    const filePath = "./src/testData/seed.sql";

    try {

        console.log("Attempting to read the SQL file...");
        let sqlScript;
        try {
            sqlScript = await fs.readFile(filePath, 'utf-8');
            console.log("Successfully read SQL script (first 50 chars):", sqlScript ? sqlScript.substring(0, 50) + "..." : "(empty)");
        } catch (error) {
            console.error("Error reading file:", error);
            res.status(500).send("Error reading SQL script file.");
            return;

        }


        // console.log("SQL: ",sqlScript);
        const sqlStatements=sqlScript.split(";");
        console.log("Number of SQL Statements: ",sqlStatements.length);
        let executionCount=0;
        for (const statement of sqlStatements){
            const trimmedStatement=statement.trim();
            if(trimmedStatement){
                console.log("Executing SQL:", trimmedStatement);
                await prisma.$executeRawUnsafe(trimmedStatement);
                executionCount++;
        
            }
        }
        console.log(`Successfully executed ${executionCount} SQL statements.`);
        res.status(200).send(`Successfully executed ${executionCount} SQL statements.`);
        return;

    } catch (error) {
        console.log("Error While Sql Execution.....", error);
        res.status(500).send("Error While Sql Execution.....");
        return;


    }
    finally {
        await prisma.$disconnect();
    }

}