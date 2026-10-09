# Assignment Brief & Grading Policy — Mobile Application Development (INT1449)

**Instructor:** Dr. Hung N. Dang (Đặng Ngọc Hùng) — hungdn@ptit.edu.vn  
**Faculty:** Information Technology 1 — Posts and Telecommunications Institute of Technology (PTIT)  
**Version:** 1.2.0 (2026-10-09) — see the repository tags for later versions

> ⚠️ **Official document — read-only.** This file is the assignment brief and grading policy issued by the instructor.
> Students and AI assistants must **not** edit or delete it. If copies differ, the
> [official version](https://github.com/hungdn1701/mobile-app-starter/blob/main/INSTRUCTION.md) applies.
> If something is unclear or seems wrong, ask the instructor.

---

## 1. Learning Objectives

By completing this project, each team member demonstrates that they can:

- Design a mobile **user experience** around real user needs, including every UI state.
- Structure an app in layers (**MVVM** or an equivalent separation of UI, state and data).
- Consume a **REST API** robustly — timeouts, errors, slow or missing network.
- Persist data **locally** so the app stays useful offline.
- **Explain and defend** their own design decisions and code — including code produced with AI assistance.

---

## 2. Teams & Repository

| Rule | Detail |
|------|--------|
| Team size | **1–3 students. Maximum 3 — no exceptions.** |
| Repository | Every member stars and forks the public starter. Work happens only in the **private team repository** the LMS creates for your team in the course organization, set up as described in [`docs/student-guide.md`](docs/student-guide.md). Never push project work to a public repository. |
| Accounts | Every member commits from **their own** GitHub account. Pair-programmed commits should credit the partner (e.g., a `Co-authored-by:` trailer). |
| Registration | Fill in the Team table and project pitch at the top of [`README.md`](README.md) in your first week. |

---

## 3. Milestones

The project is delivered in **three milestones**. Dates, and whether a milestone carries marks or feedback only,
are announced by the instructor for each class; milestones may be merged or adjusted to fit the class schedule.
The three outcomes — a proposal, a design with a running skeleton, and the final product — stay the same.

| Milestone | Deliverable | Where |
|-----------|-------------|-------|
| **M1 — Proposal** | Problem, target users, idea, scope, key screens, ownership plan | [`docs/proposal.md`](docs/proposal.md) |
| **M2 — Design & Walking Skeleton** | Complete UI/UX and architecture design; app runs on an emulator/device with navigation between the main screens and **one screen loading real data** through the full View → ViewModel → Repository → API path | [`docs/ui-design.md`](docs/ui-design.md), [`docs/architecture.md`](docs/architecture.md), `app/` |
| **M3 — Final Product & Oral Defense** | Full app, test evidence, README with **AI Disclosure** and **Contribution**, AI log | Whole repository |

Tip: mark each milestone with a git tag (`git tag m1 && git push origin m1`) so it is easy to find later.

---

## 4. Mandatory Technical Requirements

1. **Technology-agnostic** — any mobile framework (e.g., React Native/Expo, Flutter, Kotlin + Jetpack Compose, Swift + SwiftUI).
2. **At least 4 functional screens** that serve your topic's main user flows (not counting splash or empty placeholder screens).
3. **Layered architecture** — views never call the API or database directly; data flows through a ViewModel (or equivalent state holder) and a repository/data layer.
4. **UI states** — every screen that loads data asynchronously handles **Loading, Success, Empty and Error (with retry)**.
5. **REST API integration** — the app reads and writes data over HTTP: the mock backend in `backend/` (adapt `db.json` to your domain) or your own backend.
6. **Local persistence** — at least one data flow stays usable offline (cache or local-first storage). If your app has user accounts, the session is stored securely.
7. **No hard-coded configuration** — the API base URL comes from configuration, not literals scattered in code.

---

## 5. Suggested Topics

Choose one of the topics below **or propose your own** (original, well-motivated ideas score higher in criterion A1).

1. **Shopping / Food Ordering** — browse catalog, cart, orders, order history, saved addresses offline.
2. **Personal Finance Tracker** — income/expense records, charts, budgets, offline-first with sync.
3. **News & Community Feed** — articles, comments, bookmarks for offline reading, search.
4. **Student Task & Schedule Manager** — timetable, assignment deadlines, lecture notes, exam countdown.
5. **Habit & Fitness Tracker** — daily goals, progress history, reminders.

---

## 6. Grading Rubric (10 points)

The rubric is shared by all three of the instructor's project courses (Network Programming — INT1433, Mobile Application
Development — INT1449, Service-Oriented Software Development — INT1448). Only the course-specific sub-criteria differ.

| Part | Weight | Scored per |
|------|:------:|-----------|
| **A. Idea & Design** | **3.0** | Team |
| **B. Technical Product** | **3.0** | Team |
| **C. Individual Oral Defense** | **4.0** | **Individual** |

