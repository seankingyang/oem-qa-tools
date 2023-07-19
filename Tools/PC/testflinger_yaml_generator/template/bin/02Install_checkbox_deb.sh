_run sudo dpkg --configure -a
_run sudo apt-get -qq update
_run sudo apt-get -qq purge -y checkbox-ng
_run sudo apt-get -qq purge -y python3-checkbox-support
_run sudo apt-get -qq purge -y plainbox-provider-*
_run sudo apt-get -qq purge -y checkbox-provider-*
_run sudo add-apt-repository --remove -y ppa:checkbox-dev/ppa
_run sudo add-apt-repository ppa:checkbox-dev/testing -y
_run sudo apt-get update
_run sudo DEBIAN_FRONTEND=noninteractive apt-get install checkbox-provider-base checkbox-ng checkbox-provider-resource checkbox-provider-certification-client -y
_run checkbox-cli --version
