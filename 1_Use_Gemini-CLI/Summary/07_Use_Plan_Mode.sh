# =============================================================
## Prerequisites
## Step 1: Start a complex task
## Step 2: Steer the research phase
## Step 3: Refine the design mid-turn
## Step 4: Approve and implement
## Tips for effective steering
# =============================================================

# =============================================================
## NOTE: Prerequisites
#
# - Gemini CLI installed and authenticated.
# - [Plan Mode](/docs/cli/plan-mode) enabled in your settings.
# - [Model steering](/docs/cli/model-steering) enabled in your settings.

# =============================================================
## Step 1: Start a complex task
#
# Enter Plan Mode and start a task that requires research.
#
# **Prompt:**
/plan I want to implement a new notification service using Redis.
#
# Gemini CLI enters Plan Mode
# and starts researching your existing codebase
# to identify where the new service should live.

# =============================================================
## Step 2: Steer the research phase
#
# As you see the agent calling tools like `list_directory` or `grep_search`,
# you might realize it's missing the relevant context.
#
# **Action:**
# While the spinner is active, type your hint:
"Don't forget to check packages/common/queues for the existing Redis config."
#
# **Result:**
# Gemini CLI acknowledges your hint and immediately incorporates it into its research.
# You'll see it start exploring the directory you suggested in its very next turn.

# =============================================================
## Step 3: Refine the design mid-turn
#
# After research,
# the agent starts drafting the implementation plan.
# If you notice it's proposing a design
# that doesn't align with your goals,
# steer it.
#
# **Action:** Type:
# `"Actually, let's use a Publisher/Subscriber pattern instead of a simple queue for this service."`
#
# **Result:**
# The agent stops drafting the current version of the plan,
# re-evaluates the design based on your feedback,
# and starts a new draft that uses the Pub/Sub pattern.

# =============================================================
## Step 4: Approve and implement
#
# Once the agent has used your hints to craft the perfect plan,
# review the final `.md` file.
#
# **Action:** Type:
# `"Looks perfect. Let's start the implementation."`
#
# Gemini CLI exits Plan Mode and transitions to the implementation phase.
# Because the plan was refined in real-time with your feedback,
# the agent can now execute each step with higher confidence and fewer errors.

# =============================================================
## Tips for effective steering
#
# - **Be specific:**
#   Instead of "do it differently,"
#   try "use the existing `Logger` class in `src/utils`."
#
# - **Steer early:**
#   Providing feedback during the research phase
#   is more efficient than waiting for the final plan to be drafted.
#
# - **Use for context:**
#   Steering is a great way to provide knowledge
#   that might not be obvious from reading the code
#   (e.g., "We are planning to deprecate this module next month").
