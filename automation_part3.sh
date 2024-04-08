# Sprawdzanie .bashrc w home dir
echo "Zawartosc .bashrc w home:"
cat ~/.bashrc

echo "One setting in .bashrc:"
grep 'export PATH' ~/.bashrc

echo "One alias defined in .bashrc:"
grep '^alias' ~/.bashrc

# Logi w /var
echo "Zawartosc  /var/log directory:"
cd /var/log || { echo "Problem z /var/log "; exit 1; }
ls -l

echo "10 ostatnich linijek syslog:"
tail /var/log/syslog

# Sprawdzanie /proc 
echo "Pliki nazwane wylacznie numerami w /proc:"
ls -la /proc | grep '^[0-9]'

echo "Dziala w tle do obserwacji procesow:"
top
