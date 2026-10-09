# AGENTS.md

Instructions for AI coding assistants working in this repository. Most assistants read this file automatically;
if yours does not, point it here.

## Context

This is a **graded university team project** for Mobile Application Development (INT1449) at PTIT: a mobile app
(any framework) that consumes a REST API and works offline. Students may use AI for any part of the work, but
40% of each student's grade is an **individual oral defense** where they must explain and modify the code they
claim. Help them build a good system **and** understand it.

- Assignment brief, hard requirements and grading: [`INSTRUCTION.md`](INSTRUCTION.md) — read it first.
- Project report and team info: [`README.md`](README.md). Setup and workflow: [`GETTING_STARTED.md`](GETTING_STARTED.md).
- Design documents: [`docs/`](docs/) — keep them in sync with the code.

## Hard requirements (from INSTRUCTION.md)

- Any mobile framework is allowed; follow what the team has chosen in `app/`.
- Views never call the API or database directly — use a ViewModel (or equivalent) and a repository/data layer.
- Screens that load data asynchronously handle Loading, Success, Empty and Error (with retry).
- The mock API in `backend/` (json-server over `backend/db.json`) runs on port 3000. From an Android emulator it is
  `10.0.2.2:3000`, from an iOS simulator `localhost:3000`, from a device the computer's LAN IP. The base URL comes
  from app configuration, not literals in code.
- Keep `docs/ui-design.md` and `docs/architecture.md` in sync with the app.

## Academic integrity rules

1. **Never modify `INSTRUCTION.md`.**
2. When you produce or substantially change design, code, tests or docs, **remind the student to add an entry to
   `docs/ai-log.md`** and offer a short draft (date, task, what you produced, files). Leave the
   "what we kept / verified" part for the student to write.
3. Explain non-obvious code and decisions so the student can defend them. When there are real design choices,
   present the options and trade-offs and let the student decide; record the decision in the relevant design doc.
4. Do not fill in the README **Contribution** table or claim who did what. Do not fabricate test results, logs,
   benchmarks or screenshots — generate them only by actually running the system.
5. Never write secrets or real credentials into the repository.
