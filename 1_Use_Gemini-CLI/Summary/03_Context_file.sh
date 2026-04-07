# =============================================================
# Create a project context file

# 1. Global
~/.gemini/GEMINI.md # (Rules for _every_ project you work on).

# 2. Project Root
./GEMINI.md # (Rules for the current repository).

# 3. Subdirectory
./src/GEMINI.md # (Rules specific to the `src` folder).

# =============================================================
# Saving a memory
#
# Examples:
# Prompt:`Remember that I prefer using 'const' over 'let' wherever possible.`
# Prompt:`Save the fact that the staging server IP is 10.0.0.5.`

# =============================================================
# View active context
/memory show

# =============================================================
# Refresh context
/memory reload
