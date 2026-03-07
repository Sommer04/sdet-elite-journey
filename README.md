<h1 align="center">
  🎯 SDET Elite Journey
</h1>

<p align="center">
  MIT-grade roadmap: QA Manual → Senior SDET at Tier-1 companies
</p>

<p align="center">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="MIT License" />
  <img src="https://img.shields.io/badge/TypeScript-007ACC?logo=typescript&logoColor=white" alt="TypeScript" />
  <img src="https://img.shields.io/badge/Playwright-45ba4b?logo=playwright&logoColor=white" alt="Playwright" />
  <img src="https://img.shields.io/github/last-commit/Sommer04/sdet-elite-journey" alt="Last Commit" />
</p>

---

## Table of Contents

#### [About](#about)

#### [Tech Stack](#tech-stack)

#### [Curriculum Roadmap](#curriculum-roadmap)

#### [Portfolio Projects](#portfolio-projects)

#### [Repository Structure](#repository-structure)

#### [Getting Started](#getting-started)

#### [Contributing](#contributing)

#### [Contact](#contact)

#### [License](#license)

---

## 📖 About

This repository documents my **self-directed transformation** from manual QA tester → **elite SDET/QA Automation Engineer**, following outstanding standards and tier-1 industry practices.

### 🎯 The Goal

Reach **Senior SDET level** competitive for companies with solid engineering culture and people-first values
**Commitment:** Deep mastery over speed (quality > velocity)

### 🔬 The Differentiator

Unlike traditional bootcamps (Selenium syntax + certificate), this curriculum integrates:

1. **Solid CS fundamentals** (data structures, algorithms, software architecture)
2. **Software Engineering practices** (SOLID, design patterns, clean code)
3. **Modern testing** (Playwright, K6 performance, Docker, CI/CD)
4. **Testing AI Systems** ← **UNIQUE**: LLM evaluation, RAG testing, bias detection

### 📊 Transparent Tracking

- **GitHub Issues**: Each module = issue (granular progress)
- **Pull Requests**: Exercises + projects = PRs (code review practice)
- **Projects Board**: Kanban phases (visual workflow)
- **Wiki**: Learning notes + ADRs

---

## 🛠️ Tech Stack

<details>
<summary> <b> Core Testing </b> </summary>
  <br/>
  
- **E2E Framework**: Playwright (TypeScript)
- **API Testing**: Playwright API Context + Postman
- **Performance**: K6, Lighthouse (Core Web Vitals)
- **Database**: PostgreSQL + validation patterns
</details>

<details>
<summary> <b> Infrastructure & DevOps </b> </summary>
<br/>
  
- **Containerization**: Docker, Docker Compose
- **CI/CD**: GitHub Actions (matrix builds, parallelization)
- **Version Control**: Git (conventional commits, semantic versioning)
- **Package Manager**: pnpm (efficiency + strictness)
</details>

<details>
<summary> <b> Development Tools </b> </summary>
<br/>
  
- **Language**: TypeScript (strict mode, zero `any`)
- **IDE**: VS Code + extensions pack (ESLint, Prettier, Playwright)
- **Terminal**: Bash scripting, CLI automation
</details>

<details>
<summary> <b> Quality Standards </b> </summary>
<br/>
  
- **Test Design**: ISTQB techniques (EP, BVA, Decision Tables, State Transition)
- **Code Quality**: ESLint, Prettier, Husky (pre-commit hooks)
- **Architecture**: Page Object Model, Factory Pattern, Dependency Injection
- **Documentation**: Markdown, Mermaid diagrams, ADRs
</details>

---

## 🗺️ Curriculum Roadmap

### Phase Structure

```
PHASE 0: Foundations (Zero assumptions)        [██░░░░░░░░] 20% 🟡
  ├─ M0: Development environment (Terminal, Git)
  ├─ M1: TypeScript fundamentals
  └─ M2: Software engineering (OOP, SOLID, Patterns)

PHASE 1: SDET Core (Professional testing)      [░░░░░░░░░░]   0% ⬜
  ├─ M3: QA Fundamentals (ISTQB v4)
  ├─ M4: Web & API fundamentals
  ├─ M5: Playwright framework
  ├─ M6: CI/CD (GitHub Actions)
  └─ M7: SQL & Database testing

PHASE 2: Advanced SDET (Differentiation)       [░░░░░░░░░░]   0% ⬜
  ├─ M8: Data management & fixtures
  ├─ M9: Docker & containers
  ├─ M10: Observability & performance
  ├─ M11: Security testing (OWASP)
  └─ M12: AI-assisted testing

PHASE 3: Testing AI Systems (Unique 2025+)     [░░░░░░░░░░]   0% ⬜
  ├─ M13: ML fundamentals for testers
  ├─ M14: Testing data pipelines
  ├─ M15: Testing ML models
  └─ M16: Testing LLM applications (RAG, hallucinations)
```

