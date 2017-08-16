X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2027" "Wednesday" "16" "August" "2017" "12:10:09" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "56" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "8" "2017081616:10:09" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        michael@orli Aug 16   56/2027  " thread-indent "\"[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22295 invoked by uid 550); 16 Aug 2017 16:13:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17795 invoked from network); 16 Aug 2017 16:10:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1502899811; bh=AzNw9a7nN8/W7sKX21vO7abiE7sp63C8L4zQyBkf2IY=;
	h=To:From:Subject:Date;
	b=Oa1022qHpBvy8vL5JbPeQbHRplLDJTSf4o605RAfrvvUWM8HUGx2ePqNfprj+myd0
	 WUdI0r6IplsQ9FSTU0S2BLj9rfzwKQeaEZ9qqXH0Jy3eA7hZqbd5IE43eeA/tY1b3q
	 zbNUMKPh2SeeFFYWOcOYag3Ks9TTK6Iu5DZy7N/U=
Message-ID: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Wed, 16 Aug 2017 12:10:09 -0400
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file
 manipulation
To: oss-security@lists.openwall.com

Product: Nagios Core
Versions-affected: 4.3.2 and earlier
Fixed-in: commits 1b19734 and 3baffa7, version 4.3.3
Bug-report: https://github.com/NagiosEnterprises/nagioscore/issues/404
Author: Michael Orlitzky
Acknowledgments: Bryan Heden (upstream) for his fast response and help

== Summary ==

The nagios daemon should create its PID file before dropping
privileges. This represents a minor security issue; additional factors
are needed to make it exploitable.

== Details ==

The purpose of the PID file is to hold the PID of the running daemon,
so that later it can be stopped, restarted, or otherwise signalled
(many daemons reload their configurations in response to a SIGHUP).
To fulfill that purpose, the contents of the PID file need to be
trustworthy. If the PID file is writable by a non-root user, then he
can replace its contents with the PID of a root process. Afterwards,
any attempt to signal the PID contained in the PID file will instead
signal a root process chosen by the non-root user (a vulnerability).

This is commonly exploitable by init scripts that are run as root and
which blindly trust the contents of their PID files. Nagios itself ships
such an init script (daemon-init.in), so the risk is not theoretical in
this case.

== Exploitation ==

An example scenario involving an init script would be,

1. I run "/etc/init.d/nagios start" to start the daemon.

2. nagios drops to the "nagios" user.

3. nagios writes its PID file, now owned by the "nagios" user.

4. Someone compromises the daemon, which sits on the network.

5. The attacker is generally limited in what he can do because the
   daemon doesn't run as root. However, he can write "1" into the
   PID file, and he does.

6. I run "/etc/init.d/nagios stop" to stop the daemon while I
   investigate the weird behavior resulting from the hack.

7. The machine reboots, because I killed PID 1 (this is normally
   restricted to root).

== Resolution ==

The problem is avoided by creating the PID file as root, before dropping
privileges.

