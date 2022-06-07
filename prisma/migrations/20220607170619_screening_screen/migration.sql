/*
  Warnings:

  - You are about to drop the column `customerId` on the `Contact` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[customerID]` on the table `Contact` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `customerID` to the `Contact` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Contact" DROP CONSTRAINT "Contact_customerId_fkey";

-- DropIndex
DROP INDEX "Contact_customerId_key";

-- AlterTable
ALTER TABLE "Contact" DROP COLUMN "customerId",
ADD COLUMN     "customerID" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Screen" ALTER COLUMN "createdAt" SET DEFAULT CURRENT_TIMESTAMP;

-- CreateIndex
CREATE UNIQUE INDEX "Contact_customerID_key" ON "Contact"("customerID");

-- AddForeignKey
ALTER TABLE "Contact" ADD CONSTRAINT "Contact_customerID_fkey" FOREIGN KEY ("customerID") REFERENCES "Customer"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
