/*
  Warnings:

  - Added the required column `status` to the `db_mahasiswa` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `db_mahasiswa` ADD COLUMN `status` ENUM('Y', 'N') NOT NULL;