> 📅 **Complete Curriculum**: See [Detailed curriculum](curriculum/sdet_curriculum_structure_v3.md)

---

## 🏗️ Portfolio Projects

Each phase culminates in a **Capstone project**.  
Projects are maintained as **separate repositories** (multirepo strategy - see [ADR-001](docs/adr/001-multirepo-strategy.md)).

### CP-1: Complete Playwright Framework (Phase 1)

**Status:** 🟡 Planned  
**Stack:** Playwright + TypeScript + GitHub Actions

<details>
<summary> <b> Scope: </b> </summary>
  <br/>
  
- Scalable POM (Page Object Model) architecture
- UI + API + Database validation tests
- CI/CD pipeline (parallel, multi-browser)
- Reporting (Allure) + coverage metrics
</details>

**Repository:** _To be created upon Phase 1 completion_

### CP-2: CI/CD + Security (Phase 2)

**Status:** ⬜ Future  
**Stack:** Docker + K6 + OWASP ZAP

<details>
<summary> <b> Scope: </b> </summary>
  <br/>
  
- Containerized framework
- Performance testing (load, stress)
- Integrated security scanning
- Automated quality gates
</details>

**Repository:** _To be created upon Phase 2 completion_

### CP-3: Testing AI System (Phase 3)

**Status:** ⬜ Future  
**Stack:** DeepEval + RAGAS + Custom metrics

<details>
<summary> <b> Scope: </b> </summary>
  <br/>
  
- LLM application evaluation (chatbot)
- RAG testing (faithfulness, relevance)
- Hallucination detection
- Bias & fairness metrics
</details>

**Repository:** _To be created upon Phase 3 completion_

---

## 📂 Repository Structure

```
sdet-elite-journey/
├── curriculum/                    # Master roadmap
│   ├── sdet_curriculum_structure_v3.md
│   ├── sdet_grafo_conocimiento_v1.md
│   └── resources/                # Curated study materials
├── docs/                         # Technical documentation
│   ├── notes/                   # Module notes
│   ├── diagrams/                # Mermaid, architectures
│   └── adr/                     # Architecture Decision Records
├── exercises/                    # Practice drills
│   ├── m0-environment/
│   ├── m1-typescript/
│   └── [...]
├── .github/                      # GitHub automation
│   ├── ISSUE_TEMPLATE/          # Module tracking
│   ├── workflows/               # CI/CD (future)
│   └── PULL_REQUEST_TEMPLATE.md
└── README.md
```

> [!NOTE]
> Capstone projects (CP-1, CP-2, CP-3) will be maintained as **independent repositories** to maximize GitHub profile visibility and project discoverability. See [docs/adr/001-multirepo-strategy.md](docs/adr/001-multirepo-strategy.md) for architectural decision rationale.

---

## 🚀 Getting Started

### Prerequisites

- Node.js 20+
- pnpm 8+ (install: `npm install -g pnpm`)

### Explore Curriculum

```bash
# Clone repository
git clone https://github.com/Sommer04/sdet-elite-journey.git
cd sdet-elite-journey

# Install dependencies
pnpm install

# View complete roadmap
cat curriculum/sdet_curriculum_structure_v3.md

# View knowledge graph (module connections)
cat curriculum/sdet_grafo_conocimiento_v1.md
```

### Follow Progress

- **[Issues](https://github.com/Sommer04/sdet-elite-journey/issues)**: Module tracking
- **[Projects](https://github.com/Sommer04/sdet-elite-journey/projects)**: Kanban board phases
- **[Wiki](https://github.com/Sommer04/sdet-elite-journey/docs/notes)**: Learning notes

---

## 🤝 Contributing

This is my personal journey **BUT** feedback is welcome:

### You Can Help

- 🐛 **Issues**: Report curriculum gaps OR outdated resources
- 💡 **Discussions**: Suggest resources OR best practices
- 📝 **PRs**: Fix typos in documentation OR broken links

---

## 📫 Contact

**Goal:** Senior SDET | Open to opportunities

- 💼 **LinkedIn**: [Sommerling Mauricio](https://linkedin.com/in/sommerling-mauricio)
- 🐙 **GitHub**: [@Sommer04](https://github.com/Sommer04)
- 📧 **Email**: smp.0499@gmail.com

---

## 📝 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file for details.

<p align="center">
  <sub>⭐ Star this repo if it inspires your SDET journey!</sub>
</p>
