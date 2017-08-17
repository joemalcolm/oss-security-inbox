X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2111" "Thursday" "17" "August" "2017" "12:48:39" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<0880ca9f-a632-2da6-8ce6-8be03f332d7f@orlitzky.com>" "56" "[oss-security] CVE-2017-11746: tenshi privilege escalation via PID file manipulation" "^Date:" nil nil "8" "2017081716:48:39" "[oss-security] CVE-2017-11746: tenshi privilege escalation via PID file manipulation" (number mark "U       michael@orli Aug 17   56/2111  " thread-indent "\"[oss-security] CVE-2017-11746: tenshi privilege escalation via PID file manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32574 invoked by uid 550); 17 Aug 2017 16:58:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20305 invoked from network); 17 Aug 2017 16:48:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1502988520; bh=b7oqb7B96CCNp3S6RYlsHN7ZaDcmMo7KhbYNWWR9lFg=;
	h=To:From:Subject:Date;
	b=imXxuRwUt37yRNMdvq5N5Tfnl//Tt9xEEi6ukV40PcvHFGpBflulyIL/smmqJYaU6
	 HqpNJc1rzbX7qE9ckMw4BL+HTp4aZwxmWTbN7S4wwuxfbd2ilW+/a6SZ2gkLeEeZoU
	 AEPTJe7DEaC0IpicnPa7G6mW00JwZTN4nezKpU7o=
Message-ID: <0880ca9f-a632-2da6-8ce6-8be03f332d7f@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Date: Thu, 17 Aug 2017 12:48:39 -0400
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-11746: tenshi privilege escalation via PID file manipulation
To: oss-security@lists.openwall.com

Product: Tenshi (log monitoring tool)
Vendor: Inverse Path (F-Secure)
Versions-affected: 0.15 and earlier
Fixed-in: commits 46b0148 and d0e7f28, version 0.16
Bug-report: https://github.com/inversepath/tenshi/issues/6
Author: Michael Orlitzky
Acknowledgments: Andrea Barisani who fixed several other issues and got
  a new release out to help fix this one.

== Summary ==

The tenshi daemon should create its PID file before dropping
privileges. This represents a minor security issue; additional factors
are needed to make it exploitable.

== Details ==

The purpose of the PID file is to hold the PID of the running daemon,
so that later it can be stopped, restarted, or otherwise signalled
(many daemons reload their configurations in response to a SIGHUP).
To fulfil that purpose, the contents of the PID file need to be
trustworthy. If the PID file is writable by a non-root user, then he
can replace its contents with the PID of a root process. Afterwards,
any attempt to signal the PID contained in the PID file will instead
signal a root process chosen by the non-root user (a vulnerability).

This is commonly exploitable by init scripts that are run as root and
which blindly trust the contents of their PID files. Tenshi itself ships
a few such init scripts: tenshi.debian-init, tenshi.suse-init, etc.

== Exploitation ==

An example of a problematic scenario involving an init script would be,

1. I run "/etc/init.d/tenshi start" to start the daemon.

2. tenshi drops to the "tenshi" user.

3. tenshi writes its PID file, now owned by the "tenshi" user.

4. Someone compromises the daemon, which processes untrusted input.

5. The attacker is generally limited in what he can do because the
   daemon doesn't run as root. However, he can write "1" into the
   PID file, and he does.

6. I run "/etc/init.d/tenshi stop" to stop the daemon while I
   investigate the weird behavior resulting from the hack.

7. The machine reboots, because I killed PID 1 (this is normally
   restricted to root).

== Resolution ==

The problem is avoided by creating the PID file as root, before dropping
privileges.
