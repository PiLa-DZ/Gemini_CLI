```bash
# =============================================================
# *** CLI Options ***
# -------------------------------------------------------------
# Option                          | Alias | Type    | Default   | Description                                                                                                                                                            |
# --------------------------------+-------+---------+-----------+ ------------
# --debug`                        | `-d`  | boolean | `false`   | Run in debug mode with verbose logging                                                                                                                                 |
# --version`                      | `-v`  | -       | -         | Show CLI version number and exit                                                                                                                                       |
# --help`                         | `-h`  | -       | -         | Show help information                                                                                                                                                  |
# --model`                        | `-m`  | string  | `auto`    | Model to use. See [Model Selection](#model-selection) for available values.                                                                                            |
# --prompt`                       | `-p`  | string  | -         | Prompt text. Appended to stdin input if provided. Forces non-interactive mode.                                                                                         |
# --prompt-interactive`           | `-i`  | string  | -         | Execute prompt and continue in interactive mode                                                                                                                        |
# --worktree`                     | `-w`  | string  | -         | Start Gemini in a new git worktree. If no name is provided, one is generated automatically. Requires `experimental.worktrees: true` in settings.                       |
# --sandbox`                      | `-s`  | boolean | `false`   | Run in a sandboxed environment for safer execution                                                                                                                     |
# --approval-mode`                | -     | string  | `default` | Approval mode for tool execution. Choices: `default`, `auto_edit`, `yolo`, `plan`                                                                                      |
# --yolo`                         | `-y`  | boolean | `false`   | **Deprecated.** Auto-approve all actions. Use `--approval-mode=yolo` instead.                                                                                          |
# --experimental-acp`             | -     | boolean | -         | Start in ACP (Agent Code Pilot) mode. **Experimental feature.**                                                                                                        |
# --experimental-zed-integration` | -     | boolean | -         | Run in Zed editor integration mode. **Experimental feature.**                                                                                                          |
# --allowed-mcp-server-names`     | -     | array   | -         | Allowed MCP server names (comma-separated or multiple flags)                                                                                                           |
# --allowed-tools`                | -     | array   | -         | **Deprecated.** Use the [Policy Engine](/docs/reference/policy-engine) instead. Tools that are allowed to run without confirmation (comma-separated or multiple flags) |
# --extensions`                   | `-e`  | array   | -         | List of extensions to use. If not provided, all extensions are enabled (comma-separated or multiple flags)                                                             |
# --list-extensions`              | `-l`  | boolean | -         | List all available extensions and exit                                                                                                                                 |
# --resume`                       | `-r`  | string  | -         | Resume a previous session. Use `"latest"` for most recent or index number (e.g. `--resume 5`)                                                                          |
# --list-sessions`                | -     | boolean | -         | List available sessions for the current project and exit                                                                                                               |
# --delete-session`               | -     | string  | -         | Delete a session by index number (use `--list-sessions` to see available sessions)                                                                                     |
# --include-directories`          | -     | array   | -         | Additional directories to include in the workspace (comma-separated or multiple flags)                                                                                 |
# --screen-reader`                | -     | boolean | -         | Enable screen reader mode for accessibility                                                                                                                            |
# --output-format`                | `-o`  | string  | `text`    | The format of the CLI output. Choices: `text`, `json`, `stream-json`                                                                                                   |
```

- CLI Options
  1. `-h, --help` --> Show help `[boolean]`
  2. `-m, --model` --> Model `[string]`
  3. `-p, --prompt` --> Run in non-interactive (headless) mode with the given prompt. Appended to input on stdin (if any). `[string]`
  4. `-i, --prompt-interactive` --> Execute the provided prompt and continue in interactive mode `[string]`
  5. `-r, --resume` --> Resume a previous session. Use "latest" for most recent or index number (e.g. --resume 5) `[string]`
  6. `--list-sessions` --> List available sessions for the current project and exit. `[boolean]`
  7. `--delete-session` --> Delete a session by index number (use --list-sessions to see available sessions). `[string]`
  8. `-v, --version` --> Show version number `[boolean]`
  9. `-y, --yolo` --> Automatically accept all actions (aka YOLO mode, see <https://www.youtube.com/watch?v=xvFZjo5PgG0> for more details)? `[boolean]` `[default: false]`
  10. `-s, --sandbox` --> Run in sandbox? `[boolean]`
  11. `-d, --debug` --> Run in debug mode (open debug console with F12) `[boolean]` `[default: false]`
  12. `--approval-mode` --> Set the approval mode: default (prompt for approval), auto_edit (auto-approve edit tools), yolo (auto-approve all tools), plan (read-only mode) `[string]` `[choices: "default", "auto_edit", "yolo", "plan"]`
  13. `--policy` --> Additional policy files or directories to load (comma-separated or multiple --policy) `[array]`
  14. `--admin-policy` --> Additional admin policy files or directories to load (comma-separated or multiple --admin-policy) `[array]`
  15. `--acp` --> Starts the agent in ACP mode `[boolean]`
  16. `--experimental-acp` --> Starts the agent in ACP mode (deprecated, use --acp instead) `[boolean]`
  17. `--allowed-mcp-server-names` --> Allowed MCP server names `[array]`
  18. `--allowed-tools` --> `[DEPRECATED: Use Policy Engine instead See https://geminicli.com/docs/core/policy-engine]` Tools that are allowed to run without confirmation `[array]`
  19. `-e, --extensions` --> A list of extensions to use. If not provided, all extensions are used. `[array]`
  20. `-l, --list-extensions` --> List all available extensions and exit. `[boolean]`
  21. `--screen-reader` --> Enable screen reader mode for accessibility. `[boolean]`
  22. `-o, --output-format` --> The format of the CLI output. `[string]` `[choices: "text", "json", "stream-json"]`
  23. `--raw-output` --> Disable sanitization of model output (e.g. allow ANSI escape sequences). WARNING: This can be a security risk if the model output is untrusted. `[boolean]`
  24. `--accept-raw-output-risk` --> Suppress the security warning when using --raw-output. `[boolean]`
  25. `-w, --worktree` --> Start Gemini in a new git worktree. If no name is provided, one is generated automatically. `[string]`
  26. `--include-directories` --> Additional directories to include in the workspace (comma-separated or multiple --include-directories) `[array]`
