/*
  Warnings:

  - You are about to drop the column `content_panjang` on the `posts` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[slug]` on the table `posts` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `content` to the `posts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slug` to the `posts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `posts` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "PostType" AS ENUM ('news', 'review', 'tutorial');

-- AlterTable
ALTER TABLE "posts" DROP COLUMN "content_panjang",
ADD COLUMN     "affiliate_link" TEXT,
ADD COLUMN     "category_slug" TEXT,
ADD COLUMN     "cons" TEXT[],
ADD COLUMN     "content" TEXT NOT NULL,
ADD COLUMN     "excerpt" TEXT,
ADD COLUMN     "featured_image" TEXT,
ADD COLUMN     "product_name" TEXT,
ADD COLUMN     "pros" TEXT[],
ADD COLUMN     "slug" TEXT NOT NULL,
ADD COLUMN     "specs" JSONB,
ADD COLUMN     "title" TEXT NOT NULL,
ADD COLUMN     "type" "PostType" NOT NULL DEFAULT 'review';

-- CreateTable
CREATE TABLE "Category" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "slug" TEXT NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Category_slug_key" ON "Category"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "posts_slug_key" ON "posts"("slug");
