add-content -path ~/.ssh/config -value @'

Host ${name}
  HostName ${hostname}
  User ${user}
  IdentityFile ${identityfile}
'@