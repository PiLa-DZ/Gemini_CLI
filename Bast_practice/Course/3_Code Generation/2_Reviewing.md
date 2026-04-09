# Reviewing and Understanding AI-Generated Code

- Now, here’s a crucial point:
  never, ever blindly copy-paste AI-generated code into your project.
  I made this mistake early on and spent hours debugging issues
  that I could have caught with a careful review.

When you receive code from the AI,
follow these steps:

1. Read through the entire code snippet: Get a general sense of the structure and approach.

2. Check for logical errors: The AI might misunderstand a requirement or make incorrect assumptions.

3. Look for best practices: Ensure the code follows conventions for your language and project.

4. Verify error handling: Make sure edge cases and potential errors are handled appropriately.

5. Understand every line: If there’s anything you don’t understand, ask the AI to explain it.

## Here’s a prompt I use for getting explanations

```toml
Can you explain the following part of the code in detail:
[paste code section]

Specifically:
1. What is the purpose of this section?
2. How does it work step-by-step?
3. Are there any potential issues or limitations with this approach?
```
