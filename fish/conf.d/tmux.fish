if not set -q TMUX
    set session_name base
    if tmux has-session -t $session_name 2>/dev/null
        exec tmux new-window -t $session_name \; attach-session -t $session_name
    else
        exec tmux new-session -s $session_name
    end
end
