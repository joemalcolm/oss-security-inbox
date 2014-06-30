X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/30/3
Message-ID: <53B10290.5000507@redhat.com>
Date: Mon, 30 Jun 2014 16:24:16 +1000
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE requests: nagios check_dhcp plug-in: read parts of INI config files belonging to root
Content-Type: text/plain; charset=utf-8

Good morning,

Dawid Golunski discovered a flaw in the Nagios check_dhcp plugin that
allows "Malicious user that has local access to a system where
check_dhcp plugin is installed with SUID could exploit  this
vulnerability to read any INI format config files owned by root and
potentially extract some sensitive information.":

http://seclists.org/fulldisclosure/2014/May/74

This was fixed in version 2.0.2:

<http://nagios-plugins.org/nagios-plugins-2-0-2-released/>

Dawid later reported a race condition. Despite the above fix, it was
still possible to read parts of root-owned files:

http://seclists.org/fulldisclosure/2014/Jun/141

This was fixed in version 2.0.3:

<http://nagios-plugins.org/nagios-plugins-2-0-3-released/>

Can CVEs please be assigned if they have not been already?

Thanks,

--
Murray McAllister / Red Hat Product Security
