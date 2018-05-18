create database BD_LL_Proyect;
use BD_LL_Proyect;


create table LL_Tab_User(
	LL_User_id_pk int not null identity(1,1) primary key,
	LL_User_nombre varchar(80),
	LL_User_nickname varchar(80),
	LL_User_pass varchar(80),
	LL_User_rol varchar(50)
);

create table LL_Tab_Pro(
	LL_Pro_id_pk int not null identity(1,1) primary key,
	LL_Pro_nombre varchar(80),
	LL_Pro_fecha date,
	LL_Pro_usuario_fk int,
	constraint fk_usuario foreign key (LL_Pro_usuario_fk) references LL_Tab_User(LL_User_id_pk),
);

create table LL_Tab_Pla(
	LL_Pla_id_pk int not null identity(1,1) primary key,
	LL_Pla_nom varchar(80),
	LL_Pla_des varchar(200),
	LL_Pla_tem float,
	LL_Pla_hum float,
	LL_Pla_nvAg int,
	LL_Pla_process_fk int,
	constraint fk_proceso foreign key (LL_Pla_process_fk) references LL_Tab_Pro(LL_Pro_id_pk)
);