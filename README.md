# ✅ TodoWebApplication

A simple and elegant Todo web app built with **Ruby on Rails 8** and **PostgreSQL**, allowing users to manage tasks with options to add, edit, delete, and mark tasks as complete or incomplete. Tasks are organized via a dashboard with filter options.

---

## 🚀 Features

- 📝 Add new tasks with title and description
- ✅ Mark tasks as Completed or ❗ Pending
- ✏️ Edit existing tasks
- 🗑️ Delete tasks
- 📋 View tasks by:
  - All
  - Completed
  - Pending
- 💡 Bootstrap 5 styling for a clean UI

---

## 🛠️ Tech Stack

- **Ruby**: 3.x or above
- **Rails**: 8.x
- **PostgreSQL**: as the database
- **Bootstrap 5**: for UI styling

---

## 🧑‍💻 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/jangamkeerthi26/todo-web-application-ror.git
cd TodoWebApplication
```

### 2. Install dependencies

```bash
bundle install
```

### 3. Set up the database

```bash
bin/rails db:create
bin/rails db:migrate
```

### 4. Run the server

```bash
bin/rails server
```

Open your browser and go to:  
📍 `http://localhost:3000`

---

## 🔍 Filtering Tasks

From the top buttons on the dashboard:

- **All Tasks** – See every task
- **Pending** – Tasks that are not completed
- **Completed** – Tasks that are done

---

## 💄 UI & Styling

- Bootstrap 5 is included via CDN.
- Tables, buttons, badges, and forms are styled.
- Flash messages and error messages can be added later.

---

## 🗃️ Database Setup

### `config/database.yml` (PostgreSQL Example)

```yml
default: &default
  adapter: postgresql
  encoding: unicode
  username: your_pg_user
  password: your_pg_password
  host: localhost
  pool: 5

development:
  <<: *default
  database: todowebapplication_development

test:
  <<: *default
  database: todowebapplication_test

production:
  <<: *default
  database: todowebapplication_production
  username: todowebapplication
  password: <%= ENV['TODO_DATABASE_PASSWORD'] %>
```

---


## 🙌 Acknowledgements

Built while learning **Ruby on Rails**, based on practical UI needs and feature-based development.

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).
