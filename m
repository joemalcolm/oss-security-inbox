X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2813" "Wednesday" "20" "September" "2017" "20:39:24" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<bf63ff44-fb2b-bc2b-9cad-ba818bb57162@orlitzky.com>" "82" "[oss-security] CVE-2017-14609 Kannel privilege escalation via PID file manipulation" nil nil nil "9" "2017092100:39:24" "[oss-security] CVE-2017-14609 Kannel privilege escalation via PID file manipulation" (number mark "U       michael@orli Sep 20   82/2813  " thread-indent "\"[oss-security] CVE-2017-14609 Kannel privilege escalation via PID file manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3123 invoked by uid 550); 21 Sep 2017 00:39:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3102 invoked from network); 21 Sep 2017 00:39:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1505954378; bh=bKjhkVCffntBgp6gnwAqvgGy3BbivRwe4FBlb63ImF0=;
	h=To:From:Subject:Date;
	b=lhX6YD51lowjow1tyCdCt+t9kn+FYWcf9s2MvzxhbhKR/puSAH0fM4WhU9+ywaWSg
	 Jbn0+SETBzgD0j812/6HO0Bc95rytLsPrItDG6eXgx4guWL1+9bbX1T9lAoHiyHMyQ
	 qO6DNU+YUPW+nhVfy889xRrYKKRJgc0LZsn37HxU=
To: oss-security <oss-security@lists.openwall.com>
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <bf63ff44-fb2b-bc2b-9cad-ba818bb57162@orlitzky.com>
Date: Wed, 20 Sep 2017 20:39:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-14609 Kannel privilege escalation via PID file manipulation

Product: Kannel (open source WAP and SMS gateway)
Versions-affected: all
Bug-report: https://redmine.kannel.org/issues/771
Author: Michael Orlitzky


(This hasn't been fixed upstream but I don't expect a response, so I'd
rather not make people wait for the workaround.)


== Summary ==

The Kannel daemons create their PID files after dropping privileges to
a non-root user. That may be exploited (through init scripts or other
management tools) by the unprivileged user to kill root processes,
since when a daemon is stopped, root usually sends a SIGTERM to the
contents of its PID file (which are under the control of the runtime
user).


== Details ==

The purpose of the PID file is to hold the PID of the running daemon,
so that later it can be stopped, restarted, or otherwise signaled
(many daemons reload their configurations in response to a SIGHUP).
To fulfil that purpose, the contents of the PID file need to be
trustworthy. If the PID file is writable by a non-root user, then he
can replace its contents with the PID of a root process. Afterwards,
any attempt to signal the PID contained in the PID file will instead
signal a root process chosen by the non-root user.

This is commonly exploitable through init scripts that are run as root
and which blindly trust the contents of their PID files. Kannel itself
ships a few such a init scripts as debian/*.init.


== Exploitation ==

There is only a risk of exploitation when some other user relies on
the data in the PID file.

An example scenario involving an init script would be,

1. I run "/etc/init.d/bearerbox start" to start the daemon.

2. bearerbox drops to the "kannel" user.

3. bearerbox writes its PID file, now owned by the "kannel" user.

4. Someone compromises the daemon.

5. The attacker is generally limited in what he can do because the
   daemon doesn't run as root. However, he can write "1" into the
   PID file, and he does.

6. I run "/etc/init.d/bearerbox stop" to stop the daemon while I
   investigate.

7. The machine reboots, because I killed PID 1 (this is normally
   restricted to root).


== Workaround ==

The Kannel daemons can be run in the foreground (by omitting
the --daemonize, --pid-file, and --user flags) under a modern init
system like systemd or OpenRC. Those init systems create the PID file as
root, and it can be relocated to a root-owned directory like /run to
avoid the vulnerability.

A SysV-style init script can mitigate the risk by verifying the PID
data. You can get the user of the process whose PID you find with

  ps -p <pid> -o user=

and you can get the name of the command with

  ps -p <pid> -o comm=

Init script authors should check the output of those two command against
the expected values before sending a signal to a running process. That
will eliminate the most serious risks.
