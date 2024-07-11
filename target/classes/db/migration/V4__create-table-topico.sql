create table topico(
    id bigint not null auto_increment,
    titulo varchar(50) not null,
    mensaje varchar(250) not null,
    fecha_creacion datetime not null,
    status tinyint not null,
    autor bigint not null,
    curso bigint not null,

    primary key(id),
    constraint fk_topico_usuario foreign key(autor) references usuario(id),
    constraint fk_topico_curso foreign key(curso) references curso(id)
);