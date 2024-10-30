# Flask Docker Development Template

A Flask application template running inside Docker, designed to support both **development** mode with hot reload and optimized **production** configuration.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

To get started with the application, follow these steps:

### 1. Clone the repository:

```bash
git clone https://github.com/KNguyen-1411/flask-docker-template.git
```

### 2. Navigate to the cloned repository:

```bash
cd flask-docker-template
```

### 3. Build and start the Docker containers:

```bash
docker compose up --build -d
```

The Flask application will be accessible at `http://localhost:5000`.

## Development Environment

- By default, the application will start in **development mode** with **hot reload** enabled, so any code changes will automatically restart the server.
- To switch between **development** and **production** modes, you can adjust the `target` setting in `docker-compose.yml`.

## Built With

- [Python](https://www.python.org/)
- [Flask](https://flask.palletsprojects.com/)
- [Docker](https://www.docker.com/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Author

- **Khánh Nguyên**
  _30-11-2024_

---

Thank you for checking out this project! Have a great day!
