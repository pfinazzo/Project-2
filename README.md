# Music Mate (Musician Match)

* Description - This is an application made for connecting musicians. As a user you will sign up as either a teacher or a student, which will then give you different permissions for creating and booking lessons. A teacher can create a lesson and edit and delete a lesson, but they cannot book one. A student can book a lesson, or unbook a lesson. The main point of this application is to create a simple interface for booking lessons with local teachers, or to provide musicians with a way of employing themselves as a teacher. 

* Technologies used - HTML, CSS, jQuery, Bootstrap, Semantic UI, Ruby on Rails

[Imgur](https://i.imgur.com/TNJ30yv.jpg)
[Imgur](https://i.imgur.com/TyAeSqU.jpg)
[Imgur](https://i.imgur.com/lCTSAR5.jpg)
[Imgur](https://i.imgur.com/Vl7geyq.jpg)
[Imgur](https://i.imgur.com/eUUCzSj.jpg)
[Imgur](https://i.imgur.com/oY0Np4j.jpg)
[Imgur](https://i.imgur.com/ofw9kd4.jpg)
[Imgur](https://i.imgur.com/oY0Np4j.jpg)
[Imgur](https://i.imgur.com/kM26d6u.jpg)
[Imgur](https://i.imgur.com/dyrK8cV.jpg)
[Imgur](https://i.imgur.com/TyAeSqU.jpg)
[Imgur](https://i.imgur.com/bpFcAis.jpg)


Steps necessary to get the
application up and running.


* First make sure you have ruby version 2 downloaded. I am using version 2.2.3

* Also make sure you have dowloaded and installed Rails 5. I am using version 5.1.4.

* In order to run this site locally first you must clone and download this repo. After that cd into the directory of MusicMate. Then once you have made MusicMate the current directory, open up a new terminal windown in the same current directory, and run the command "$ bundle install", which will make sure all of our gems (such as paperclip) have been installed and so that they will run. Next run the command "$ rails s" in order to start the rails server.  Once Puma is up and running in the terminal, open up your browser and travel to localhost:3000 in the address bar. This will pull up the homepage at which point the application may be used. 


* To reinitialize the database, simply type "$ rails db:seed" in the terminal. This will destroy all Users and all child elements(lessons) of users.

* In Order to run this application through Heroku, we must type "$ heroku open". Keep in mind in order to modify the actual heroku page, we need to add and commit our changes just as we would do with github, but instead we push it with "git push heroku master" which will push all changes to Heroku. 

* Any other commands we want to run on the Heroku service will remain the same commands as normal, only difference is that they will start with the words "Heroku run". (I.E. "Heroku run rails db:seed" etc.)

* Deployed app - https://secret-plateau-53896.herokuapp.com/

* Planning board - 
https://trello.com/b/f2cbzipB/wdi-project-2


