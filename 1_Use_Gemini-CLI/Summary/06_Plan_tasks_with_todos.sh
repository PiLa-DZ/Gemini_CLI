# =============================================================
# *** Plan tasks with todos ***
# =============================================================
## 1. How to ask for a plan
## 2. How to review and iterate
## 3. How to execute the plan
## 4. How to monitor progress (`Ctrl+T`)
## 5. How to handle unexpected changes
# =============================================================

# =============================================================
## How to ask for a plan
# **Prompt:**
I want to migrate this project from JavaScript to TypeScript. Please make a plan first.
# Gemini will analyze your codebase
# and use the `write_todos` tool to generate a structured list.
# **Example Plan:**
# 1. [ ] Create `tsconfig.json`.
# 2. [ ] Rename `.js` files to `.ts`.
# 3. [ ] Fix type errors in `utils.js`.
# 4. [ ] Fix type errors in `server.js`.
# 5. [ ] Verify build passes.

# =============================================================
## How to review and iterate
# Once the plan is generated, it appears in your CLI. Review it.
#
# - **Missing steps?**
#  Tell the agent: "You forgot to add a step for installing `@types/node`."
#
# - **Wrong order?**
#  Tell the agent: "Let's verify the build _after_ each file,
#  not just at the end."
#
# The agent will update the todo list dynamically.

# =============================================================
## How to execute the plan
#
# Tell the agent to proceed.
#
# **Prompt:** `Looks good. Start with the first step.`
#
# As the agent works,
# you'll see the todo list update in real-time above the input box.
#
# - **Current focus:** The active task is highlighted
#   (e.g., `[IN_PROGRESS] Create tsconfig.json`).
# - **Progress:** Completed tasks are marked as done.

# =============================================================
## How to monitor progress (`Ctrl+T`)
#
# For a long-running task,
# the full todo list might be hidden to save space.
# You can toggle the full view at any time.
#
# **Action:** Press **Ctrl+T**.
#
# This shows the complete list,
# including pending,
# in-progress,
# and completed items.
# It's a great way to check "how much is left?" without scrolling back up.

# =============================================================

## How to handle unexpected changes
#
# Plans change. Maybe you discover a library is incompatible halfway through.
#
# **Prompt:**
# `Actually, let's skip the 'server.js' refactor for now. It's too risky.`
#
# The agent will mark that task as `cancelled` or remove it,
# and move to the next item.
# This dynamic adjustment is what makes the todo system powerful
# it's a living document,
# not a static text block.
