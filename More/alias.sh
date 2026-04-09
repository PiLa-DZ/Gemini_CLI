alias ask="gemini"
alias explain="gemini --system 'Explain this code like a senior backend developer'"
alias commit-gen="git diff | gemini 'write a conventional commit message'"

# The Test: Try this in your terminal:
echo "Explain the 'static' keyword in JS classes" | gemini

# - Explain complex logs:
node app.js 2>&1 | ask "Why is this crashing?"

# - Generate Boilerplate:
ask "Generate a Prisma schema for a student-course many-to-many relationship" >schema.prisma

# - Summarize Documentation:
curl -s https://nodejs.org/api/fs.html | ask "Summarize the top 5 most useful fs/promises methods" >>~/wiki/nodejs.md

# - Brainstorming:
ask "Give me 5 project ideas for the Roadmap.sh backend track" >>~/wiki/ideas.md

# - Daily Journaling:
# At the end of the day, pipe your git log into a summary:
git log --since="1 day ago" --oneline | ask "Summarize my progress for today's journal" >>~/notes/daily.md

# - Quick "Man" Pages:
# Instead of man, use Gemini for modern explanations.
ask "How do I use the 'infer' keyword in TypeScript with a practical example?"

# - System Administration:
ask "How do I fix a 'target not found' error in pacman?"

# - Researching Patterns:
ask "Compare the pros and cons of MVC vs Clean Architecture for a Node.js CLI tool."
