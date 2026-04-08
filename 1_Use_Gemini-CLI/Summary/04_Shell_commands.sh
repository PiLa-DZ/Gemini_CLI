# =============================================================
## How to run commands directly (`!`)
!ls -la

# =============================================================
## How to automate complex tasks
### Scenario: Run tests and fix failures
# You want to run tests and fix any failures.
# **Prompt:**
Run the unit tests. If any fail, analyze the error and try to fix the code.
# **Workflow:**
# 1. Gemini calls 
run_shell_command('npm test')
# 2. You see a confirmation prompt: `Allow command 'npm test'? [y/N]`.
# 3. You press
y
# 4. The tests run. If they fail, Gemini reads the error output.
# 5. Gemini uses `read_file` to inspect the failing test.
# 6. Gemini uses `replace` to fix the bug.
# 7. Gemini runs `npm test` again to verify the fix.
# This loop lets Gemini work autonomously.

# =============================================================
## How to manage background processes
# -------------------------------------------------------------
# start long-running tasks
Start the React dev server in the background.
# Gemini will run the command (e.g., `npm run dev`) and detach it.
# -------------------------------------------------------------
# Viewing active shells
/shells
# This opens a dashboard where you can view logs or kill runaway processes.

# =============================================================
## Safety features
# -------------------------------------------------------------
### Confirmation prompts
# Allow once: Runs the command one time.
# Allow always: Trusts this specific command for the rest of the session.
# Deny: Stops the agent.
# -------------------------------------------------------------
### Sandboxing
# This runs all shell commands inside a secure Docker container.
# **Enable sandboxing:**
gemini --sandbox
