# Gem Plugin System

Gem supports plugins that extend its capabilities with new tools, providers, agents, and commands.

## Installing Plugins

```bash
# Install from registry
gem plugin install <name>

# Install from URL
gem plugin install https://github.com/user/gem-plugin-xyz

# Install from local path
gem plugin install ./my-plugin

# List installed plugins
gem plugin list

# Remove a plugin
gem plugin remove <name>
```

## plugin.toml Format

```toml
[plugin]
name = "my-plugin"
version = "1.0.0"
description = "My awesome Gem plugin"
author = "Your Name"
license = "MIT"
homepage = "https://github.com/user/gem-plugin-xyz"
category = "tools"  # tools, providers, agents, memory, ui, prompts

[plugin.compatibility]
gem_version = ">=2.0.0"

[plugin.dependencies]
# Other plugins this depends on

[plugin.entry]
# Entry points for different extension types
tools = "src/tools"
providers = "src/providers"
agents = "src/agents"
commands = "src/commands"
```

## Plugin Categories

| Category | Description | Example |
|----------|-------------|---------|
| `tools` | Adds new tools | k8s management, database tools |
| `providers` | Adds AI providers | Azure OpenAI, Cohere |
| `agents` | Adds agent profiles | security auditor, DevOps |
| `memory` | Memory backends | Redis, PostgreSQL |
| `ui` | UI extensions | custom themes, TUI widgets |
| `prompts` | Prompt templates | code review, commit messages |

## Publishing Plugins

1. Create your plugin following the structure above
2. Test it: `gem plugin test ./my-plugin`
3. Publish to the Gem Plugin Registry:
   ```bash
   gem plugin publish ./my-plugin
   ```
4. Your plugin will appear at https://gem.sh/plugins

## Core Plugins (Bundled)

These plugins are included with Gem by default:

- **gem-plugin-git** — Advanced Git/GitHub/GitLab integration
- **gem-plugin-docker** — Docker and container management
- **gem-plugin-k8s** — Kubernetes operations
- **gem-plugin-web** — Web scraping and browsing
- **gem-plugin-db** — Database operations
- **gem-plugin-lint** — Code linting and formatting
- **gem-plugin-test** — Test runner integration
- **gem-plugin-deploy** — Deployment automation

## Creating a Tool Plugin

```typescript
// src/tools/my-tool.ts
import { Tool, ToolResult } from '@gem/plugin-api';

export class MyTool implements Tool {
  name = 'my_tool';
  description = 'Does something awesome';

  schema = {
    type: 'object',
    properties: {
      input: { type: 'string', description: 'Input parameter' }
    },
    required: ['input']
  };

  async run(args: { input: string }): Promise<ToolResult> {
    // Your implementation
    return { output: `Processed: ${args.input}` };
  }
}
```

## Creating a Provider Plugin

```typescript
// src/providers/my-provider.ts
import { Provider, GenerateResult } from '@gem/plugin-api';

export class MyProvider implements Provider {
  name = 'my_provider';
  
  async generate(messages, system): Promise<GenerateResult> {
    // Call your API
    const response = await fetch('https://my-api.com/v1/chat/completions', {
      method: 'POST',
      headers: { 'Authorization': `Bearer ${this.apiKey}` },
      body: JSON.stringify({ messages, model: this.model })
    });
    return response.json();
  }
}
```
