# Leveraging AI for Living Documentation

One of the coolest ways I’ve found to use AI in documentation
is for maintaining “living documentation”
docs that evolve with your project.
Here’s how I approach this:

- Version your documentation: Keep your docs in version control alongside your code.
- Update docs with code changes: Whenever you make significant code changes, use this prompt:

```toml
I've made the following changes to my code:
[Summarize changes]
Please update the relevant sections of the documentation to reflect these changes.
Highlight any breaking changes or new features that users should be aware of.
```

- Periodic review: Every few weeks or months, depending on your project pace, use this prompt:

```toml
Please review the following documentation:
[Paste current docs]
Considering the latest best practices and common user pain points in similar projects:
1. Suggest any sections that should be added or expanded
2. Identify any parts that might be outdated or no longer relevant
3. Recommend improvements for clarity and user-friendliness
```

This approach ensures your documentation stays up-to-date
and continues to serve your users effectively.
