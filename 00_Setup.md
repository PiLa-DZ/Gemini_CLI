# How to get started with the API Key

Your Google account must have a default `Google Cloud project` linked to it

So you have to
manually creating a `"placeholder" project` in the Cloud Console.

This essentially gives the API a "home" to live in.

---

1. Create a Project in Google Cloud Console
   1. Go to the [Google Cloud Console](https://console.cloud.google.com/?authuser=1).
   2. At the top left (next to the `Google Cloud` logo), click the Project Dropdown.
   3. Click "New Project".
   4. Give it a name like `Gemini-CLI-Project` and click Create.
      > [!NOTE] You don't need to add billing info for the free tier of the Gemini API.

2. Enable the Generative AI API
   1. In the same Cloud Console, make sure your new project is selected.
   1. Search for `"Generative Language API"` in the top search bar.
   1. Click Enable.
      This tells Google Cloud,
      "I want this specific project to have access to Gemini."

3. 'Get API key' Go to AI Studio
   1. Return to [aistudio.google.com](https://aistudio.google.com/?authuser=1)
   2. Click "Get API key" again.
   3. Select the Gemini-CLI-Project you just made.
   4. Copy your `API key`
      > [!NOTE] Success! It should now generate the string for you.
   5. `Config`: Place your key in your `.bashrc` or `.zshrc`:

      ```bash
      export GEMINI_API_KEY="your_secret_key"
      # BUG: The "Professor" Warning:
      # NEVER add your .bashrc to your public GitHub repo
      # if it contains this key.
      # Use a .env file or a
      # secret manager if you plan on sharing your Arch dotfiles.
      ```

   6. Reload your config so the terminal "sees" the new key:

      ```bash
      source ~/.bashrc
      ```

   7. The Test: Try this in your terminal:

      ```bash
      echo "Explain the 'static' keyword in JS classes" | gemini
      ```

---

## Step 4: Choose Your "Driver" (The CLI)

Now that the engine (the Key) is ready,
you need the "steering wheel" (the CLI tool).
Here are the two best options for an Arch user:

### Option A: aichat (The "Swiss Army Knife")

This is very popular in the Arch community because
it’s fast and supports multiple AI models.

- Install: `yay -S aichat` (available in the AUR).
- Usage: `aichat` "How do I fix a broken symlink in Arch?"

### Option B: gemini-chat-cli (The "Node.js Native")

Since you are already a Node.js backend developer, you might prefer a tool built in your own language.

- Install: `npm install -g gemini-chat-cli`
- Usage: `gemini-chat` "Explain the 'infer' keyword in TypeScript"
