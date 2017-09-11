X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2887" "Monday" "11" "September" "2017" "18:00:28" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<e50ea131-db59-eb6b-835a-512a1d5e4bb8@orlitzky.com>" "80" "[oss-security] CVE-2017-14159: OpenLDAP privilege escalation via PID file manipulation" nil nil nil "9" "2017091122:00:28" "[oss-security] CVE-2017-14159: OpenLDAP privilege escalation via PID file manipulation" (number mark "U       michael@orli Sep 11   80/2887  " thread-indent "\"[oss-security] CVE-2017-14159: OpenLDAP privilege escalation via PID file manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30062 invoked by uid 550); 11 Sep 2017 22:00:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30032 invoked from network); 11 Sep 2017 22:00:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1505167229; bh=47i8kB8oWwyaQ0AURsK+0rx4vHfuTpUboOS8KsG9to0=;
	h=To:From:Subject:Date;
	b=iNDgGAsoLaJw6djIssfUfXS/wfJk4ui35hc2g3H/RnJbLJrr/2yj5frjzRKdfKTgH
	 xmkQkOfzvYk9m7HjY13xarlqM/kTPPlIq9KC1A6iB4GohB/bEYQifrOP9JxpUjFbhU
	 Wy9a4OT3RfugLnJlanbztqXWC+GPJTFnnuNR4rIk=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <e50ea131-db59-eb6b-835a-512a1d5e4bb8@orlitzky.com>
Date: Mon, 11 Sep 2017 18:00:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-14159: OpenLDAP privilege escalation via PID file
 manipulation

Product: OpenLDAP (slapd server)
Versions-affected: all modern
Bug-report: http://www.openldap.org/its/index.cgi?findid=8703
Author: Michael Orlitzky


== Summary ==

slapd in all modern versions of OpenLDAP creates a PID file after
dropping privileges to a non-root account, which might allow local users
to kill arbitrary processes by leveraging access to this non-root
account for PID file modification before a root script executes a "kill
`cat /pathname`" command, as demonstrated by openldap-initscript.


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
and which blindly trust the contents of their PID files. An example of
such an init script can be found at,

  https://github.com/ltb-project/openldap-initscript


== Exploitation ==

There is only a risk of exploitation when some other user relies on
the data in the PID file.

An example of a problematic scenario involving an init script would be,

1. I run "/etc/init.d/slapd start" to start the daemon.

2. slapd drops to the "slapd" user.

3. slapd writes its PID file, now owned by the "slapd" user.

4. Someone compromises the daemon, which sits on the network.

5. The attacker is generally limited in what he can do because the
   daemon doesn't run as root. However, he can write "1" into the
   PID file, and he does.

6. I run "/etc/init.d/slapd stop" to stop the daemon while I investigate
   the weird behavior resulting from the hack.

7. The machine reboots, because I killed PID 1 (this is normally
   restricted to root).


== Resolution ==

The slapd PID file will remain owned by its unprivileged runtime user:
the OpenLDAP project believes it is the responsibility of the init
script to address this problem.

The POSIX "ps" command can be used towards that end. You can get the
user of the process whose PID you find with

  ps -p <pid> -o user=

and you can get the name of the command with

  ps -p <pid> -o comm=

Init script authors should check the output of those two command against
the expected values before sending a signal to a running process. That
will eliminate the most serious scenarios (where the attacker e.g. kills
the firewall), but still leaves open the possibility that the attacker
can prevent "/etc/init.d/slapd stop" from terminating his compromised
process by entering junk into the PID file.
