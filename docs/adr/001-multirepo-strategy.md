# ADR 001: Multirepo Portfolio Strategy + Package Manager

## Status
Accepted

## Context

Portfolio SDET for job hunting. Need maximum GitHub profile visibility.

**Project scope:**
- 1 tracking repository (`sdet-elite-journey/`)
- 3 capstone projects (CP-1, CP-2, CP-3) with different tech stacks
- Primary audience: Technical recruiters scanning GitHub profile

**Technical challenge:**
- Multiple repositories = potential dependency duplication
- Each repo has independent `package.json`
- Common packages (Playwright, TypeScript tooling) repeated across repos

## Decision

Use **multirepo strategy** (separate repositories for portfolio projects) 
with **pnpm** as package manager.

### Repository Structure
- `sdet-elite-journey/`: Curriculum tracking + exercises
- `cp-1-playwright-framework/`: Capstone 1 (separate repo)
- `cp-2-cicd-security/`: Capstone 2 (separate repo)
- `cp-3-ai-testing/`: Capstone 3 (separate repo)

### Package Manager
- **Tool**: pnpm 8+
- **Strategy**: Global store with hard links (NOT workspaces)
- **Scope**: Each repo uses pnpm independently

## Consequences

### Positive (Multirepo)
✅ **GitHub profile visibility**: 4 repos vs 1 (max impact)  
✅ **Discoverability**: Each project searchable independently  
✅ **Focused READMEs**: 100% dedicated to specific project  
✅ **Independent versioning**: Different maturity levels (CP-1 v2.0 stable, CP-3 v0.1 alpha)  
✅ **Clean Issues/PRs**: Project-specific tracking (no mixing curriculum with projects)

### Positive (pnpm)
✅ **Disk efficiency**: Global store deduplicates packages (~46% space savings)  
✅ **Installation speed**: First install ~2 min, subsequent ~10 sec (hard links)  
✅ **Strictness**: Prevents phantom dependencies (catches bugs before commit)  
✅ **Deterministic**: Reproducible installs (CI matches local exactly)  
✅ **Modern ecosystem**: Used by Vue, Vite, Nuxt, SvelteKit (portfolio signal)

### Negative (Multirepo)
⚠️ **Configuration duplication**: ESLint/Prettier configs copied across repos (acceptable trade-off)  
⚠️ **Initial setup**: Create 4 repos vs 1 (one-time cost)

### Negative (pnpm)
⚠️ **Learning curve**: ~2 hours learning pnpm commands (ROI positive)  
⚠️ **CI/CD setup**: Requires `pnpm/action-setup` (one-time configuration)  
⚠️ **Ecosystem minority**: ~2% projects use pnpm vs ~90% npm (growing trend)

## Alternatives Considered

### Multirepo Alternatives

**Monorepo (rejected):**
- ❌ Lower GitHub profile visibility (1 repo)
- ❌ Mixed concerns (curriculum + projects same history)
- ✅ Better for: Development efficiency (not marketing)
- **Verdict**: Optimizes wrong metric for portfolio context

**Hybrid git submodules (rejected):**
- ❌ Added complexity (steep learning curve)
- ❌ Benefit not justified for 3 projects
- ✅ Could revisit if need tight integration
- **Verdict**: Premature optimization

### Package Manager Alternatives

**npm (default - rejected):**
- ✅ Zero learning curve (universal compatibility)
- ❌ Disk space duplication (1.6GB vs 800MB with pnpm)
- ❌ Slower installs (2-3 min every time)
- ❌ Phantom dependencies risk (less strict)
- **Verdict**: Simplicity doesn't justify inefficiency for 4 repos

**yarn (rejected):**
- ✅ Faster than npm (workspaces support)
- ❌ Less efficient than pnpm (no global store)
- ❌ Declining adoption vs pnpm (2025+ trend)
- **Verdict**: Middle ground with no clear advantage

## Implementation Notes

### pnpm Setup
```bash
# Install pnpm globally
npm install -g pnpm

# Configure (optional but recommended)
echo "auto-install-peers=true" > ~/.pnpmrc
echo "strict-peer-dependencies=false" >> ~/.pnpmrc

# Per-repo usage (no workspaces)
cd sdet-elite-journey/
pnpm install  # Creates independent node_modules/
```

### CI/CD Integration
```yaml
# .github/workflows/*.yml
- name: Setup pnpm
  uses: pnpm/action-setup@v2
  with:
    version: 8

- name: Install dependencies
  run: pnpm install --frozen-lockfile
```

### Migration Path
If duplication becomes problematic:
- Option A: Create `@sommer04/shared-config` npm package
- Option B: Revisit monorepo with pnpm workspaces
- Threshold: >50% code duplication across projects

## Related Decisions
- **ADR-002** (future): Conventional Commits enforcement strategy
- **ADR-003** (future): CI/CD quality gates configuration

---

**Date:** 2026-03-01  
**Author:** Sommer04  
**Updated:** 2026-03-01 (added pnpm rationale)
```

---
