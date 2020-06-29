#!/bin/bash -eu

echo -e '\033[33mCreating a nice looking Coditation welcome message after SSH login ...\033[0m'

echo 'Coditation \n \l' > /etc/issue

cat << 'EOF' > /etc/update-motd.d/00-header
#!/bin/sh

if [ -f /opt/coditation/st2/lib/python2.7/site-packages/st2common/__init__.py ]; then
  # Get st2 version based on hardcoded string in st2common
  ST2_VERSION=$(python -c 'execfile("/opt/coditation/st2/lib/python2.7/site-packages/st2common/__init__.py"); print __version__')
  printf "Welcome to \033[1;38;5;Coditation\033[0m \033[1m%s\033[0m (Ubuntu 16.04 LTS %s %s)\n" "v${ST2_VERSION}" "$(uname -o)" "$(uname -m)"
else
  printf "Welcome to \033[1;38;5;Coditation\033[0m (Ubuntu 16.04 LTS %s %s)\n" "$(uname -o)" "$(uname -m)"
fi
EOF

cat << 'EOF' > /etc/update-motd.d/10-help-text
#!/bin/sh

printf "\n"
printf " * Documentation: https://docs.coditation.com/\n"
printf " * Community: https://coditation.com/community-signup\n"
printf " * Forum: https://forum.coditation.com/\n"
printf " * \033[1;38;5;93mEnterprise: https://coditation.com/#product\033[0m\n\n"
EOF

chmod +x /etc/update-motd.d/*
