/*
  Warnings:

  - Made the column `picture` on table `Event` required. This step will fail if there are existing NULL values in that column.
  - Changed the type of `category` on the `Event` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Made the column `description` on table `Event` required. This step will fail if there are existing NULL values in that column.

*/
-- CreateEnum
CREATE TYPE "category" AS ENUM ('ACTIVE', 'MUSIC', 'ART', 'TRAVEL', 'FOOD', 'MOVIE', 'OTHER');

-- AlterTable
ALTER TABLE "Event" ALTER COLUMN "picture" SET NOT NULL,
DROP COLUMN "category",
ADD COLUMN     "category" "category" NOT NULL,
ALTER COLUMN "description" SET NOT NULL;
