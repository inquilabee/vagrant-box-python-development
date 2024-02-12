function activate_venv() {
    # Activate the virtual environment in the current directory
    local env_name=${1:-$(basename $(pwd))}

    if [ -d "./venv" ]; then
        # Check venv first
        source "./venv/bin/activate"
    elif [ -d "./.venv" ]; then
        # Check .venv next
        source "./.venv/bin/activate"
    elif [ -d "$HOME/.virtualenvs/$env_name" ]; then
        # Check $HOME/.virtualenvs/$env_name
        source "$HOME/.virtualenvs/$env_name/bin/activate"
    elif [ -n "$VIRTUALENV_DIR" ] && [ -d "$VIRTUALENV_DIR/$env_name" ]; then
        # Check $VIRTUALENV_DIR/$env_name
        source "$VIRTUALENV_DIR/$env_name/bin/activate"
    elif [ -n "$VIRTUAL_ENV" ]; then
        # Check $VIRTUAL_ENV 
        parentdir="$(dirname "$VIRTUAL_ENV")"
        if [[ "$PWD"/ != "$parentdir"/* ]]; then
            deactivate
        fi
    fi
}

function cd() {
    builtin cd "$@" && activate_venv
}