### A. Idea & Design — 3.0 (team)

| Criterion | Points | What earns full marks |
|-----------|:------:|-----------------------|
| **A1. Problem & Idea** | 1.0 | A real problem for clearly identified users; justified scope; a reason this should be a mobile app; alternatives were considered. Evidence: `docs/proposal.md`, README §2. |
| **A2. UI/UX Design** | 1.0 | `docs/ui-design.md`: personas/user needs, user flows, screen inventory, wireframes, design tokens, and the four UI states designed for data screens. |
| **A3. Architecture & Data Design** | 1.0 | `docs/architecture.md` justifies the layering and state-management choice, documents the data flow, the API contract used, and the offline strategy. |

### B. Technical Product — 3.0 (team)

| Criterion | Points | What earns full marks |
|-----------|:------:|-----------------------|
| **B1. App & UI Quality** | 1.5 | Main flows work; all four UI states; consistent with the design; works on different screen sizes and keeps user input on rotation. |
| **B2. Data Layer** | 1.0 | Layering respected; robust API handling (timeouts, HTTP errors, no network); local persistence works in airplane mode — backed by test evidence in `docs/testing-guide.md`. |
| **B3. Engineering Hygiene** | 0.5 | Builds from a clean clone following the README; no build artifacts or secrets committed; readable, organized code; meaningful git history. |

### C. Individual Oral Defense — 4.0 (individual)

| Criterion | Points | What earns full marks |
|-----------|:------:|-----------------------|
| **C1. Ownership** | 1.5 | Explains the screens/modules they claim in the Contribution table — line by line when asked — including AI-generated code. |
| **C2. Reasoning** | 1.5 | Justifies design decisions and trade-offs; answers "what if" questions about their design. |
| **C3. Live Change** | 1.0 | Makes a small change or locates a bug in their own code on the spot (or walks through how they would, if time is short). |

**Individual score = A + B (team) + C (individual)**, subject to the adjustments in §7 and §8.

---

## 7. AI Usage Policy

AI assistants (ChatGPT, Claude, Gemini, Copilot, Cursor, ...) are **allowed for every part** of the project —
ideation, design, code, tests and documentation. What is graded is **your understanding and your decisions**,
not who typed the code.

1. **Disclose.** The README **AI Disclosure** section and [`docs/ai-log.md`](docs/ai-log.md) are mandatory.
   If they are missing, the instructor will ask you to complete them before the oral defense.
2. **Own it.** You are responsible for every line in your repository. A part you cannot explain during the oral
   defense earns **no credit** — in B for the team and in C for you — even if it works.
3. **Be honest.** Significant AI use that is not disclosed, or a disclosure that contradicts the evidence, is
   academic dishonesty: the instructor may deduct up to **2.0 points** from A + B and handle the case under PTIT regulations.
4. **No fabrication.** Test results, logs, screenshots and benchmark numbers must come from actually running your system.
5. **No secrets.** Never paste passwords, API keys or other people's personal data into AI tools.

> Disclosing AI use never lowers your score. Hiding it does.

---

## 8. Contribution & Individual Assessment

- The README **Contribution** table lists, for each member: the modules/documents they own, their key PRs or commits,
  and an agreed contribution percentage. **Every member ticks the confirmation box.**
- Evidence the instructor checks: git history (commits from each member's own account, pull requests),
  `docs/ai-log.md` entries per member, and answers in the oral defense.
- Oral-defense questions target the parts each member **claims**.
- A member with no verifiable contribution (no commits/PRs and unable to explain the parts they claim) may receive a
  reduced share of A + B, down to 0, at the instructor's decision.

---

## 9. Oral Defense

- **Format:** about 15–20 minutes per team — roughly 5 minutes per member (adjusted per class). Every member answers
  individually; teammates may not answer for each other. Not every question type is asked to every member — the
  instructor picks what fits the time.
- **Short demo first (a few minutes, prepared in advance):** the system running from a fresh start, showing the main flow.
- **Questions are drawn from:** your proposal, design documents, the code you claim, and your `ai-log.md` entries.
- **Sample questions:**
  - Walk through everything that happens from a pull-to-refresh to the list updating on screen.
  - Where does the state of this screen live? What happens to it on rotation or when the app is killed in the background?
  - What does the user see when the request times out? When the list is empty? Show the code path.
  - What is your offline strategy, and what happens when cached data and server data disagree?
  - Why this state-management approach instead of another?
  - *(Live)* Add a field to a screen end-to-end, or change how an error is displayed.

---

## 10. Final Submission

- The final submission is the **last commit on `main` before the deadline**.
- Before the deadline, go through the **Submission Checklist** in [`GETTING_STARTED.md`](GETTING_STARTED.md#submission-checklist).
- Late submissions and resubmissions follow the policy announced by the instructor.
