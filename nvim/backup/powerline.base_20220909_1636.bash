#! bash oh-my-bash.module

THEME_CHECK_SUDO=${THEME_CHECK_SUDO:=false}

function set_color {
  if [[ "${1}" != "-" ]]; then
    fg="38;5;${1}"
  fi
  if [[ "${2}" != "-" ]]; then
    bg="48;5;${2}"
    [[ -n "${fg}" ]] && bg=";${bg}"
  fi
  echo -e "\[\033[${fg}${bg}m\]"
}

function __powerline_user_info_prompt {
  local color=${USER_INFO_THEME_PROMPT_COLOR}
  local user_info="$(echo $USER_INFO_FORMAT | sed "s|%")"
  [[ -n "${user_info}" ]] && echo "${user_info}|${color}"
}

function __powerline_cwd_prompt {
  echo "$(spwd)|${CWD_THEME_PROMPT_COLOR}"
}

function __powerline_left_segment {
  local OLD_IFS="${IFS}"; IFS="|"
  local params=( $1 )
  IFS="${OLD_IFS}"
  local separator_char="${POWERLINE_LEFT_SEPARATOR}"
  local separator=""

  if [[ "${SEGMENTS_AT_LEFT}" -gt 0 ]]; then
    separator="$(set_color ${LAST_SEGMENT_COLOR} ${params[1]})${separator_char}${_omb_prompt_normal}"
  fi
  LEFT_PROMPT+="${separator}$(set_color - ${params[1]}) ${params[0]} ${_omb_prompt_normal}"
  LAST_SEGMENT_COLOR=${params[1]}
  (( SEGMENTS_AT_LEFT += 1 ))
}

function __powerline_prompt_command {
  local separator_char="${POWERLINE_PROMPT_CHAR}"

  LEFT_PROMPT=""
  SEGMENTS_AT_LEFT=0
  LAST_SEGMENT_COLOR=""

  IFS=' ' read -r -a POWERLINE_PROMPT_ARRAY <<< "${POWERLINE_PROMPT}"

  ## left prompt ##
  for segment in ${POWERLINE_PROMPT_ARRAY[@]}; do
    local info="$(__powerline_${segment}_prompt)"
    [[ -n "${info}" ]] && __powerline_left_segment "${info}"
  done
  [[ "${last_status}" -ne 0 ]] && __powerline_left_segment $(__powerline_last_status_prompt ${last_status})
  [[ -n "${LEFT_PROMPT}" ]] && LEFT_PROMPT+="$(set_color ${LAST_SEGMENT_COLOR} -)${separator_char}${_omb_prompt_normal}"

  PS1="${LEFT_PROMPT} "

  unset LAST_SEGMENT_COLOR \
        LEFT_PROMPT \
        SEGMENTS_AT_LEFT
}
