X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3771" "Sunday" "19" "November" "2017" "15:55:59" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<06ff7936-bd2b-81d5-7dfd-8f048ddc6056@orlitzky.com>" "102" "[oss-security] CVE-2017-16882: Icinga core root privilege escalation via insecure permissions" nil nil nil "11" "2017111920:55:59" "[oss-security] CVE-2017-16882: Icinga core root privilege escalation via insecure permissions" (number mark "U       michael@orli Nov 19  102/3771  " thread-indent "\"[oss-security] CVE-2017-16882: Icinga core root privilege escalation via insecure permissions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16313 invoked by uid 550); 19 Nov 2017 20:56:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16271 invoked from network); 19 Nov 2017 20:56:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1511124966; bh=U6QjrAr+isa9dOVt/xaYRPZBh7iKgKJAKbcjJuB8QG8=;
	h=To:From:Subject:Date;
	b=GbBMdNxTS0StXVd6UmVn/TeuyCKCpPNXnUYO3fMFlDvkSYPRSweNVTXQWVgm6RDnp
	 kQO0WTntH/CJEzqTYRsH7CweL7Pue5T3mja/um/krFy6uz6I0cUyAKv/dgzhvt275q
	 h1jtXZNTWnp8i5xJwvLfTo9HouiQlqF8VkcdvjxU=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <06ff7936-bd2b-81d5-7dfd-8f048ddc6056@orlitzky.com>
Date: Sun, 19 Nov 2017 15:55:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-16882: Icinga core root privilege escalation via insecure
 permissions

Product: Icinga core <https://github.com/Icinga/icinga-core>
Vendor: NETWAYS GmbH <https://www.netways.de/>
Versions-affected: 1.14.0 and earlier (all 1.x versions)
Author: Michael Orlitzky
Bug-report: https://github.com/Icinga/icinga-core/issues/1601


== Summary ==

Icinga installs two sets of files with insecure permissions: after
installation, the executables and the configuration files are all
owned by the same unprivileged user and group (typically, "icinga")
that the daemon runs as. In one attack, the unprivileged user simply
replaces the icinga executable with one that does his bidding. A
slightly more complicated attack can be mounted by the unprivileged
user by scheduling a malicious service check and then altering
icinga.cfg to execute that check as root.

The ido2db daemon and its sample configuration file have the same
issue.


== Details ==

The Icinga build system allows you to specify a runtime user and group
(default: icinga) via the two ./configure parameters
"--with-icinga-user" and "--with-icinga-group":

  AC_ARG_WITH(
    icinga_user,
    AC_HELP_STRING([--with-icinga-user=<user>],
                   [sets user name to run icinga]),
    icinga_user=$withval,
    icinga_user=icinga)

  AC_ARG_WITH(
    icinga_group,
    AC_HELP_STRING([--with-icinga-group=<grp>],
                   [sets group name to run icinga]),
    icinga_grp=$withval,
    icinga_grp=icinga)

  AC_SUBST(icinga_user)
  AC_SUBST(icinga_grp)

The daemon runs as that user and group by default, because the
upstream configuration file icinga.cfg incorporates those flag values
into the icinga_user and icinga_group settings in
sample-config/icinga.cfg.in:

  # ICINGA USER
  # This determines the effective user that Icinga should run as.
  # You can either supply a username or a UID.
  icinga_user=@icinga_user@

  # ICINGA GROUP
  # This determines the effective group that Icinga should run as.
  # You can either supply a group name or a GID.
  icinga_group=@icinga_grp@

The build system then installs most of the files for the package with
their owners/groups set to the user and group specified, through the
pervasive use of the following INSTALL_OPTS in configure.ac:

  INSTALL_OPTS="-o $icinga_user -g $icinga_grp"
  AC_SUBST(INSTALL_OPTS)

This creates vulnerabilities because the Icinga daemons are intended to
be run as root.


== Exploitation ==

The default ownership is exploitable in at least two ways:

 1. The Icinga runtime user owns the daemon executable, typically
    located at /usr/bin/icinga. That executable is run as root, and
    drops privileges to the runtime user itself. This invites a simple
    attack where the runtime user replaces the daemon executable with
    his own code. The ido2db daemon has the same problem.

    In addition, the system executables icingastats and log2ido are
    installed to root's $PATH and
    could conceivably be run as root. They thus pose a similar risk.

  2. The main configuration file icinga.cfg is also owned by the
     unprivileged runtime user, but icinga.cfg is where the runtime user
     and group are specified. The unprivileged runtime user can schedule
     a malicious service check (specified in the configuration files he
     owns) and then put icinga_user=root in icinga.cfg. The next time
     the daemon is restarted, it will run as root and execute the
     command set by the unprivileged user.

     The configuration file ido2db.cfg-sample is vulnerable in the same
     manner if it is renamed to ido2db.cfg without adjusting its
     ownership.

== Mitigation ==

Most users should reset all ownership and group information to safe
values, "root:root", except where write access is needed (for example,
Icinga needs runtime write access to its $localstatedir).
