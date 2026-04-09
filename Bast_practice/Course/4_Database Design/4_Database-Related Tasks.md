# Prompt Ideas for Database-Related Tasks

To help you make the most of AI in your database work,
here are some more specific prompt ideas:

For index optimization:

```toml
Given the following table structure and common queries:
[Paste table structure and sample queries]

Please suggest an optimal indexing strategy. Consider:
1. Which columns should be indexed?
2. Should we use single-column or multi-column indexes?
3. Are there any cases where a covering index would be beneficial?
4. How might these indexes affect write performance?
```

For data migration planning:

```toml
I need to migrate data from an old schema to a new one:
Old schema:
[Paste old schema]

New schema:
[Paste new schema]

Please help me create a migration plan:
1. Identify the steps needed to transform the data
2. Suggest any intermediate tables or views that might be helpful
3. Consider data integrity and how to handle potential conflicts
4. Propose a strategy to verify the migration's success
```

For query performance troubleshooting:

```toml
The following query is performing poorly:
[Paste problematic query]

Execution plan:
[Paste execution plan if available]

Please analyze this query and suggest improvements:
1. Identify any sub-optimal parts of the query or execution plan
2. Suggest alternative ways to write the query
3. Are there any missing indexes that could help?
4. Would denormalizing any part of the schema improve performance for this query?
```
