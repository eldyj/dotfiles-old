#! bash oh-my-bash.module

source "$OSH/themes/powerline/powerline.base.bash"

PROMPT_CHAR=${POWERLINE_PROMPT_CHAR:=""}
POWERLINE_LEFT_SEPARATOR=${POWERLINE_LEFT_SEPARATOR:=""}

CWD_THEME_PROMPT_COLOR=8
USER_INFO_THEME_PROMPT_COLOR=0
USER_INFO_FORMAT="%%"


POWERLINE_PROMPT=${POWERLINE_PROMPT:="user_info cwd"}

_omb_theme_PROMPT_COMMAND() { __powerline_prompt_command "$@"; }
_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
