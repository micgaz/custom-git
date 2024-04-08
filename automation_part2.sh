# Zawartosc etc i sysconfig /etc
echo "Configuration files for SSH server (sshd_config):"
find /etc -name 'sshd_config'

echo "Configuration files for network interfaces:"
find /etc -name 'interfaces' -o -path '/etc/network/interfaces.d/*'
