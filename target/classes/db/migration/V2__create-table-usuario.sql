create table usuario(
    id bigint not null auto_increment,
    nombre varchar(100) not null,
    correo_electronico varchar(100) not null,
    contraseña varchar(20) not null,
    perfiles bigint not null,

    primary key(id),
    constraint fk_perfil_perfiles foreign key(perfiles) references perfil(id)
);