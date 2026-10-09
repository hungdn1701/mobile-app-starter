# AGENTS.md — Universal Agent Instructions

> Source of Truth: [`.ai/AGENTS.md`](.ai/AGENTS.md)  
> Compatible with: OpenAI Codex, Claude Code, Cursor, GitHub Copilot, Gemini/Antigravity, Windsurf.

## Project Context
Mobile Application Development university assignment (INT1449) at PTIT. Technology-agnostic, mobile best practices, Mock REST API included.

## Key Rules
- **Technology-agnostic**: Any mobile framework (React Native/Expo, Flutter, Kotlin Jetpack Compose, Swift) is valid.
- **Architecture**: Enforce MVVM and Clean Architecture patterns (Presentation -> Domain -> Data).
- **Mock backend**: Local REST API running via `docker compose up` (`http://localhost:3000` / Android `http://10.0.2.2:3000`).
- **UI states**: Every data-fetching screen MUST handle 4 states: Loading, Success, Error, Empty.
- **Design specification**: All screens, flows, and color tokens documented in `docs/ui-design.md`.
- **Offline handling**: Use local caching (SQLite, Room, Hive, or key-value stores) where appropriate.
- **Clean code**: Never hardcode API URLs or secrets; use environment variables / config files.
