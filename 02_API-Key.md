# API key

Actually, there is a massive difference between the two,
especially for a power user like you who lives in the terminal.
While the "brain" (the AI model) is the same,
the engine and the privacy are totally different.

Think of "Sign in with Google"
as the Consumer App (the refined, polished car)

and the "Gemini API Key"
as the Raw Engine
(the high-performance block you bolt into your own machine).

---

## 1. The Environment (Web vs. Terminal)

- Sign in with Google (The App):
  This is for the gemini.google.com website.
  It has a UI,
  history sidebar,
  and formatted text.
  It’s a "closed" system
  you can't pipe data into it from your Arch terminal without copy-pasting.

- API Key (The CLI/Developer Tool):
  This is for your PDE.
  It allows you to use tools like gemini-cli,
  Neovim plugins,
  or your own custom scripts.
  It treats the AI like grep or cat.

---

## 2. Privacy & Data Usage (The "Soy Dev" Filter)

This is the part you will care about most as a backend developer:

- Sign in with Google:
  By default,
  Google may use your conversations to improve its models
  (unless you opt out in settings).

- Gemini API Key:
  When you use an API key through `Google AI Studio` (the "Standard" tier),
  your data is not used to train the models.
  This is crucial when you are feeding it your private code or tasks.json.

---

## 3. Rate Limits & Quotas

- Sign in (Free App):
  You get a certain amount of "chats" per day.
  If you hit the limit,
  it slows down or asks for money.

- API Key (Free Tier):
  You get a very generous "Rate Limit" (15 requests per minute).
  As long as you stay under that,
  it’s free.
  If you go over,
  the terminal will give you a 429 Too Many Requests error.

---

## 4. Which one should you use for what?

| Use Case               | Best Choice   | Why?                                                                               |
| ---------------------- | ------------- | ---------------------------------------------------------------------------------- |
| Learning a new Concept | Web App       | Better for long-form reading and looking at images/diagrams.                       |
| Debugging Code         | API Key (CLI) | You can pipe errors directly from the terminal: node app.js 2>&1 \| ask.           |
| Writing Commits        | API Key (CLI) | "git diff \| ask ""write a commit"" is 10x faster than copy-pasting to a browser." |
| Personal Wiki          | API Key (CLI) | "You can automate the ""Save to Markdown"" process."                               |

---

## 5. How to get started with the API Key

Since you want the "Full Roadmap," do this today:

1. Get the Key: Go to [Google AI Studio](https://aistudio.google.com/prompts/new_chat) and create a free API Key.

2. Install a CLI: I recommend `gemini-chat-cli` or `aichat` (available in the `AUR`).

3. `Config`: Place your key in your `.bashrc` or `.zshrc`:

```bash
export GEMINI_API_KEY="your_secret_key"
```

1. The Test: Try this in your terminal:

```bash
echo "Explain the 'static' keyword in JS classes" | gemini-cli
```

---

## The "Wit" Factor

Using the Web App is like asking a librarian for help.
Using the API Key is like having a senior developer sitting
inside your `/usr/bin/` folder.

Since you are already customizing your Arch build,
the API Key is the only way to go.

Do you want me to show you how to write a simple Bash script
that takes your tasks.json
and uses your API Key to suggest a "Plan of Action" for your day?
