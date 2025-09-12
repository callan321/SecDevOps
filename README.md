# Basic MERN App

![my picture](https://doananhtingithub40102.github.io/MyData/mern/mypicture.png)

A full-stack [MERN](https://www.mongodb.com/mern-stack) application for managing information of employees.

## About the project

This is a full-stack MERN application that manages the basic information of employees. The app uses an employee database from the MongoDB Atlas database and then display it using a React.

## Tech Stack

**Client:** React, Bootstrap

**Server:** NodeJS, ExpressJS

**Database:** MongoDB

## Deployment on AWS

### Requirements

- Docker
- Docker Compose

### Steps

1. **Clone the repository**

    ```bash
    git clone https://github.com/callan321/SecDevOps.git
    cd SecDevOps
    ```

2. Generate self-signed certificates

    ```bash
    docker compose build certs
    ```

    ```bash
    docker compose run --rm certs
    ```
  
3. Start the stack

    ```bash
    docker compose up -d --build
    ```

4. To end the stack

    ```bash
    docker compose down
    ```
