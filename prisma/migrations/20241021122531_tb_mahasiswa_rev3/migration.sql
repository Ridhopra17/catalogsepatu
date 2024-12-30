/*
  Warnings:

  - Added the required column `nama` to the `db_mahasiswa` table without a default value. This is not possible if the table is not empty.
  - Added the required column `prodi` to the `db_mahasiswa` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `db_mahasiswa` ADD COLUMN `nama` VARCHAR(50) NOT NULL,
    ADD COLUMN `prodi` VARCHAR(20) NOT NULL,
    MODIFY `npm` CHAR(8) NOT NULL;
