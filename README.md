# CopilotCLIShortcuts

A PowerShell module providing convenient shortcut functions for the GitHub Copilot CLI (`copilot`), allowing you to quickly invoke different AI models in both silent (piped) and interactive modes.

## Features

- **Model Shortcuts**: Quick access to Claude Sonnet, Opus, Haiku, and Gemini Pro.
- **Silent & Interactive Modes**: Separate commands for non-interactive piped output and interactive sessions.
- **Session Management**: Easily continue the last session or resume a specific one.
- **Smart Prompting**: Automatically prepends `-p` (silent) or `-i` (interactive) if the first argument isn't a flag.
- **Default Flags**: All commands include `--allow-all-tools` by default.

## Installation

1. Clone this repository or download the files.
2. Import the module in your PowerShell profile:
   ```powershell
   Import-Module "path\to\CopilotCLIShortcuts.psd1"
   ```

## Available Shortcuts

### Claude Models (4.6)

| Model | Silent Mode | Interactive Mode |
| :--- | :--- | :--- |
| **Sonnet** | `co` | `ico` |
| **Opus** | `coo` | `icoo` |
| **Haiku** | `coh` | `icoh` |

### Google Gemini

| Model | Silent Mode | Interactive Mode |
| :--- | :--- | :--- |
| **Gemini 3 Pro** | `cog` | `icog` |

### Session Management

- `cocon`: Continues the most recent Copilot session.
- `cores [SessionID]`: Resumes a specific session by ID, or prompts for one if omitted.

## Usage Examples

### Silent Mode (Quick Queries)
Useful for getting quick answers directly in the terminal or piping to other commands.
```powershell
co "Explain the difference between value and reference types"
coh "What does 'git checkout -b' do?"
```

### Interactive Mode
Starts a full interactive session with the specified model.
```powershell
ico "Help me refactor this script"
icog
```

### Passing Additional Arguments
You can still pass any standard `copilot` CLI arguments.
```powershell
co --help
ico --token-limit 2000 "Write a complex regex"
```

## Requirements

- [GitHub Copilot CLI](https://github.com/github/copilot-cli) installed and authenticated.
- PowerShell 5.0 or higher.
