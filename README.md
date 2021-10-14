# Online-Learning-Synopsis
## Introduction
This is a web application designed to host quiz. The quiz can be based on any topic and the user can hone
his/her skill on the topic he/she is interested in. Besides, it contains a discussion platform for discussing the topics upon which the quiz are held.

## Objectives
This web application aims to be a platform for testing out one’s skills. By participating in the quiz designed
by experts, the user can figure out what he knows and what he needs to learn further about a certain topic.
Regularly participating in the quiz can bring improvements in one’s learning path of a topic/speciality. Besides
that, this web application also has a section dedicated to problem discussion and answers. It’s normal to get
stuck on a problem when learning something new. For tackling those situations, one can post about his/her
problem on the platform where other users can reply to those problems/questions. Overall, the main objective
of this application is to test one’s skill on certain topics and make the learning procedure faster and easier.

## Features:
### 1. Quiz System:
     -A registered user can take part in a quiz by filtering out certain topics.
     -A registered admin can set up and prepare quiz with whatever multiple choice answers he/she likes.
     -A user can get to see the mark obtained in a certain quiz. Also, the user can get to see the correct
      answers after he/she has completed the quiz.
     -Admins from affiliated institutions may host certain quiz that will be private for the users from those
      institutions only thus becoming an online quiz holding platform for different institutions.
     
     
### 2. Problem Discussion:
     -Users can post about their problems and questions about certain topics.
     -Other users can choose to reply to the questions asked.
     -Users can vote for or against the posted replies and thus others can identify the replies with the most
      "upvotes" as the best answers.
      
      
## Entity-Relationship Diagram:
The following entities and relationships may be considered for designing the database of the project.

### 1. Entities and their attributes
There are a total of 10 entities:
1. admin
2. quiz
3. question_answer
4. topics
5. completed_quiz
6. user_answers
7. posts
8. replies
9. user
10. votes

### 2. Relationships
The relations among the entities can be defined by:
1. "Hosts": An admin can host and prepare a quiz.
2. "Has": Each quiz has its respective questions and answers.
3. "Checked Against": The users’ answers are checked against the correct answer for each question.
4. "On": Each quiz is set on certain topic.
5. "On": Each post is posted on certain topic.
6. "Participated In": A user has participated in a quiz.
7. "Has": A user has posted a post.
8. "Has": A user has posted a reply.
9. "Have": The posts have replies to them.
10. "Has": A reply has votes for or against it.




 ## Conclusion
 Testing ourselves is one of the most important aspects of learning anything. It is even better if we can find other people with the same interest and have discussions with them. One can achieve that by using this platform and hope to get better at what he/she is learning.
 
 ## Contributors
 ### Hasnath Jami Chowdhury
   1. Responsive UI design for the full project
   2. Registration System.
   3. Discussion/Problem Sharing (Q/A) System (Categorized), Voting System.
   
 ### Anas Mohammad Anwar
   1. Responsive UI design for the extra part.
   2. Quiz System (Categorized).
   3. User's Quiz History System.
 
 
