#!/bin/sed -f
/ClientAliveInterval/ {
  s/^(ClientAliveInterval).*$/\1 60/
  t del
  s/.*/ClientAliveInterval 60/
  t del
}
$a ClientAliveInterval 60
:del
/^($|#)/d