CREATE DATABASE IF NOT EXISTS `douyin`;

use `douyin`;

DROP TABLE IF EXISTS `video`;
create table `video` (
	`id` int unsigned not null auto_increment,
	`author_id` int not null ,
	`play_url` varchar(255) not null ,
	`cover_url` varchar(255) not null ,
	`favorite_count` int not null ,
	`comment_count` int not null ,
	`is_favorite` bool ,
	primary key (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `user`;
create table `user` (
	`id` int unsigned not null auto_increment,
	`name` varchar(255) not null,
	`password` varchar(255) not null,
	`follow_count` int not null,
	`follower_count` int not null,
	`is_follow` bool not null,
	primary key (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `comment`;
create table `comment` (
	`id` int unsigned not null auto_increment ,
	`video_id` int not null,
	`user`int not null ,
	`content` varchar(255) null,
	`create_date` timestamp null,
	`delete_date` timestamp null,
	primary key (`id`)
) ENGINE=InnoDB;


