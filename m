X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2282" "Tuesday" "16" "January" "2018" "23:03:20" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<be5a8985-59e8-1b2a-174e-7309979b4bc1@orlitzky.com>" "58" "[oss-security] CVE-2017-16933: Icinga2 root privilege escalation via init script and systemd service" nil nil nil "1" "2018011704:03:20" "[oss-security] CVE-2017-16933: Icinga2 root privilege escalation via init script and systemd service" (number mark "U       michael@orli Jan 16   58/2282  " thread-indent "\"[oss-security] CVE-2017-16933: Icinga2 root privilege escalation via init script and systemd service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22490 invoked by uid 550); 17 Jan 2018 04:03:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22422 invoked from network); 17 Jan 2018 04:03:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1516161802; bh=dxCncmhunnCMvSOZLqwwl6KIoX6azRrv2bH4RGhWHpw=;
	h=To:From:Subject:Date;
	b=eUwB3hhJFg+3DFMLfDdzVMmgOmzeiG6Qs5myrroCcgvCb5vlN0hWRhBHuZ6rC5X9t
	 Td4WgL3+lTJL98Ae3jojmseqnuzK3assP6SdqckDvsEfHQHftcwQH2EMOO+9Dhsq8S
	 YzmG3tRdM2N8nJq5kZuqUJv+kx8zitF26/ifpP+E=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <be5a8985-59e8-1b2a-174e-7309979b4bc1@orlitzky.com>
Date: Tue, 16 Jan 2018 23:03:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-16933: Icinga2 root privilege escalation via init script and
 systemd service

Product: Icinga2 open source monitoring system
Versions-affected: 2.8.0 and earlier (all current 2.x versions)
Author: Michael Orlitzky
Bug-report: https://github.com/Icinga/icinga2/issues/5793


== Summary ==

The icinga2 init script and systemd service file allow the unprivileged
$ICINGA2_USER to gain root privileges by replacing the target of chown
with a link.


== Details ==

The "chown" command follows both symlinks and hard links by default on
a vanilla Linux kernel. It is therefore unsafe to call "chown" on a
path that is not wholly controlled by root; if the target path can be
replaced with a link by a non-root user, then that user can do so to
gain root when "chown" is called.

The "etc/initsystem/prepare-dirs" script that ships with icinga2 calls
"chown" in that manner, leading to a root exploit for the $ICINGA2_USER.
For example,

  chown $ICINGA2_USER... $(dirname -- $ICINGA2_PID_FILE)
  if [ -f $ICINGA2_PID_FILE ]; then
    chown $ICINGA2_USER:$ICINGA2_GROUP $ICINGA2_PID_FILE
  fi

The first line gives away ownership of the directory containing the
$ICINGA2_PID_FILE, and the next line calls chown on that file. The
exploit is that, after the first line executes, the $ICINGA2_USER can
simply replace $ICINGA2_PID_FILE with a link (sym or hard) to a
root-owned file. The call to "chown" will then change ownership of the
link's target. That is easily exploitable to gain root, by taking
ownership of e.g. "/etc/passwd" or root's ".bashrc" file.

The prepare-dirs script is used by both the SysV-style init script,

  start() {
    printf "Starting Icinga 2: "
    @CMAKE_INSTALL_PREFIX@/lib/icinga2/prepare-dirs $SYSCONFIGFILE
    ...

and the systemd service file,

  ExecStartPre=.../prepare-dirs @ICINGA2_SYSCONFIGFILE@

and so both are vulnerable to the problem in prepare-dirs.

To exploit the "chown" calls the first time the service is started,
you would need to take advantage of the race condition to create a
link before the "-f" test is executed. However, there's a much easier
scenario: if the service is started, stopped, and started again (even
across reboots, for persistent directories), then the "-f" test will
succeed, and call "chown" on a path that has been controlled by
$ICINGA2_USER since the first time the service was started.
