create database Debicom;
use Debicom;

create table tipo_identificacion(
Id_tipo_identificacion int not null primary key auto_increment ,
nombre_tipo varchar(45) not null
);

create table Usuarios(
Id_Usuarios int not null primary key auto_increment ,
nombre_usuario varchar(45) null,
apellidos_usuario varchar(45) null,
identificacion int null,
correo varchar(45) null,
telefono int null,
direccion varchar(45) null,
pasword varchar(45) null,
Id_tipo_identificacion int not null,
constraint fk_tipo_identificacion_Usuarios
	foreign key (Id_tipo_identificacion) references tipo_identificacion (Id_tipo_identificacion)
);

create table Perfiles(
Id_Perfiles int not null primary key auto_increment ,
nombre_perfil varchar(45) not null,
Id_Usuarios int not null,
constraint fk_Usuarios_Perfiles
	foreign key (Id_Usuarios) references Usuarios (Id_Usuarios)
);

create table cliente(
Id_cliente int not null primary key auto_increment ,
cupo_disponible float null,
credito_actual float null,
Id_Usuarios int not null,
constraint fk_Usuarios_cliente
	foreign key (Id_Usuarios) references Usuarios (Id_Usuarios)
);

create table referencia_de_pago(
Id_referencia_de_pago int not null primary key auto_increment ,
referencia_pago varchar(45) not null,
fecha_de_pago varchar(45) not null
);

create table tipo_pago(
Id_tipo_pago int not null primary key auto_increment ,
nombre_pago varchar(45) not null,
Id_referencia_de_pago int not null,
constraint fk_referencia_de_pago_tipo_pago
	foreign key (Id_referencia_de_pago) references referencia_de_pago (Id_referencia_de_pago)
);

create table cabeza_factura(
Id_cabeza_factura int not null primary key auto_increment ,
numero_factura varchar(45) not null,
documento_factura int not null,
subtotal float not null,
fecha_emision datetime not null,
fecha_vencimiento datetime not null,
Id_referencia_de_pago int not null,
Id_Usuarios int not null,
constraint fk_referencia_de_pago_cabeza_factura
	foreign key (Id_referencia_de_pago) references referencia_de_pago (Id_referencia_de_pago),
constraint fk_Usuarios_cabeza_factura
	foreign key (Id_Usuarios) references Usuarios (Id_Usuarios)
);

create table unidades(
Id_unidades int not null primary key auto_increment ,
nombre_unidad varchar(45) not null
);

create table producto(
Id_producto int not null primary key auto_increment ,
nombre varchar(45) not null,
descripcion varchar(45) not null,
precio_final float not null,
Id_unidades int not null,
constraint fk_unidades_producto
	foreign key (Id_unidades) references unidades (Id_unidades)
);

create table detalle_factura(
Id_detalle_factura int not null primary key auto_increment ,
cantidad int not null,
precio_final float not null,
Id_cabeza_factura int not null,
Id_producto int not null,
constraint fk_cabeza_factura_detalle_factura
	foreign key (Id_cabeza_factura) references cabeza_factura (Id_cabeza_factura),
constraint fk_producto_detalle_factura
	foreign key (Id_producto) references producto (Id_producto)
);




    
























