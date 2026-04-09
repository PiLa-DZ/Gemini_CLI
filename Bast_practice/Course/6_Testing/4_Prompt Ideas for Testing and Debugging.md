# Prompt Ideas for Testing and Debugging

To help you make the most of AI in
your testing and debugging process,

here are some more specific prompt ideas:

For generating integration tests:

```toml
I need to create integration tests for the following components:
[List components and their interactions]

Please suggest a set of integration tests that:
1. Cover the main interaction scenarios between these components
2. Test for proper error handling and edge cases
3. Include any necessary setup and teardown procedures

Provide the test scenarios in a clear, step-by-step format,
and include any necessary mock objects or test data.
```

For performance testing:

```toml
I need to create a performance test plan for my application.
The key areas of concern are:
[List main functionalities or components to be tested]

Please help me create a performance test plan that includes:
1. Key performance indicators to measure
2. Test scenarios to simulate various load conditions
3. Suggestions for tools or frameworks to use
4. Strategies for identifying performance bottlenecks
5. Best practices for interpreting and acting on the results
```

For security testing:

```toml
Please review the following code for potential security vulnerabilities:
[Paste your code]

Consider common security issues such as:
1. Injection flaws
2. Broken authentication
3. Sensitive data exposure
4. XML external entities (XXE)
5. Broken access control
6. Security misconfigurations
7. Cross-site scripting (XSS)

For each vulnerability found, explain the risk and suggest secure coding practices to mitigate it.
```
