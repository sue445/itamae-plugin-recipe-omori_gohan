def itamae_current_user
  run_command("logname").stdout.strip
end
