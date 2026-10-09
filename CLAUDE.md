# CLAUDE.md — Instructions for Claude Code

Full project rules and source of truth: [`.ai/AGENTS.md`](.ai/AGENTS.md)

## Project
Mobile Application Development assignment (INT1449). Technology-agnostic, MVVM pattern.

## Key Rules
- Technology-agnostic: React Native, Flutter, Kotlin, Swift
- MVVM pattern: Views must not directly call API; use ViewModel / Repository
- Mock REST backend available via `docker compose up` on port 3000
- Network address: Android emulator uses `10.0.2.2:3000`, iOS simulator uses `localhost:3000`
- Handle 4 UI states: Loading, Success, Error, Empty
- Screen designs documented in `docs/ui-design.md`
