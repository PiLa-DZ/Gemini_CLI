# File management with Gemini CLI

# =============================================================
## Controlling what Gemini sees
# By default, Gemini CLI respects your `.gitignore` file.
.geminiignore

# you can create a .geminiignore file in your project root.
# =============================================================
## Providing context by reading files
# Direct file inclusion (`@`)
@src/components/UserProfile.tsx Explain how this component handles user data.
# Working with multiple files
@src/components/UserProfile.tsx @src/types/User.ts Refactor the component to use the updated User interface.
# Including entire directories
@src/utils/ Check these utility functions for any deprecated API usage.

# =============================================================
# Creating new files
Create a new file @src/components/LoadingSpinner.tsx with a simple Tailwind CSS spinner.
# modify code
Update @src/components/UserProfile.tsx to show a loading spinner if the user data is null.
# find files (Exploration)
Find the file that defines the UserProfile component.

# =============================================================
## Review and confirm changes
# Red lines (-): Code that will be removed.
# Green lines (+):Code that will be added.
## Verify the result
Run the tests for the UserProfile component.
# (for example, `npm test` or `jest`).
