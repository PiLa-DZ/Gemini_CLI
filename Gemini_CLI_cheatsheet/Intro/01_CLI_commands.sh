# =============================================================
# *** CLI commands ***
# Interactive REPL --------------------------------------------
# Start interactive REPL
gemini
gemini "explain this project"                    # Query and continue interactively
gemini -i "What is the purpose of this project?" # Execute and continue interactively (--prompt-interactive)

# Non Interactive REPL ----------------------------------------
gemini -p "summarize README.md" # Query non-interactively (--prompt)

# Resume ------------------------------------------------------
gemini -r 'latest'                         # Resume a previous session (--resume)
gemini -r 'latest' "Check for type errors" # Continue session with a new prompt
gemini -r 'abc123' "Finish this PR"        # Resume session by ID

# Pipe --------------------------------------------------------
cat logs.txt | gemini # Process piped content

# Update Project ----------------------------------------------
gemini update # Update to latest version

# ??? ---------------------------------------------------------
# Manage extensions
gemini extensions # See [Extensions Management](#extensions-management)

# ??? ---------------------------------------------------------
# Configure MCP servers
gemini mcp # See [MCP Server Management](#mcp-server-management)
