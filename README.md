# MyPortfolio API using Strapi - PostgreSQL

This is a Strapi API project for managing my portfolio, using PostgreSQL as the database.

## Getting Started

### Prerequisites

- Node.js installed on your system
- PostgreSQL database set up

### Installation

To set up the project, follow these steps:

```bash
npx create-strapi-app myportfolio-api --quickstart --dbclient=postgres --dbhost=localhost --dbport=5432 --dbname=myportfolio --dbusername=myuser --dbpassword=mypassword
cd myportfolio-api
npm install
# or
yarn install
