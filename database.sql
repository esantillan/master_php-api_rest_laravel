create database if not exists api_rest_laravel;
use api_rest_laravel;

create table users(
    id int(255) auto_increment not null,
    name varchar(255) not null,
    surname varchar(255),
    role varchar(255),
    email varchar(255) not null,
    password varchar(255) not null,
    description text,
    image varchar(255),
    created_at datetime default null,
    updated_at datetime default null,
    remember_token varchar(255),
    constraint pk_users primary key(id)
)engine=innodb;

create table categories(
    id int(255) auto_increment not null,
    name varchar(255),
    created_at datetime default null,
    updated_at datetime default null,
    constraint pk_categories primary key(id)
)engine=innodb;

create table posts(
    id int(255) auto_increment not null,
    user_id int(255) not null,
    category_id int(255) not null,
    title varchar(255) not null,
    content text not null,
    image varchar(255),
    created_at datetime default null,
    updated_at datetime default null,
    constraint pk_posts primary key(id),
    constraint fk_post_user foreign key(user_id) references users(id),
    constraint fk_post_category foreign key(category_id) references categories(id)
)engine=innodb;