# Bug Reports & Issues

Found a bug? Have a feature request? Report it here!

## How to Report a Bug

### Option 1: Using Gem CLI
```bash
gem bug report
```
This opens an interactive prompt that collects:
- Bug description
- Steps to reproduce
- Expected vs actual behavior
- System info (auto-collected)
- Gem version (auto-collected)

### Option 2: Using GitHub Issues
Open an issue at: https://github.com/HintyCloud/Gem-Cli/issues

### Option 3: Manual Report
Create a file in this directory following the template below.

## Bug Report Template

```markdown
# Bug: [Short Title]

## Description
[Clear description of the bug]

## Steps to Reproduce
1. ...
2. ...
3. ...

## Expected Behavior
[What should happen]

## Actual Behavior
[What actually happens]

## Environment
- Gem version: (run `gem --version`)
- OS: (e.g., Ubuntu 22.04, macOS 14, Windows 11)
- Provider: (e.g., openrouter, opencode)
- Model: (e.g., nvidia/nemotron-3-super-120b-a12b:free)

## Logs
```
[Paste relevant logs]
```

## Screenshots
[If applicable]
```

## Known Issues

| Issue | Status | Workaround |
|-------|--------|------------|
| Streaming sometimes cuts off on Termux | Open | Use `--no-stream` flag |
| Windows ARM64 binary may be slow | Open | Use x86_64 binary via emulation |

## Feature Requests

Use the same process but label as `feature-request` instead of `bug`.

## Security Vulnerabilities

**Do NOT report security vulnerabilities publicly.**

Email: security@hintycloud.com
