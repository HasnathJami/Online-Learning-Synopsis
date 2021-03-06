create database SDProjectDatabase2



drop database SDProjectDatabase2

use SDProjectDatabase2
go

Create table Categories
(
   CategoryID int primary key identity(1,1),
   CategoryName nvarchar(max)

)
go

Create table Users(

 UserID int primary key identity(1,1),
 Email nvarchar(max),
 PasswordHash nvarchar(max),
 Name nvarchar(max),
 Mobile nvarchar(max),
 IsAdmin bit default(0)
)

/*Eta Mane Post*/
create table Questions (

QuestionID int primary key identity(1,1),
QuestioNname nvarchar (max),
QuestionDateAndTime datetime,
UserID int references Users(UserID),
CategoryID int references Categories(CategoryID),
VotesCount int,
AnswersCount int,
ViewsCount int
)
go
/*Eta Mane Reply*/
create table Answers(

AnswerID int primary key identity(1,1),
AnswerText nvarchar(max),
AnswerDateAndTime datetime,
UserID int references Users(UserID), 
QuestionID int references Questions(QuestionID),
VotesCount int

)
go

create table Votes(

VoteID int primary key identity(1,1),
UserID int references Users(UserID),
AnswerID int references Answers(AnswerID),
Votevalue int 
)
go

/*--------------------------------------------------------------------------------------------------------*/

CREATE TABLE [quiz] (
    quiz_id int IDENTITY(1,1) NOT NULL,
    admin_id int NOT NULL,
    topic_id int NOT NULL,
    title varchar(255) NOT NULL,
    created_on datetime NOT NULL,
    
    CONSTRAINT PK_Quiz PRIMARY KEY (quiz_id)
);

CREATE TABLE [question_answer] (
    quiz_id int NOT NULL,
    question_num int NOT NULL,
    question varchar(255) NOT NULL,
    options varchar(255) NOT NULL,
    correct_ans varchar(255) NOT NULL,
    
    CONSTRAINT PK_QA PRIMARY KEY (quiz_id,question_num)
);

CREATE TABLE [user_answers] (
	quiz_id int NOT NULL,
	[user_id] int NOT NULL,
	question_num int NOT NULL,
	user_ans varchar(255) NULL,
	
	CONSTRAINT PK_UA PRIMARY KEY (quiz_id,[user_id],question_num)
);

CREATE TABLE [completed_quiz] (
	quiz_id int NOT NULL,
	[user_id] int NOT NULL,
	obtained_mark int NOT NULL,
	
	CONSTRAINT PK_CQ PRIMARY KEY (quiz_id,[user_id])
);

CREATE TABLE [topics] (
	topic_id int IDENTITY(1,1) NOT NULL,
	topic_name varchar(255) NOT NULL,
	
	CONSTRAINT PK_Topic PRIMARY KEY (topic_id)
);

/*--------------------------------------------------------------------------------------------------------*/

use SDProjectDatabase
go

insert into Users values('admin@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Admin','01628078874',1)
go
insert into Users values('jishan@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Jishan','011712397942',0)
go


insert into Categories values('HTML')
go
insert into Categories values('CSS')
go
insert into Categories values('JavaScript')
go
insert into Categories values('Python')
go
insert into Categories values('JAVA')
go
insert into Categories values('C#')
go

insert into topics values('HTML')
go
insert into topics values('CSS')
go
insert into topics values('JavaScript')
go
insert into topics values('Python')
go
insert into topics values('JAVA')
go
insert into topics values('C#')
go


insert into Questions values('How to display icon in the browser titlebar using HTML?','2020-8-14 03:21 pm',2,1,0,0,0) 
go
insert into Questions values('How to set background image in CSS?','2020-8-14 05:21 pm',2,2,0,0,0) 
go

select * from Categories
select * from Users
select * from Questions
select * from Answers
select * from Votes


drop database SDProjectDatabase2