# Music Mate (Musician Match)
Steps necessary to get the
application up and running.


* First make sure you have ruby version 2 downloaded. I am using version 2.2.3

* Also make sure you have dowloaded and installed Rails 5. I am using version 5.1.4.

* In order to run this site locally first you must clone and download this repo. After that cd into the directory of MusicMate. Then once you have made MusicMate the current directory, open up a new terminal windown in the same current directory, and run the command "$ rails s" in order to start the rails server.  Once Puma is up and running in the terminal, open up your browser and travel to localhost:3000 in the address bar. This will pull up the homepage at which point the application may be used. 


* To reinitialize the database, simply type "$ rails db:seed" in the terminal. This will destroy all Users and all child elements(lessons) of users.

* In Order to run this application through Heroku, we must type "$ heroku open". Keep in mind in order to modify the actual heroku page, we need to add and commit our changes just as we would do with github, but instead we push it with "git push heroku master" which will push all changes to Heroku. 

* Any other commands we want to run on the Heroku service will remain the same commands as normal, only difference is that they will start with the words "Heroku run". (I.E. "Heroku run rails db:seed" etc.)


