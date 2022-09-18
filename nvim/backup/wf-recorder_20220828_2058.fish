if pgrep wf-recorder
  echo '{"class": "recording\"}'
else
  echo '{"class": "idle"}'
end
