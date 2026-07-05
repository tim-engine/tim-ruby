<p align="center">
  <img src="https://raw.githubusercontent.com/openpeeps/tim/main/.github/tim_logo.png" alt="Tim - Template Engine" width="120px" height="120px"><br>
  ⚡️ A high-performance front-end engine as a Ruby Gem<br>
  <strong>Fast</strong> • <strong>Compiled</strong> • <strong>Source-to-Source</strong> • <strong>Interpreter</strong><br>
</p>

<p align="center">
  <code>gem install tim</code>
</p>

<p align="center">
  <a href="https://tim.openpeeps.dev/">Official docs</a> | <a href="https://openpeeps.github.io/tim/">API reference</a><br>
  <img src="https://github.com/openpeeps/tim/workflows/test/badge.svg" alt="Github Actions">  <img src="https://github.com/openpeeps/tim/workflows/docs/badge.svg" alt="Github Actions">
</p>

Or add to your Gemfile:

```ruby
gem "tim"
```

## Usage

```ruby
require "tim"

# Initialize the engine (auto-detects templates directory)
Tim.init("templates", "output", Dir.pwd)

# Render a view with a layout
html = Tim.render("index", { title: "Hello" })

# Render a standalone view
html = Tim.renderView("error", { message: "Not found" })
```

## Development
The native extension is built via [Clue](https://github.com/openpeeps/clue) and the Nim compiler.


|  |  |
|---|---|
| <a href="https://opencode.ai/go?ref=BHMEEK48QX"><img src="https://github.com/openpeeps/pistachio/blob/main/.github/opencode.png" alt="OpenCode"></a> | Switch to **Open-Source LLMs** via OpenCode GO, choosing from a variety of powerful models such as DeepSeek, Qwen, Kimi, GLM-5, MiniMax, MiMo. 🍕 [Use our referral link to get started!](https://opencode.ai/go?ref=BHMEEK48QX)|

### 🎩 License
Tim Engine | `LGPLv3` license. [Made by Humans from OpenPeeps](https://github.com/openpeeps).<br>
Copyright &copy; 2026 OpenPeeps & Contributors &mdash; All rights reserved.
