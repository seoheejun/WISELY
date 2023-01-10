-- Admin (관리자)
CREATE TABLE admin(
    admin_id varchar(20) not null,
    admin_pw varchar(20) not null,
    admin_name varchar(20) not null,
    admin_email varchar(30) not null
);

INSERT INTO admin VALUES('ADMIN', '1234', '홍길동', 'test@gmail.com');

-- Member (회원)
CREATE TABLE member(
	mem_no int primary key auto_increment,
	mem_name varchar(30) not null,
    mem_email varchar(30) not null,
	mem_pw varchar(20) not null,
    mem_zipcode varchar(10),
    mem_road_addr varchar(200),
    mem_jibun_addr varchar(200),
    mem_detail_addr varchar(200),
    unique key(mem_email)
);

-- Product (제품)
CREATE TABLE product(
    prod_no int primary key auto_increment,
    prod_category_fk varchar(20) not null,
    prod_name varchar(50) not null,
    prod_company varchar(50) not null,
    prod_image varchar(50),
    prod_qty int default 0,
    prod_price int default 0,
    prod_spec varchar(20),
    prod_content varchar(300),
    prod_inputdate date,
    prod_modifydate date,
    prod_infoImage1 varchar(200),
    prod_infoImage2 varchar(200),
    prod_infoImage3 varchar(200)
);

-- Category (카테고리)
CREATE TABLE category(
	cat_no int primary key auto_increment,
    cat_code varchar(20) not null,
    cat_name varchar(30) not null
);

-- Indent (주문)
CREATE TABLE indent(
	indent_no int primary key auto_increment,
    indent_name_fk varchar(30) not null,
    indent_status varchar(30) not null
);