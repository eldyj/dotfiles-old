if pgrep wf-recorder
  echo '{"class": "recording", "state":"record"}'
else
  echo '{"class": "idle"}'
end
