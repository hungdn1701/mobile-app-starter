# GEMINI.md — Instructions for Gemini / Google Antigravity

Full project rules and source of truth: [`.ai/AGENTS.md`](.ai/AGENTS.md)

## Project
Mobile Application Development assignment (INT1449). Technology-agnostic, MVVM pattern, Mock REST backend included.

## Key Rules
- Technology-agnostic (React Native/Expo, Flutter, Kotlin, Swift)
- MVVM / Clean Architecture required (clear separation between View and ViewModel/Repository)
- Mock REST API provided via `docker compose up` on port 3000
- Android emulator connects to `http://10.0.2.2:3000`, iOS simulator to `http://localhost:3000`
- Handle all 4 UI states: Loading, Success, Error, Empty
- All screen layouts and flows documented in `docs/ui-design.md`
- Configuration via environment / config files
