-- AlterTable
ALTER TABLE "SchedularLog" ADD COLUMN     "schedularLogId" SERIAL NOT NULL,
ADD CONSTRAINT "SchedularLog_pkey" PRIMARY KEY ("schedularLogId");
