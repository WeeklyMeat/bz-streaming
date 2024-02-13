<main id="main-page">
    <div>
        <h1>About this project</h1>
            <p>
                This project is a simple website to view anime, similar to Crunchyroll, Funimation or Netflix.<br>
                It's main goal was to provide a simple yet stylish overlay as well as quick response and loading times.
            </p>
            <p></p>
        <h2>The Frontend</h2>
            <p>
                We build a sophisticated and responsive frontend using svelte.js and scss.<br>
                The decoupling of the frontend and backend allows for a more flexible and scalable project.<br>
                It also allowed us to build both parts in parallel.
                Svelte.js was chosen because of its simplicity and speed.
            </p>
        <h2>The Backend</h2>
            <p>
                The backend consists of an API written in Java using the Spring framework.<br>
                Our database of joice was postgres, mainly because of it's flexibility, speed, and real world application.<br>
                For authentication, we use JWT tokens, as they allow for users to stay logged in, as well as sparing the server from having to store sessions and lookup database entries.<br>
            </p>
        <h2>Setup</h2>
        <h3>Database</h3>
            <p>
                You need postgreSQL version 15 or above.<br>
                The port used for the database is 5432. Create a database called "BZStreaming".<br>
                These settings can be adjusted in the application.properties file.
                In this file, you will also have to change the username and password to match your postgres installation.
                The tables will be automatically generated after the first run of the java backend with the <code>spring.jpa.hibernate.ddl-auto</code> attribute set to "create". After that, the attribute should be changed to "update".<br>
                <b>The datasets.sql file can be run only after the database has been created like described above.</b>
            </p>
        <h3>Java Spring API</h3>
            <p>
                This project uses coretto Java 21 and Gradle 8.2.<br>
                The project can be run using the command <code>gradle bootRun</code>.<br>
                Given the correct Java Version is installed, it can be run on Windows from the commandline by using <code>./gradlew.bat bootRun</code> in the root folder of the application.
                <b>The database steps (expect inserting datasets) need to be done before the first run.</b>
            </p>
        <h3>Svelte.js Frontend</h3>
            <p>
                Running the development compilation of the frontend requires Node version 20.9.0 or above.<br>
                In the /src/main/frontend folder, run <code>npm install</code> to install all dependencies.<br>
                A development server with live updating can be started using <code>npm run dev</code>.<br>
                The production build can be created by running <code>npm run build</code>.<br>
                The build can be found in the /src/main/frontend/dist folder.<br>
                To serve it through our Java backend, copy the contents of the dist folder to /src/main/ressources/templates and restart the java application.<br>
            </p>
    </div>
</main>

<style lang="scss">
    @import "../_variables.scss";

    #main-page {
        padding: 2rem;
        width: calc(min($s-std-width, 100%) - 2 * 2rem);
        color: $c-dark-main;
    }
</style>