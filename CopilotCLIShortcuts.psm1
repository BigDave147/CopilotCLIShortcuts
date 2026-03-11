function co {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Claude Sonnet in silent/pipe mode.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the claude-sonnet-4.6 model and --allow-all-tools.
        Runs non-interactively with --silent -p flags. If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        co "Explain this error"
        Runs Copilot with Claude Sonnet in silent mode using the given prompt.

    .EXAMPLE
        co --help
        Passes --help directly to the Copilot CLI.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') {
        $extra = @('-p')
    }
    & copilot --model claude-sonnet-4.6 --allow-all-tools --silent @extra @Arguments
}

function ico {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Claude Sonnet interactively.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the claude-sonnet-4.6 model and --allow-all-tools
        in interactive mode (no --silent flag). If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        ico "Refactor this function"
        Opens an interactive Copilot session with Claude Sonnet using the given prompt.

    .EXAMPLE
        ico
        Opens a fresh interactive Copilot session with Claude Sonnet.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') {
        $extra = @('-i')
    }
    & copilot --model claude-sonnet-4.6 --allow-all-tools @extra @Arguments
}

function coo {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Claude Opus in silent/pipe mode.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the claude-opus-4.6 model and --allow-all-tools.
        Runs non-interactively with --silent -p flags. If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        coo "Write a comprehensive test suite for this module"
        Runs Copilot with Claude Opus in silent mode using the given prompt.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') {
        $extra = @('-p')
    }
    & copilot --model claude-opus-4.6 --allow-all-tools --silent @extra @Arguments
}

function icoo {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Claude Opus interactively.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the claude-opus-4.6 model and --allow-all-tools
        in interactive mode (no --silent flag). If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        icoo "Design the architecture for this service"
        Opens an interactive Copilot session with Claude Opus using the given prompt.

    .EXAMPLE
        icoo
        Opens a fresh interactive Copilot session with Claude Opus.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') {
        $extra = @('-i')
    }
    & copilot --model claude-opus-4.6 --allow-all-tools @extra @Arguments
}

function coh {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Claude Haiku in silent/pipe mode.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the claude-haiku-4.6 model and --allow-all-tools.
        Runs non-interactively with --silent -p flags. If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt. Haiku is the fastest and most
        lightweight Claude model, suited for simple or latency-sensitive tasks.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        coh "What does this regex do?"
        Runs Copilot with Claude Haiku in silent mode using the given prompt.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') { $extra = @('-p') }
    & copilot --model claude-haiku-4.6 --allow-all-tools --silent @extra @Arguments
}

function icoh {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Claude Haiku interactively.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the claude-haiku-4.6 model and --allow-all-tools
        in interactive mode (no --silent flag). If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt. Haiku is the fastest and most
        lightweight Claude model, suited for simple or latency-sensitive tasks.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        icoh "Summarize this file"
        Opens an interactive Copilot session with Claude Haiku using the given prompt.

    .EXAMPLE
        icoh
        Opens a fresh interactive Copilot session with Claude Haiku.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') { $extra = @('-i') }
    & copilot --model claude-haiku-4.6 --allow-all-tools @extra @Arguments
}

function cog {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Gemini Pro in silent/pipe mode.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the gemini-3-pro-preview model and --allow-all-tools.
        Runs non-interactively with --silent -p flags. If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        cog "Review this pull request"
        Runs Copilot with Gemini Pro in silent mode using the given prompt.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') { $extra = @('-p') }
    & copilot --model gemini-3-pro-preview --allow-all-tools --silent @extra @Arguments
}

function icog {
    <#
    .SYNOPSIS
        Invokes GitHub Copilot CLI using Gemini Pro interactively.

    .DESCRIPTION
        Runs the GitHub Copilot CLI with the gemini-3-pro-preview model and --allow-all-tools
        in interactive mode (no --silent flag). If the first argument is not a flag,
        -i is automatically prepended to treat it as a prompt.

    .PARAMETER Arguments
        Arguments to pass to the Copilot CLI. A plain string as the first argument is treated
        as a prompt (the -i flag is prepended automatically).

    .EXAMPLE
        icog "Help me debug this script"
        Opens an interactive Copilot session with Gemini Pro using the given prompt.

    .EXAMPLE
        icog
        Opens a fresh interactive Copilot session with Gemini Pro.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    $extra = @()
    if ($Arguments.Count -gt 0 -and $Arguments[0] -notlike '-*') { $extra = @('-i') }
    & copilot --model gemini-3-pro-preview --allow-all-tools @extra @Arguments
}

function cocon {
    <#
    .SYNOPSIS
        Continues the most recent GitHub Copilot CLI session.

    .DESCRIPTION
        Resumes the last Copilot session using --continue, picking up the conversation
        where it left off. Uses --allow-all-tools.

    .EXAMPLE
        cocon
        Continues the most recent Copilot session.
    #>
    [CmdletBinding()]
    param()
    & copilot --allow-all-tools --continue
}

function cores {
    <#
    .SYNOPSIS
        Resumes a specific GitHub Copilot CLI session by ID.

    .DESCRIPTION
        Resumes a previously saved Copilot session using --resume and --allow-all-tools.
        Pass a session ID to resume a specific session, or omit to be prompted to select one.

    .PARAMETER Arguments
        Optional session ID or additional arguments to pass to --resume.

    .EXAMPLE
        cores
        Prompts to select a previous Copilot session to resume.

    .EXAMPLE
        cores abc123
        Resumes the Copilot session with ID abc123.
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]] $Arguments
    )
    & copilot --allow-all-tools --resume @Arguments
}

