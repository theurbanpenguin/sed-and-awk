#!/bin/sed -Ef
/ClientAliveInterval/ {
  s/^(ClientAliveInterval).*$/\1 60/
  t count
  s/.*/ClientAliveInterval 60/
  t count
}

:count
/ClientAliveCountMax/ {
  s/^(ClientAliveCountMax).*$/\1 3/
  t del
  s/.*/ClientAliveCountMax 3/
  t del
}

:del
/^($|#)/d