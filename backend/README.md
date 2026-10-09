# 🛠️ Mock Backend

This directory provides a simple REST API for the mobile app to consume during development, using `json-server`.

## 🚀 Usage

The easiest way to run the mock backend is using Docker Compose from the root directory:

```bash
make api-up
```

Alternatively, you can run it directly using Docker:

```bash
cd backend
docker build -t mock-api .
docker run -p 3000:3000 mock-api
```

## 📝 Customizing Data

Adapt `db.json` to your own domain — the sample collections are only examples.

You can customize the mock data by editing `db.json`. Any changes to this file will be automatically reloaded by the json-server.

The server provides full RESTful routes (GET, POST, PUT, PATCH, DELETE) for all resources defined in `db.json`.
