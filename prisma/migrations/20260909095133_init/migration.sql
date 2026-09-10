/*
  Warnings:

  - You are about to drop the column `affiliate_link` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `category_slug` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `cons` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `content` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `excerpt` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `featured_image` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `product_name` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `pros` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `slug` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `specs` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `posts` table. All the data in the column will be lost.
  - You are about to drop the `Category` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `content_panjang` to the `posts` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "posts_slug_key";

-- AlterTable
ALTER TABLE "posts" DROP COLUMN "affiliate_link",
DROP COLUMN "category_slug",
DROP COLUMN "cons",
DROP COLUMN "content",
DROP COLUMN "excerpt",
DROP COLUMN "featured_image",
DROP COLUMN "product_name",
DROP COLUMN "pros",
DROP COLUMN "slug",
DROP COLUMN "specs",
DROP COLUMN "title",
DROP COLUMN "type",
ADD COLUMN     "content_panjang" TEXT NOT NULL;

-- DropTable
DROP TABLE "Category";

-- DropEnum
DROP TYPE "PostType";
