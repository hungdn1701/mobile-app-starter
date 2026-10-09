# Testing Guide & Test Evidence

> Part 1 shows **how** to test a mobile app. Part 2 is **your evidence** — graded under B1/B2.
> All results must come from actually running your app (see `INSTRUCTION.md` §7).

---

## Part 1 — How to Test

### 1.1 Automated tests

| Level | What to test | Examples of tools |
|-------|-------------|-------------------|
| Unit | ViewModels (event → state), repositories with a fake API, validation logic | JUnit/MockK, `flutter_test`, Jest, XCTest |
| UI / widget | A screen renders each UI state correctly | Compose UI tests, widget tests, React Native Testing Library |
| End-to-end (optional) | A full user flow on a device | Maestro, Espresso, XCUITest, Detox, `integration_test` |

A ViewModel test typically: fake the repository → trigger an event → assert the emitted states
(e.g., `Loading` then `Success(items)`, or `Loading` then `Error`).

### 1.2 Manual scenarios

| Scenario | How |
|----------|-----|
| Offline | Enable airplane mode, reopen the app and each data screen |
| Slow network | Emulator network throttling, or a delay in your backend |
| Server error / down | `make api-down` while the app is running |
| Empty data | Empty a collection in `backend/db.json` and `make api-reset` |
| Rotation & process death | Rotate on each screen; "Don't keep activities" (Android developer options) |
| Screen sizes & dark mode | Small phone, large phone, tablet; light and dark theme |

---

## Part 2 — Our Test Evidence

### Automated tests

*(How to run them, and a summary of results.)*

### Manual scenarios

| # | Scenario | Screen(s) | Result (screenshot / note) | Pass? |
|:-:|----------|-----------|----------------------------|:-----:|
| 1 | Offline | | | |
| 2 | Slow network / timeout | | | |
| 3 | Server down | | | |
| 4 | Empty data | | | |
| 5 | Rotation / process death | | | |
| 6 | Small screen / tablet / dark mode | | | |

*(Add notes on bugs found by these tests and how you fixed them.)*
