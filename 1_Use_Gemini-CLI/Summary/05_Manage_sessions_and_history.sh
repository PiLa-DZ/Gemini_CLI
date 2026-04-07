# Manage sessions and history

# =============================================================
## Resume the last session
gemini -r # (--resume)

# =============================================================
# Browse past sessions
/resume

# =============================================================
## Deleting sessions
# navigate to a session you want to delete
# and press x.
## You can also manage sessions from the command line:
# List all sessions with their IDs
gemini --list-sessions
# Delete a specific session by ID or index
gemini --delete-session 1

# =============================================================
## How to rewind time (Undo mistakes)
# -------------------------------------------------------------
### Triggering rewind
# At any point in a chat, type
/rewind
# or press **Esc** twice.
# -------------------------------------------------------------
### Choosing a restore point
# You'll see a list of your recent interactions.
# Select the point _before_ the undesired changes occurred.
# -------------------------------------------------------------
### Choosing what to revert

# 1. Rewind conversation:
# -- Only remove the chat history.
# -- The files stay changed.
# -- (Useful if the code is good but the chat got off track).
#
# 2. Revert code changes:
# -- Keep the chat history
# -- but undo the file edits.
# -- (Useful if you want to keep the context but retry the implementation).
#
# 3. Rewind both:
# -- Restore everything to exactly how it was.

# =============================================================
## How to fork conversations
# 1. Start a session and get to a decision point.
# 2. Save the current state with `/resume save decision-point`.
# 3. Try your first approach.
# 4. Later, use `/resume resume decision-point` to fork the conversation back to
#    that moment and try a different approach.
