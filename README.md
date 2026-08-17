<div align="center">

# 💎 Gem

### Agentic AI Ecosystem by HintyCloud

[![Version](https://img.shields.io/badge/version-2.0.0-cyan?style=for-the-badge)](https://github.com/HintyCloud/Gem-Cli/releases)
[![License](https://img.shields.io/badge/license-proprietary-blue?style=for-the-badge)](./LICENSE)
[![Platforms](https://img.shields.io/badge/platforms-linux%20%7C%20macOS%20%7C%20windows-green?style=for-the-badge)](https://gem.sh/download)
[![Providers](https://img.shields.io/badge/providers-6-orange?style=for-the-badge)](https://gem.sh/plugins)
[![Free Models](https://img.shields.io/badge/free_models-6+-brightgreen?style=for-the-badge)](https://gem.sh/docs)
[![Languages](https://img.shields.io/badge/implementations-7-yellow?style=for-the-badge)](https://gem.sh/docs)
[![Plugins](https://img.shields.io/badge/plugins-8%20core-purple?style=for-the-badge)](https://gem.sh/plugins)
[![Discord](https://img.shields.io/discord/1234567890?style=for-the-badge&label=discord&color=5865F2)](https://discord.gg/hintycloud)

**Gem is a complete agentic AI ecosystem** — CLI, Web UI, and API.  
Read code → Plan → Execute → Observe → Iterate.

[🌍 Website](https://gem.sh) · [📥 Download](https://gem.sh/download) · [🧩 Plugins](https://gem.sh/plugins) · [📖 Docs](https://gem.sh/docs) · [💬 Discord](https://discord.gg/hintycloud) · [🐛 Report Bug](https://github.com/HintyCloud/Gem-Cli/issues)

</div>

---

## 🚀 Quick Start

```bash
# Install in 1 command
curl -sL https://gem.sh/install | bash

# Or with npm
npm install -g @hintycloud/gem

# Start chatting with AI
gem chat

# Interactive setup (choose provider, model, API key)
gem setup
```

## 🖥️ Platform Selection System

Gem lets you choose your AI provider and model interactively:

```
$ gem providers

  Available Providers:
    openrouter    https://openrouter.ai/api/v1     Multi-model gateway [FREE] ← current
    opencode      https://opencode.ai/zen/v1       HintyCloud's API [FREE]
    openai        https://api.openai.com/v1        OpenAI GPT models
    anthropic     https://api.anthropic.com/v1     Claude models
    groq          https://api.groq.com/openai/v1   Ultra-fast inference [FREE]
    local         http://127.0.0.1:8080/v1         Local via llama.cpp [FREE]
```

Switch in chat with `/provider openai` or `/model gpt-4o`.

### Free Models (Default)

| Model | Provider | Description |
|-------|----------|-------------|
| **nvidia/nemotron-3-super-120b-a12b:free** | OpenRouter | **Default** — 120B params, FREE |
| meta-llama/llama-3.3-70b-instruct:free | OpenRouter | Meta's Llama 3.3 70B |
| google/gemma-2-9b-it:free | OpenRouter | Google Gemma 2 9B |
| qwen/qwen-2.5-72b-instruct:free | OpenRouter | Alibaba Qwen 2.5 72B |
| deepseek/deepseek-chat-v3-0324:free | OpenRouter | DeepSeek V3 |
| mistralai/mistral-small-3.1-24b-instruct:free | OpenRouter | Mistral Small 3.1 |

## 🧠 Local Model (Offline Mode)

```bash
# Download Qwen 2.5 Coder 0.5B (GGUF, ~400MB)
bash scripts/download-model.sh

# Setup llama.cpp
bash scripts/setup-llama-cpp.sh

# Chat offline
gem chat --local
```

Works on Termux/Android too! Full offline AI in your pocket.

## 💬 Enterprise Chat UI

Gem's chat interface is modern and feature-rich:

- 🎨 **Rich ANSI colors** — Not a 1945 terminal
- ⠋ **Animated spinners** — Visual feedback while thinking
- 📝 **Markdown rendering** — Bold, headers, lists, code blocks
- 📦 **Boxed output** — Clean framed responses
- ⚡ **Streaming** — Real-time token streaming
- 🔧 **Slash commands** — Full control of the session

### Slash Commands

| Command | Description |
|---------|-------------|
| `/help` | Show all commands |
| `/model [id]` | Switch or list models |
| `/provider [id]` | Switch or list providers |
| `/clear` | Clear conversation |
| `/status` | Current status |
| `/history` | Show conversation |
| `/save` | Save conversation |
| `/tools` | List available tools |
| `/agents` | Agent profiles |
| `/ram` | RAM usage info |
| `/local` | Toggle local model |
| `/plugin [cmd]` | Plugin management |
| `/exit` | Exit chat |

## 🤖 Agentic Capabilities

Gem is a real AI agent, not just a chatbot:

- **📖 Reads code** — Understands entire project structures
- **✍️ Creates files** — Writes functions, classes, entire projects
- **🐛 Fixes bugs** — Finds, diagnoses, and corrects errors
- **🔍 Searches code** — Finds where things are implemented
- **🧪 Runs tests** — Executes and analyzes test results
- **🔧 Refactors** — Improves code quality across files
- **📦 Manages deps** — npm, pip, cargo, go mod
- **🌿 Git operations** — Commits, PRs, branches, diffs
- **🧩 Uses plugins** — Extends with community tools
- **📝 Explains code** — Makes complex code understandable
- **🐙 GitHub/GitLab** — PRs, issues, code review
- **🔄 Agent loop** — Think → Plan → Execute → Observe → Iterate

### Think-Act-Observe Loop

```
User: "Add auth to my app"
  ↓
Gem analyzes project structure
  ↓
Gem plans: "Need to modify routes, add middleware, update DB schema"
  ↓
Gem executes: reads files → edits code → runs tests → observes results
  ↓
Gem iterates until the task is complete
```

## 🧩 Plugin System

```bash
# Install plugins
gem plugin install gem-plugin-docker
gem plugin install gem-plugin-k8s

# List installed
gem plugin list

# Publish your own
gem plugin publish ./my-plugin
```

**8 Core Plugins:** git, docker, web, db, deploy, lint, test, k8s

**Community Plugins:** azure, cohere, redis, security, and more

See [plugins/README.md](plugins/README.md) for the full guide.

## 🔒 RAM Management

Gem monitors memory to prevent crashes:

- Auto-warns at 70% usage
- Auto-GC at 80% usage
- Refuses local model if RAM critical
- `/ram` command shows real-time usage

## 📦 Package Structure

```
GemHinty/
├── binário/              # Pre-compiled binaries (8)
│   ├── gem-linux-amd64       # Linux x86_64
│   ├── gem-linux-arm64       # Linux ARM64
│   ├── gem-darwin-amd64      # macOS Intel
│   ├── gem-darwin-arm64      # macOS Apple Silicon
│   ├── gem-windows-amd64.exe # Windows x86_64
│   ├── gem-windows-arm64.exe # Windows ARM64
│   ├── gem-rust-linux-amd64  # Rust binary
│   └── gem-c-linux-amd64     # C binary (~77KB)
├── etc/                  # Source implementations (7)
│   ├── gem-python/       # Python (reference)
│   ├── gem-go/           # Go (compiled binaries)
│   ├── gem-rust/         # Rust
│   ├── gem-c/            # C (ultra-light)
│   ├── gem-node/         # Node.js/TypeScript
│   ├── gem-bash/         # Bash (universal)
│   └── gem-java/         # Java
├── plugins/              # Plugin system
│   ├── core/             # 8 official plugins
│   ├── community/        # Community plugins
│   └── .registry/        # Plugin registry
├── bugs/                 # Bug report templates
├── config/               # Configuration
├── data/                 # Runtime data (models, llama.cpp)
├── scripts/              # Setup scripts
├── site/                 # Website source (Next.js)
├── site.zip              # Website bundle
└── install.sh            # One-command installer
```

## 🔑 Environment Variables

| Variable | Description |
|----------|-------------|
| `GEM_API_KEY` | API key (highest priority) |
| `OPENROUTER_API_KEY` | OpenRouter key |
| `OPENCODE_API_KEY` | OpenCode key |
| `GEM_MODEL` | Override model |
| `GEM_BASE_URL` | Override provider URL |

## 🏗️ Build from Source

```bash
# Go (recommended)
cd etc/gem-go && go build -o gem .

# Rust
cd etc/gem-rust && cargo build --release

# C
cd etc/gem-c && make
```

## 🐛 Bug Reports

Found a bug? [Open an issue](https://github.com/HintyCloud/Gem-Cli/issues) or run `gem bug report`.

See [bugs/README.md](bugs/README.md) for the template.

---

<div align="center">

**[HintyCloud](https://hintycloud.com)** · **[gem.sh](https://gem.sh)** · **[Discord](https://discord.gg/hintycloud)**

Made with 💎 by HintyCloud

</div>
