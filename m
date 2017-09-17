X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5228" "Sunday" "17" "September" "2017" "12:29:02" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<d81772f2-2f68-f9c6-dbb6-5e3427b06228@orlitzky.com>" "134" "[oss-security] CVE-2017-14312: Nagios core root privilege escalation via insecure permissions" nil nil nil "9" "2017091716:29:02" "[oss-security] CVE-2017-14312: Nagios core root privilege escalation via insecure permissions" (number mark "U       michael@orli Sep 17  134/5228  " thread-indent "\"[oss-security] CVE-2017-14312: Nagios core root privilege escalation via insecure permissions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23616 invoked by uid 550); 17 Sep 2017 16:29:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23592 invoked from network); 17 Sep 2017 16:29:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1505665756; bh=oX85rT1LRWdh+T8UpR81hBqG1Imzzqu9hNg+8kBX6lo=;
	h=To:From:Subject:Date;
	b=qHKeaFE4Kpq22ZrO4uT4Jy4We3OxrL9gvosc/omlfzNvYYhhp+4JAZrUgL04btmuZ
	 79jxajxgVMyxT4iEk9qLT0Z/CHuHDomROZIWOfEykLQNONWSLroRckivO5t5ybSbBx
	 0M1LHVHUSmThLc1ayCTeEOgxUpvPtypny1avE9Dc=
To: oss-security <oss-security@lists.openwall.com>
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <d81772f2-2f68-f9c6-dbb6-5e3427b06228@orlitzky.com>
Date: Sun, 17 Sep 2017 12:29:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-14312: Nagios core root privilege escalation via insecure
 permissions

Product: Nagios core
Vendor: Nagios Enterprises, LLC
Versions-affected: all
Bug-report: https://github.com/NagiosEnterprises/nagioscore/issues/424
Author: Michael Orlitzky

(This has yet to be fixed upstream, but the workaround is
straightforward and will suffice for most users.)

== Summary ==

Nagios installs two sets of files with insecure permissions: after
installation, the executables and the configuration files are all owned
by the same unprivileged user and group (typically, "nagios") that the
daemon runs as. In one attack, the unprivileged user simply replaces the
nagios executable with one that does his bidding. A slightly more
complicated attack can be mounted by the unprivileged user by scheduling
a malicious service check and then altering nagios.cfg to execute that
check as root.


== Details ==

The Nagios build system allows you to specify a runtime user and group
(default: nagios) via the two ./configure parameters --with-nagios-user
and --with-nagios-group:

  AC_ARG_WITH(
    nagios_user,
    AC_HELP_STRING([--with-nagios-user=<user>],
                   [sets user name to run nagios]),
    nagios_user=$withval,
    nagios_user=nagios)

  AC_ARG_WITH(
    nagios_group,
    AC_HELP_STRING([--with-nagios-group=<grp>],
                   [sets group name to run nagios]),
    nagios_grp=$withval,
    nagios_grp=nagios)

  AC_SUBST(nagios_user)
  AC_SUBST(nagios_grp)

The daemon runs as that user and group by default, because the upstream
configuration file nagios.cfg incorporates those flag values into the
nagios_user and nagios_group settings in sample-config/nagios.cfg.in:

  # NAGIOS USER
  # This determines the effective user that Nagios should run as.
  # You can either supply a username or a UID.
  nagios_user=@nagios_user@

  # NAGIOS GROUP
  # This determines the effective group that Nagios should run as.
  # You can either supply a group name or a GID.
  nagios_group=@nagios_grp@

The build system then installs most of the files for the package with
their owners/groups set to the user and group specified, through the
pervasive use of the following INSTALL_OPTS in configure.ac:

  INSTALL_OPTS="-o $nagios_user -g $nagios_grp"
  AC_SUBST(INSTALL_OPTS)

This creates vulnerabilities because the nagios daemon is intended to be
run as root.


== Exploitation ==

The default ownership is exploitable in at least two ways:

  1 The Nagios runtime user owns the daemon executable, typically
    located at /usr/sbin/nagios. That executable is run as root, and
    drops privileges to the runtime user itself. This invites a simple
    attack where the runtime user replaces the daemon executable with
    his own code.

  2 The main configuration file nagios.cfg is also owned by the
    unprivileged runtime user, but nagios.cfg is where the runtime user
    and group are specified. The unprivileged runtime user can schedule
    a malicious service check (specified in the configuration files he
    owns) and then put nagios_user=root in nagios.cfg. The next time the
    daemon is restarted, it will run as root and execute the command set
    by the unprivileged user.


== Resolution ==

A fix is still pending upstream, because there are third-party tools
that rely on the ability to modify nagios.cfg. However, there is no
legitimate reason for any of the installed executables to be owned by
the Nagios runtime user or group, so a partial resolution is to ensure
that the installed executables are owned by root and its group. Even
users of those third-party tools can adapt the workaround below to
secure the ownership of their executables.


== Workaround ==

Most users will not need to allow a third-party tool to access
nagios.cfg, and should reset all ownership and group information to safe
values:

  dirs="/bin /sbin /usr /etc"
  nagios_user=nagios
  nagios_group=nagios
  find $dirs -user "${nagios_user}" -print0 | \
    xargs --null chown --no-dereference --from="${nagios_user}" root
  find $dirs -group "${nagios_group}" -print0 | \
    xargs --null chown --no-dereference --from=":${nagios_group}" :0

The find commands above are intended to omit precisely one Nagios
directory, its $localstatedir. The Nagios runtime user does need to be
able to write to its logfile and to record the results of its service
checks. On Gentoo, that information is stored under /var/nagios as the
result of passing --localstatedir=/var/nagios to the ./configure script.
Thus the owner and group of /var/nagios (or wherever your $localstatedir
happens to be) should be left alone.

If you would like to allow a group of non-root users to modify the
Nagios configuration, that is possible with two caveats:

  1 You should create an entirely new group called (for example)
    "nagiosconfig" that is allowed to modify the configuration. The
    Nagios runtime user should *not* be added to this group!

  2 Most of Nagios's configuration files can have their groups set to
    the new "nagiosconfig" group, and their modes set g+w. However, the
    main configuration file nagios.cfg must *not* have its group changed
    or be made group-writable! Otherwise anyone in the nagiosconfig
    group would be able to gain root through the exploit described
    earlier.
