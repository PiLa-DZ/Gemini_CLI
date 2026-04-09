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
