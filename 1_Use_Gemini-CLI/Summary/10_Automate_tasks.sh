# =============================================================
# Automate tasks with headless mode
## 1. How to use headless mode
## 2. How to pipe input to Gemini CLI
## 3. Use Gemini CLI output in scripts
## 4. Extract structured JSON data
## 5. Build your own custom AI tools
# =============================================================

# =============================================================
## How to use headless mode
# Run headless mode by prompt with the `-p` (or `--prompt`) flag.
# Run a single command:
gemini -p "Write a poem about TypeScript"

# =============================================================
## How to pipe input to Gemini CLI
# Pipe a file:
cat error.log | gemini -p "Explain why this failed"
# Pipe a command:
git diff | gemini -p "Write a commit message for these changes"

# =============================================================
## Use Gemini CLI output in scripts
### Scenario: Bulk documentation generator
# You have a folder of Python scripts and want to generate a `README.md` for each one.
# -------------------------------------------------------------
# 1. Save the following code as `generate_docs.sh`:
# .............................................................
#!/bin/bash

# Loop through all Python files
for file in *.py; do
  echo "Generating docs for $file..."

  # Ask Gemini CLI to generate the documentation and print it to stdout
  gemini -p "Generate a Markdown documentation summary for @$file. Print the
     result to standard output." >"${file%.py}.md"
done
# .............................................................
# -------------------------------------------------------------
# 2. Make the script executable and run it in your directory:
chmod +x generate_docs.sh
./generate_docs.sh
# This creates a corresponding Markdown file for
# every Python file in the folder.

# =============================================================
## Extract structured JSON data
#
# When writing a script,
# you often need structured data (JSON) to pass to tools like `jq`.
# To get pure JSON data from the model,
# combine the `--output-format json` flag with `jq` to parse the response field.
#
# ### Scenario: Extract and return structured data
# -------------------------------------------------------------
# 1. Save the following script as `generate_json.sh`:
#
# .............................................................
#!/bin/bash

# Ensure we are in a project root
if [ ! -f "package.json" ]; then
  echo "Error: package.json not found."
  exit 1
fi

# Extract data
gemini --output-format json \
  "Return a raw JSON object with keys 'version' and 'deps' from @package.json" |
  jq -r '.response' >data.json
# .............................................................
# -------------------------------------------------------------
# 2. Run the script:
chmod +x generate_json.sh
./generate_json.sh
# -------------------------------------------------------------
# 3. Check `data.json`. The file should look like this:
#
# {
#   "version": "1.0.0",
#   "deps": {
#     "react": "^18.2.0"
#   }
# }

# =============================================================
## Build your own custom AI tools
# Use headless mode to perform custom, automated AI tasks.
### Scenario: Create a "Smart Commit" alias
# You can add a function to your shell configuration
# to create a `git commit` wrapper that writes the message for you.
# -------------------------------------------------------------
# 1. Open your `.zshrc` file (or `.bashrc`) in your preferred text editor.
nvim ~/.zshrc
# -------------------------------------------------------------
# 2. Scroll to the very bottom of the file and paste this code:
# .............................................................
function gcommit() {
  # Get the diff of staged changes
  diff=$(git diff --staged)

  if [ -z "$diff" ]; then
    echo "No staged changes to commit."
    return 1
  fi

  # Ask Gemini to write the message
  echo "Generating commit message..."
  msg=$(echo "$diff" | gemini -p "Write a concise Conventional Commit message for this diff. Output ONLY the message.")

  # Commit with the generated message
  git commit -m "$msg"
}
# .............................................................
# Save your file and exit.
# -------------------------------------------------------------
# 3. Run this command to make the function available immediately:
source ~/.zshrc
# -------------------------------------------------------------
# 4. Use your new command:
gcommit
# Gemini CLI will analyze your staged changes
# and commit them with a generated message.
