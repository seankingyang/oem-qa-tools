echo
echo "=====Before test setting start======"
_run sudo dpkg --configure -a
_run sudo DEBIAN_FRONTEND=noninteractive apt-get install apt-transport-https -y
_run sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 95829CE3
_run sudo add-apt-repository \"deb https://warthogs:eB+uZWXE7@cesg.canonical.com/canonical somerville-fossa-psyduck-focal-staging public\" -y
_run sudo apt update

_run sudo ubuntu-drivers devices
_run sudo DEBIAN_FRONTEND=noninteractive apt-get -qq dist-upgrade -y --allow-remove-essential
_run sudo apt update
_run sudo DEBIAN_FRONTEND=noninteractive apt-get -qq install oem-fix-misc-cnl-backport-iwlwifi-helper -y
_run sudo reboot
sleep 120
wait_for_ssh
echo "=====Before test settng end======"
echo
