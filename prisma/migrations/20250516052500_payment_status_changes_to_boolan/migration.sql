/*
  Warnings:

  - Changed the type of `isPaymentDone` on the `Payment` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Payment" DROP COLUMN "isPaymentDone",
ADD COLUMN     "isPaymentDone" BOOLEAN NOT NULL;

-- DropEnum
DROP TYPE "paymentStatus";
