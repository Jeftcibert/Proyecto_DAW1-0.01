 -- borra la BD si exite --
 DROP DATABASE IF EXISTS bdVeterinaria;
 -- creamos la bases de datos
 CREATE DATABASE bdVeterinaria;
 Use bdVeterinaria;
 
 -- Creacion de las tablas para el login --
 
 
 create table tb_tipUsuario
 (
 Tip_usua int not null,
 nomTip_usua varchar(255),
 primary key (Tip_usua)
 );
 
 create table tb_rol
 (
 cod_rol int (4),
 nomb_rol varchar(255),
 primary key (cod_rol)
 );
 
 create table tb_usuario
 (
 id int auto_increment,
 nom_usu varchar(255),
 ape_usu varchar(255),
 username_usu varchar(155),
 password_usu varchar(150) not null,
 fechRegis_usu date,
 cod_rol int(4),
 email_usu varchar(255),
 Tip_usua int,
 primary key (id),
 constraint fk_tipo foreign key (Tip_usua) references tb_tipUsuario(Tip_usua),
 constraint fk_rol foreign key (cod_rol) references tb_rol(cod_rol)
 );