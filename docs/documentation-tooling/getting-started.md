# Getting Started with Directus

Here are the steps to install and run Directus locally.

---

### 1. Prerequisites

- Node.js v16+
- npm or yarn
- A running SQL database (MySQL, PostgreSQL, SQLite, etc.)

---

### 2. Install Directus

```bash
npx create-directus-project my-project
```

This creates a new Directus instance in the `my-project` directory.

### 3. Configure Environment

Navigate to your project:

```bash
cd my-project
```

Edit the `.env` file and set your database connection:

### 4. Run Directus

```bash
npx directus start
```

### 5. Access Admin Dashboard

API: http://localhost:8055

Admin App: http://localhost:8055/admin


