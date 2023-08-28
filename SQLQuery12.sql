create database BlogDb

use BlogDb

Create table Post(
Id int primary key,
Title nvarchar(250) not null,
Content nvarchar(500) not null,
PublicationDate datetime not null,
Author nvarchar(50) not null)

insert into Post (Id, Title, Content, PublicationDate, Author)
values   (1, 'Post_1', 'Demo of Post #1', '2023-08-08 15:00:00', 'Ethan Hunt'),
         (2, 'Post_2', 'Demo of Post #2', '2022-12-12 10:30:00', 'Ilsa Faust'),
		 (3, 'Post_3', 'Demo of Post #3', '2023-02-02 17:00:00', 'Benji Dunn')

select * from Post

create table Comment
(Id int primary key,
Content nvarchar(500) not null,
PublicationDate datetime not null,
PostId int foreign key references Post)

insert into Comment (Id, Content, PublicationDate, PostId)
values
    (1, 'That is something interesting', '2023-08-08 15:00:00', 1),
    (2, 'That is something rare', '2023-12-12 10:30:00', 2),
    (3, 'That is something illutional', '2023-02-02 17:30:00', 3)

select * from Comment