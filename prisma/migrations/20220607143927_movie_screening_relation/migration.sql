/*
  Warnings:

  - Added the required column `movieID` to the `Screening` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Screening" ADD COLUMN     "movieID" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Screening" ADD CONSTRAINT "Screening_movieID_fkey" FOREIGN KEY ("movieID") REFERENCES "Movie"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
