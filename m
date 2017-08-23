X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2879" "Wednesday" "23" "August" "2017" "19:52:09" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<88316492-8fc4-3062-f48b-756aa3497606@orlitzky.com>" "71" "[oss-security] CVE-2017-13649: UnrealIRCd privilege escalation via PID file manipulation" nil nil nil "8" "2017082323:52:09" "[oss-security] CVE-2017-13649: UnrealIRCd privilege escalation via PID file manipulation" (number mark "U       michael@orli Aug 23   71/2879  " thread-indent "\"[oss-security] CVE-2017-13649: UnrealIRCd privilege escalation via PID file manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24278 invoked by uid 550); 24 Aug 2017 00:11:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10163 invoked from network); 23 Aug 2017 23:52:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1503532330; bh=MXozfvN1ws/Cyyl6FOH7lVaqX5lCLNE/mrxEJPNmG18=;
	h=To:From:Subject:Date;
	b=bU4kdBQLqj+W+Ct7dGoOq3wKIQ6XsI35u3kqpPegePirNZk+R7XnlNPW/8NnQGtOP
	 BWhR2H/nVbmtQHwl3CABjY4YCkVK5RXnKRy2KUQ/N0xtuk4hlccoHaUy3ONdmI+BWM
	 csGBFLHIQeYeXQN8Q6D2G5W/SwmBWm3YEuzcS0Kc=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <88316492-8fc4-3062-f48b-756aa3497606@orlitzky.com>
Date: Wed, 23 Aug 2017 19:52:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-13649: UnrealIRCd privilege escalation via PID file
 manipulation

Product: UnrealIRCd (Unreal IRC daemon)
Versions-affected: 4.0.13 and earlier
Bug-report: https://bugs.unrealircd.org/view.php?id=4990
Author: Michael Orlitzky

== Summary ==

The unrealircd daemon creates its PID file after dropping
privileges. This represents a minor security issue when used with a
traditional SysV-style init script; additional factors are needed to
make it exploitable.

== Details ==

The purpose of the PID file is to hold the PID of the running daemon,
so that later it can be stopped, restarted, or otherwise signalled
(many daemons reload their configurations in response to a SIGHUP).
To fulfill that purpose, the contents of the PID file need to be
trustworthy. If the PID file is writable by a non-root user, then he
can replace its contents with the PID of a root process. Afterwards,
any attempt to signal the PID contained in the PID file will instead
signal a root process chosen by the non-root user (a vulnerability).

This is commonly exploitable through init scripts that are run as root
and which blindly trust the contents of their PID files.

== Exploitation ==

There is only a risk of exploitation when some other user relies on
the data in the PID file. An example of a problematic scenario
involving an init script would be,

1. I run "/etc/init.d/unrealircd start" to start the daemon.

2. unrealircd drops to the "unrealircd" user.

3. unrealircd writes its PID file, now owned by the "unrealircd" user.

4. Someone compromises the daemon.

5. The attacker is generally limited in what he can do because the
   daemon doesn't run as root. However, he can write "1" into the
   PID file, and he does.

6. I run "/etc/init.d/unrealircd stop" to stop the daemon while I
   investigate the weird behavior resulting from the hack.

7. The machine reboots, because I killed PID 1 (this is normally
   restricted to root).

== Workaround ==

The UnrealIRCd team provides limited support for SysV-style init
scripts. The documented way to run the daemon is to start it either
manually or through cron, as a restricted user. Afterwards, you can
stop or reload the daemon as the same restricted user. This avoids the
vulnerability because the reload/stop signals aren't sent as root; the
PID file is controlled by "you," i.e. the user who started and is
signaling the daemon. These steps are documented on the following
wiki pages:

  * https://www.unrealircd.org/docs/Installing_from_source
  * https://www.unrealircd.org/docs/Do_not_run_as_root
  * https://www.unrealircd.org/docs/Cron_job

Another possible workaround, if you are using a supervising init
system, is to run unrealircd in the foreground, and let the init
system manage its PID file. The "-F" flag can be passed to the
daemon to run it in the foreground; the init system will then
create and utilize the PID file safely. This is sufficient for
systemd, OpenRC, and the like.
