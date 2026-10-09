# App Architecture

> Graded under **A3 — Architecture & Data Design**. Explain **what** you built and **why**.
> The diagrams below are a reference design — replace them with your own.

---

## 1. Layers

Keep screens thin: they render state and forward user events. Logic and data access live in lower layers.

```mermaid
graph TD
    subgraph Presentation
        UI["Views / Screens"]
        VM["ViewModels / state holders"]
        UI -->|events| VM
        VM -->|UI state| UI
    end
    subgraph Domain - optional
        UC["Use cases"]
    end
    subgraph Data
        REPO["Repositories"]
        REMOTE["Remote data source (REST API)"]
        LOCAL["Local data source (database / key-value)"]
        REPO --> REMOTE
        REPO --> LOCAL
    end
    VM --> UC --> REPO
    VM -.->|small apps may skip use cases| REPO
```

| Layer | Our implementation (folders / main classes) | Owner (member) |
|-------|---------------------------------------------|----------------|
| Presentation | | |
| Domain (if any) | | |
| Data | | |

---

## 2. State Management

**Our choice:** *(e.g., ViewModel + StateFlow, BLoC, Riverpod, Zustand, TanStack Query, @Observable, ...)*

**Why:** *(what it gives you for this app, and what you rejected)*

How is a screen's UI state modelled? Example:

```text
UiState = Loading | Success(data) | Empty | Error(message, canRetry)
```

---

## 3. Data Flow

Show one important flow end-to-end (events up, state down). Example:

```mermaid
sequenceDiagram
    autonumber
    actor User
    participant View
    participant VM as ViewModel
    participant Repo as Repository
    participant API as Remote API
    participant DB as Local DB
    User->>View: pull to refresh
    View->>VM: onRefresh()
    VM-->>View: Loading
    VM->>Repo: getItems()
    Repo->>API: GET /items
    API-->>Repo: JSON
    Repo->>DB: save
    Repo-->>VM: items
    VM-->>View: Success(items) or Empty
```

---

## 4. Offline Strategy

| Data | Stored where | Read policy | Write policy | Conflict handling |
|------|--------------|-------------|--------------|-------------------|
| *(e.g., item list)* | *(e.g., SQLite)* | *(e.g., show cache, refresh in background)* | | |

```mermaid
flowchart TD
    REQ["Screen needs data"] --> CACHE{"Cached data?"}
    CACHE -->|yes| SHOW["Show cached data"] --> FETCH["Fetch from API"]
    CACHE -->|no| LOAD["Show Loading"] --> FETCH
    FETCH -->|ok| SAVE["Update cache"] --> UPDATE["Update UI"]
    FETCH -->|fails| ERR["Show cached data + offline notice, or Error with retry"]
```

*(Replace with your strategy. If your app stores sessions or other sensitive data, say where and how it is protected.)*

---

## 5. Project Structure

```text
app/
└── ...   (show your actual folder structure and what goes where)
```

---

## 6. Design Decisions

| Decision | Alternatives considered | Why we chose this |
|----------|------------------------|-------------------|
| | | |
