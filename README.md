# About this project (also available on /about)

This project is a simple website to view anime, similar to Crunchyroll, Funimation, or Netflix.  
Its main goal was to provide a simple yet stylish overlay as well as quick response and loading times.

## The Frontend

We built a sophisticated and responsive frontend using Svelte.js and SCSS.  
The decoupling of the frontend and backend allows for a more flexible and scalable project.  
It also allowed us to build both parts in parallel. Svelte.js was chosen because of its simplicity and speed.

## The Backend

The backend consists of an API written in Java using the Spring framework.  
Our database of choice was PostgreSQL, mainly because of its flexibility, speed, and real-world application.  
For authentication, we use JWT tokens, as they allow users to stay logged in, as well as sparing the server from having to store sessions and lookup database entries.

## Setup

### Database

You need PostgreSQL version 15 or above.  
The port used for the database is 5432. Create a database called "BZStreaming".  
These settings can be adjusted in the `application.properties` file.  
In this file, you will also have to change the username and password to match your PostgreSQL installation.  
The tables will be automatically generated after the first run of the Java backend with the `spring.jpa.hibernate.ddl-auto` attribute set to "create". After that, the attribute should be changed to "update".  
**The `datasets.sql` file can be run only after the database has been created like described above.**

### Java Spring API

This project uses Coretto Java 21 and Gradle 8.2.  
The project can be run using the command `gradle bootRun`.  
Given the correct Java Version is installed, it can be run on Windows from the command line by using `./gradlew.bat bootRun` in the root folder of the application.  
**The database steps (except inserting datasets) need to be done before the first run.**

### Svelte.js Frontend

Running the development compilation of the frontend requires Node version 20.9.0 or above.  
In the `/src/main/frontend` folder, run `npm install` to install all dependencies.  
A development server with live updating can be started using `npm run dev`.  
The production build can be created by running `npm run build`.  
The build can be found in the `/src/main/frontend/dist` folder.  
To serve it through our Java backend, copy the contents of the `dist` folder to `/src/main/resources/templates` and restart the Java application.
