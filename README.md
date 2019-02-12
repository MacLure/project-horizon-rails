# Horizon - Server

> Rails server to compute and store data in a PostgreSQL database, providing services to the Horizon desktop app.



<p align="center">
  <img src="./assets/horizon_text2.svg" width="100%">
</p>

Horizon is a student outcomes and success app designed for schools.

## Table of contents

- [Screenshots](#screenshots)
- [Motivation](#motivation)
- [Getting started](#getting-started)
- [Usage](#usage)
- [Tech Stack](#tech-stack)
- [Developer team](#developer-team)

## Screenshots

<p align="center">
  <img src="" />
</p>

Your school's outcomes and student success portal with everything you need to track assignments, events, and teacher comments - all in one place!

<p align="center">
  <img src="" />
</p>

Students:  Access your assignments, upcoming events, and view feedback on your own personal dashboard.

## Motivation

We wanted to make an app for schools to manage their outcomes and student success programs, and for students to easily view and submit career-related assignments ans events.

## Take a Tour :rocket:

### [Live App](https://project-horizon-react.herokuapp.com/)

#### login credentials:
##### Admin login:
:bust_in_silhouette: `sally.mcadmin@horizon.com`
:key: `password`

##### Student login:
:bust_in_silhouette: `clara.ostudent@okboom.com`
:key: `"password"`

## Run Horizon Locally:

1. Clone this repository 
2. In the repository's directory, install gems:
```
bundle install
```
3. In the repository's directory, run migrations and seeds:
```
rails db:migrate
rails db:seed
```
4. Clone the [Horizon client](https://github.com/MacLure/project-horizon-rails) repository
5. In the client repository's directory, download dependencies:
```
npm install
```
6. Start servers in each directory:
- In the server directory:
```
rails server
```
- In the client directory:
```
npm start
```

## Tech Stack

### Front-end:

- #### [horizon_client](https://github.com/MacLure/project-horizon-react)

### Back-end:

- [Ruby on Rails](https://rubyonrails.org/)
- [PostreSQL](https://www.postgresql.org/)
- [JWT](https://jwt.io/)
- [Knock](https://github.com/nsarno/knock)


## Developer team

- Malcolm MacLure - [GitHub](https://github.com/MacLure) - [LinkedIn](https://www.linkedin.com/in/malcolmmaclure/)
- Benjamin Hoppe - [GitHub](https://github.com/BenjaminHoppe) - [LinkedIn](https://www.linkedin.com/in/mrbenjaminhoppe/)
- Gabriela Cuello - [GitHub](https://github.com/gabaza) - [LinkedIn](https://www.linkedin.com/in/gabriela-roa-411058176/)
