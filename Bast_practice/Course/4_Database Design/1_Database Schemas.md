# Leveraging AI for Database Schemas

Here’s a prompt I often use to get started:

```toml
I'm designing a database for [describe your application].
The main entities are:
[List main entities]

Key requirements:
1. [Requirement 1, e.g., "Must support fast retrieval of user posts"]
2. [Requirement 2, e.g., "Need to track user relationships (followers/following)"]
3. [Requirement 3, e.g., "Must handle large volumes of time-series data for analytics"]

Please suggest a database schema that includes:
1. Tables and their columns (with appropriate data types)
2. Primary and foreign key relationships
3. Any necessary junction tables for many-to-many relationships
4. Suggested indexes for performance
5. Considerations for scalability

Also,
please explain the rationale behind your design choices.
```

This prompt ensures
that the AI considers not just the basic structure,
but also performance and scalability aspects.
