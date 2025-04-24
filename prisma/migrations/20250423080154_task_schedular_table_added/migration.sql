-- CreateTable
CREATE TABLE "SchedularLog" (
    "schedularId" INTEGER NOT NULL,
    "executedDate" TIMESTAMP(3) NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "SchedularLog_executedDate_key" ON "SchedularLog"("executedDate");
