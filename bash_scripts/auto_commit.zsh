#!/usr/bin/env zsh

# Auto-commit handler for zsh
# When an unknown command is entered:
#   - If it's a directory, cd into it (fallback for AUTO_CD)
#   - If in a git repo, treat input as a commit message and prompt to push

command_not_found_handler() {
    local full_input="$*"

    # Check if the full input is a directory path
    if [[ -d "$full_input" ]]; then
        cd "$full_input"
        return
    fi

    # Check if first arg alone is a directory
    if [[ -d "$1" ]]; then
        cd "$1"
        return
    fi

    # Check if we're inside a git repository
    if git rev-parse --is-inside-work-tree &>/dev/null; then
        # Require more than two words for a commit message
        local word_count=(${=full_input})
        if (( ${#word_count} <= 2 )); then
            echo "zsh: command not found: $1"
            return 127
        fi

        echo "Commit message: \"$full_input\""
        echo -n "Push to remote? [Y/n] "
        read -r answer
        if [[ "$answer" =~ ^[Nn]$ ]]; then
            echo "Aborted."
            return 1
        fi
        lazygit "$full_input"
    else
        echo "zsh: command not found: $1"
        return 127
    fi
}
