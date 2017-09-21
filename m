X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3421" "Thursday" "21" "September" "2017" "19:53:54" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<c7a49799-a042-656d-874e-c5da9f0cf0aa@orlitzky.com>" "108" "[oss-security] CVE-2017-14681: P3Scan privilege escalation via PID file manipulation" nil nil nil "9" "2017092123:53:54" "[oss-security] CVE-2017-14681: P3Scan privilege escalation via PID file manipulation" (number mark "U       michael@orli Sep 21  108/3421  " thread-indent "\"[oss-security] CVE-2017-14681: P3Scan privilege escalation via PID file manipulation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32661 invoked by uid 550); 21 Sep 2017 23:54:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32641 invoked from network); 21 Sep 2017 23:54:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1506038044; bh=6UHJDnk8CzPTjahoqfHazs6iLfOSwMMA+bOrvHAkeu8=;
	h=To:From:Subject:Date;
	b=eAU2Tp9DWi+2RIo1LmftD/sF2G/k9UNUkFtsAcOYNA38aQ4zFmt0No4txjOCFmeL0
	 Op8itUYC/2Ow8GLihYqyolmlgwS9qF/WHcstfhQScaGwXWjrf2zLYSCGKLFublmZ77
	 SSZsWk/RMyKCdPuaAcnS9oVlv5OhFlakksWswmpw=
To: oss-security <oss-security@lists.openwall.com>
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <c7a49799-a042-656d-874e-c5da9f0cf0aa@orlitzky.com>
Date: Thu, 21 Sep 2017 19:53:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-14681: P3Scan privilege escalation via PID file manipulation

Product: P3Scan (transparent email proxy server)
Versions-affected: 3.0_rc1 and earlier (all versions)
Bug-report: https://sourceforge.net/p/p3scan/bugs/33/
Author: Michael Orlitzky


== Summary ==

The p3scan daemon creates its PID file after dropping privileges to a
non-root user. That may be exploited (through init scripts or other
management tools) by the unprivileged user to kill root processes, since
when the daemon is stopped, root usually sends a SIGTERM to the contents
of the PID file (which are under the control of the runtime user).
P3Scan itself ships two init scripts vulnerable to this attack.


== Details ==

The purpose of the PID file is to hold the PID of the running daemon, so
that later it can be stopped, restarted, or otherwise signaled (many
daemons reload their configurations in response to a SIGHUP). To fulfil
that purpose, the contents of the PID file need to be trustworthy. If
the PID file is writable by a non-root user, then he can replace its
contents with the PID of a root process. Afterwards, any attempt to
signal the PID contained in the PID file will instead signal a root
process chosen by the non-root user.

The creation of the PID file can be traced to the following code in
p3scan.c (modulo some whitespace changes):

  cuid=getuid();

  if (cuid == 0) {
    do_log(LOG_DEBUG, "Changing uid (we are root)");
    pws = getpwnam(config->runasuser);

    // Emergency: main: Unknown user in configuration file
    if (pws == NULL)
      do_log(LOG_EMERG,
             "ERR: Unknown User '%s'",
             config->runasuser);

    if (setgid(pws->pw_gid))
      do_log(LOG_DEBUG,
             "setgid returned: %s",
             strerror(errno));

    if (setuid(pws->pw_uid))
      do_log(LOG_DEBUG,
             "setuid returned: %s",
             strerror(errno));
  }

  cuid=getuid();
  guid=getgid();
  pws = getpwuid(cuid);
  grp = getgrgid(guid);
  do_log(LOG_DEBUG,
         "Running as user: %s group: %s",
         pws->pw_name,
         grp->gr_name);

  if ((pd=fopen(config->pidfile, "w+")) != NULL) {
    fprintf(pd, "%i\n", getpid());
    fclose(pd);
  }

This is commonly exploitable through init scripts that are run as root
and which blindly trust the contents of their PID files. The p3scan
package ships two such init scripts,

  1. etc/init.d/p3scan
  2. etc/rc.d/rc.p3scan

both containing essentially the same code:

  stop)
     # Stop p3scan
     if [ -a /var/run/p3scan/p3scan.pid ]; then
        kill `cat /var/run/p3scan/p3scan.pid` &>/dev/null
        rm -f /var/run/p3scan/p3scan.pid
        echo "P3Scan terminated"

P3Scan is unable to run in the foreground, preventing the typical
workaround where the init system is allowed to manage its PID file.


== Exploitation ==

An example exploit involving an init script is,

  1. I run "/etc/init.d/p3scan start" to start the daemon.

  2. p3scan drops to the "p3scan" user.

  3. p3scan writes its PID file, now owned by the "p3scan" user.

  4. Someone compromises the daemon, which sits on the network.

  5. The attacker is generally limited in what he can do because the
     daemon doesn't run as root. However, he can write "1" into the PID
     file, and he does.

  6. I run "/etc/init.d/p3scan stop" to stop the daemon while I
     investigate the weird behavior resulting from the hack.

  7. The machine reboots, because I killed PID 1 (this is normally
     restricted to root).
