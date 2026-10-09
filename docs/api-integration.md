# API Integration

> Documents the API your app uses and how the data layer handles it. Keep it in sync with `backend/db.json`
> (or your own backend).

---

## 1. Client Configuration

- **Base URL source:** *(how the app gets it per environment — build config, dart-define, app config, ...)*
- **Timeouts:** *(connect / read)*
- **Shared HTTP client:** one configured client used by the data layer — not ad-hoc requests from screens.
- **Headers / interceptors:** *(e.g., content type, auth token if your app has accounts, logging in debug builds)*

---

## 2. Endpoints Used

The mock API exposes every top-level key of `backend/db.json` as a REST resource
(`GET /items`, `GET /items/:id`, `POST /items`, `PUT/PATCH /items/:id`, `DELETE /items/:id`),
plus query options such as `?_page=&_limit=`, `?q=`, `?_sort=&_order=`, `?field=value`, `?_embed=`.

| Method | Path | Used by (screen / repository) | Request | Response |
|:------:|------|-------------------------------|---------|----------|
| | | | | |

---

## 3. Data Models

| Model | Fields | Source (endpoint / local) | Notes (mapping, validation) |
|-------|--------|---------------------------|-----------------------------|
| | | | |

---

## 4. Error Handling

| Situation | How it is detected | What the user sees |
|-----------|-------------------|--------------------|
| No network | | |
| Timeout | | |
| 4xx (bad request, not found, ...) | | |
| 5xx | | |
| Malformed response | | |

Never show raw technical errors (e.g., `SocketTimeoutException: failed to connect to /10.0.2.2`) to users —
map them to clear messages with a way to retry.
