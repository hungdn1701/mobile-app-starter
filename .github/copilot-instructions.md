# GitHub Copilot — Custom Instructions

Full project rules and source of truth: `.ai/AGENTS.md`

## Project
Mobile Application Development assignment (INT1449). Technology-agnostic, MVVM pattern.

## Key Rules
- Technology-agnostic: Support student's framework choice (React Native, Flutter, Kotlin, Swift)
- Architecture: Enforce MVVM and Clean Architecture
- Mock API: Runs via `docker compose up` on port 3000
- Emulator networking: Android `10.0.2.2:3000`, iOS `localhost:3000`
- Handle 4 UI states: Loading, Success, Error, Empty
- UI specs in `docs/ui-design.md`
