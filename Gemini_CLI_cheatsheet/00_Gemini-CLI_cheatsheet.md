# Gemini CLI cheatsheet --> Gemini CLI commands, options, and parameters

- Inputs
  - CLI commands and Piping
  - Interactive commands

- Outputs
  - Interactive REPL
  - Non Interactive

- Managements
  - Sessions Management (-r, --resume, /resume)
  - Model Management
  - Project Management
  - Skills management
  - extensions Management
  - MCP Server Management

- CLI Options
  - What i Know
    1. `-h, --help` --> Show help `[boolean]`
    1. `-v, --version` --> Show version number `[boolean]`
    1. `-m, --model` --> Model `[string]`
    1. `-p, --prompt` --> Run in non-interactive (headless) mode with the given prompt. Appended to input on stdin (if any). `[string]`
    1. `-i, --prompt-interactive` --> Execute the provided prompt and continue in interactive mode `[string]`
    1. `-r, --resume` --> Resume a previous session. Use "latest" for most recent or index number (e.g. --resume 5) `[string]`
    1. `--list-sessions` --> List available sessions for the current project and exit. `[boolean]`
    1. `--delete-session` --> Delete a session by index number (use --list-sessions to see available sessions). `[string]`

  - I have to learn
    1. `-y, --yolo` -->
       Automatically accept all actions
       (aka YOLO mode, see <https://www.youtube.com/watch?v=xvFZjo5PgG0> for more details)?
       `[boolean]` `[default: false]`

    1. `-s, --sandbox` --> Run in sandbox? `[boolean]`

    1. `-d, --debug` --> Run in debug mode (open debug console with F12) `[boolean]` `[default: false]`

  - I Don't Know
    1. `--approval-mode` -->
       Set the approval mode:
       default (prompt for approval),
       auto_edit (auto-approve edit tools),
       yolo (auto-approve all tools),
       plan (read-only mode)
       `[string]` `[choices: "default", "auto_edit", "yolo", "plan"]`

    1. `--policy` -->
       Additional policy files or directories
       to load (comma-separated or multiple --policy)
       `[array]`

    1. `--admin-policy` -->
       Additional admin policy files or directories
       to load (comma-separated or multiple --admin-policy)
       `[array]`

    1. `--acp` --> Starts the agent in ACP mode `[boolean]`

    1. `--experimental-acp` -->
       Starts the agent in ACP mode
       (deprecated, use --acp instead)
       `[boolean]`

    1. `--allowed-mcp-server-names` --> Allowed MCP server names `[array]`

    1. `--allowed-tools` -->
       `[DEPRECATED: Use Policy Engine instead See https://geminicli.com/docs/core/policy-engine]`
       Tools that are allowed to run without confirmation
       `[array]`

    1. `-e, --extensions` -->
       A list of extensions to use.
       If not provided,
       all extensions are used.
       `[array]`

    1. `-l, --list-extensions` -->
       List all available extensions and exit.
       `[boolean]`

    1. `--screen-reader` --> Enable screen reader mode for accessibility. `[boolean]`

    1. `-o, --output-format` -->
       The format of the CLI output.
       `[string]` `[choices: "text", "json", "stream-json"]`

    1. `--raw-output` -->
       Disable sanitization of model output (e.g. allow ANSI escape sequences).

       > [!WARNING]
       > WARNING: This can be a security risk if the model output is untrusted.
       > `[boolean]`

    1. `--accept-raw-output-risk` -->
       Suppress the security warning when using --raw-output. `[boolean]`

  - I Don't Need
    1. `-w, --worktree` -->
       Start Gemini in a new git worktree.
       If no name is provided, one is generated automatically.
       `[string]`

    1. `--include-directories` -->
       Additional directories to include in the workspace
       (comma-separated or multiple --include-directories)
       `[array]`
