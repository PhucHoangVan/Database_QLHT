-- DATA DEFINITION LANGUAGE
-- Tạo cấu trúc bảng


CREATE DATABASE	QLHT
GO

USE QLHT
GO

-- Tạo bảng SINHVIEN
CREATE TABLE SINHVIEN
(
	MSSV			VARCHAR(20)		PRIMARY KEY,
	TENTRUONG		NVARCHAR(100)		NULL,
	TENLOP			VARCHAR(100)		NULL,
	TENNGANH		NVARCHAR(100)		NULL,
	KHOA			INT			NULL,
	TINH			NVARCHAR(100)		NULL,
)

-- Tạo bảng ACCOUNT
CREATE TABLE ACCOUNT
(
	USERNAME		VARCHAR(40)		PRIMARY KEY,
	PASSWORD		VARCHAR(1000)		NOT NULL,
	DISPLAYNAME		NVARCHAR(100)		NOT NULL		DEFAULT N'XIN CHÀO!',
	MSSV			VARCHAR(20),

	-- Khóa ngoại MSSV tham chiếu đến khóa chính MSSV trong bảng SINHVIEN
	FOREIGN KEY		(MSSV)			REFERENCES SINHVIEN(MSSV)
)
