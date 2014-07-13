#fedora-livedvd-netizen.ks
# With KDE Desktop 

# Fedora Netizen: Empowering Internet Netizens Everywhere
# The goal for Fedora Netizen is to provide users with
# privacy, security, analytics, and engagement software
# Web: https://fedoraproject.org/wiki/Netizen-Spin
# Trac: https://fedorahosted.org/netizen

# Maintainer: Corey Leong <cleong@fedoraproject.org>
#             https://fedoraproject.org/wiki/User:Cleong

# Last modified: 13 July 2014.

%include /usr/share/spin-kickstarts/fedora-live-kde-base.ks

#partition size
part / --size 8192

%packages
-fedora-logos
generic-logos

# Netizen Privacy Packages
gnupg2
keepassx
pidgin
pidgin-otr
privoxy
pwgen
ssss
svrcore
sweeper
tor

# Netizen Security Pakcages
aircrack-ng
iptables

# Netizen Engagement Packages
firefox

# Netizen Analytics Packages

# Remove unnecessary packages

%end

%post
sed -i -e 's/Fedora/Generic/g' /etc/fedora-release
%end
