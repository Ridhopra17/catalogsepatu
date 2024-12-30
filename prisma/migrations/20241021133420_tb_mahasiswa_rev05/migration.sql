/*
  Warnings:

  - You are about to drop the `db_mahasiswa` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `db_mahasiswa`;

-- CreateTable
CREATE TABLE `tb_mahasiswa` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `npm` CHAR(8) NOT NULL,
    `nama` VARCHAR(50) NOT NULL,
    `prodi` VARCHAR(20) NOT NULL,
    `status` ENUM('Y', 'N') NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_penilaian` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nilai` DOUBLE NOT NULL,
    `id_mahasiswa` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tb_penilaian` ADD CONSTRAINT `tb_penilaian_id_mahasiswa_fkey` FOREIGN KEY (`id_mahasiswa`) REFERENCES `tb_mahasiswa`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
