/*
  Warnings:

  - You are about to drop the column `createdAd` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `createdAd` on the `OrderProduct` table. All the data in the column will be lost.
  - You are about to drop the column `createdAd` on the `Product` table. All the data in the column will be lost.
  - The `ingredients` column on the `Product` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Order" DROP COLUMN "createdAd",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "OrderProduct" DROP COLUMN "createdAd",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "createdAd",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
DROP COLUMN "ingredients",
ADD COLUMN     "ingredients" TEXT[];
