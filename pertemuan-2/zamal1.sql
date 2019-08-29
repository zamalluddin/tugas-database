/*Pertemuan ke - 1 Membuat DataBase
CARA KONEKSIKAN MYSQL KE TERMINAL*/
cd xmapp\mysql\bin;
>mysql -u root -p;

/*cCARA MENAMPILKAN DATABASE*/
SHOW DATABASES;

/*CARA MEMBUAT DATABASE*/
CREATE DATABASE `11rpl1-db`;

/*CARA MEMBUAT TABEL*/
CREATE TABLE `siswa` (
	id_siswa INT(11) PRIMARY KEY AUTO_INCREMENT,
	nis CHAR(10),
	nama_lengkap VARCHAR(225),
	jk CHAR,
    tmp_lahir VARCHAR(225),
    tgl_lahir DATE,
    alamat TEXT,
    no_hp CHAR(15),
    tgl_entri DATETIME);

/*CARA MENAMPILKAN TABEL*/
SHOW TABLES;

/*CARA MENAMPILKAN SPESIFIKASI TABLE*/
DESCRIBE `siswa`;

/*CARA MENAMBAHKAN RECORD KE TABLE*/
INSERT INTO `siswa` SELECT
    id_siswa = NULL,
	nis = '11800831',
	nama_lengkap = 'BEKTI NUN IBRAHIM',
	jk = 'L',
    tmp_lahir = 'SUBANG',
    tgl_lahir = '2003-01-02',
    alamat = 'SOKLAT SUBANG',
    no_hp = '089530055529',
    tgl_entri = NOW();


/*Pertemuan ke - 2 BasisData*/

/*MENAMPILKAN SELURUH DATA TABLE*/
SELECT * FROM `siswa`;

/*Menampilkan beberapa record PADA TABLE*/
SELECT * FROM `siswa` LIMIT 3,5;

/*Menampilkan DATA DENGAN KONDISI TERTENTU;*/
SELECT * FROM `siswa` where jk = 'P';

/*Menampilkan DAN MENGURUTKAN RECORD BERDASARKAN FIELD TERTENTU*/
SELECT * FROM `siswa` ORDER BY tgl_lahir DESC; 
/*DESC untuk nilai tertinggi ke rendah ASC untuk nilai rendah ke tinggi*/

/*Menampilkan HURUF MENJADI BESAR ATAU KECIL*/
SELECT UPPER(alamat) AS alamat FROM `siswa`; 
/*UPPER untuk memperbesar huruf LOWER untuk memperkecil huruf*/

/*MENAMPILKAN BEBERAPA FIELD DENGAN KONDISI TERTENTU*/
SELECT nama_lengkap, tmp_lahir, tgl_lahir FROM `siswa` WHERE YEAR(tgl_lahir) = '2002';

/*MEMPERBAHARUI DATA PADA TABLE*/
UPDATE `siswa` SET tmp_lahir = `BANDUNG`, tgl_lahir = '2003-01-01' WHERE id_siswa = '1';

/*MENGHAPUS DATA*/
DELETE FROM `siswa` WHERE id_siswa = '1';
