X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4170" "Wednesday" "15" "November" "2017" "20:45:49" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<7688fc24-4af1-2922-2158-0095c244f9c9@orlitzky.com>" "111" "[oss-security] CVE-2017-16834: pnp4nagios root privilege escalation via insecure permissions" nil nil nil "11" "2017111601:45:49" "[oss-security] CVE-2017-16834: pnp4nagios root privilege escalation via insecure permissions" (number mark "U       michael@orli Nov 15  111/4170  " thread-indent "\"[oss-security] CVE-2017-16834: pnp4nagios root privilege escalation via insecure permissions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7883 invoked by uid 550); 16 Nov 2017 01:46:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7862 invoked from network); 16 Nov 2017 01:46:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1510796758; bh=SUtm25JKHs7o93JNsXS8fGIRoqGzjuR/l16v+PEH688=;
	h=To:From:Subject:Date;
	b=yWUww3vVj6i2HKxIM/B5HQ3PMU3MJgwsSh8m5bSj7xc7O/XJrnPfUtuUbzhI5K0yo
	 gM/LhtbxKvexWabm1/pgOjKHD5opWq42tI9U7bweJ+Fr+uPxcVrODYxnoskcp3KlCc
	 TKEKw6STAm4r8zMKPTHILU/t6QV5s/Be8UD4AZBM=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <7688fc24-4af1-2922-2158-0095c244f9c9@orlitzky.com>
Date: Wed, 15 Nov 2017 20:45:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-16834: pnp4nagios root privilege escalation via insecure
 permissions

Product: pnp4nagios <https://github.com/lingej/pnp4nagios>
Versions-affected: 0.6.26 and earlier (all modern versions)
Author: Michael Orlitzky
Bug-report: https://github.com/lingej/pnp4nagios/issues/140

== Summary ==

The pnp4nagios build system installs two sets of files with insecure
permissions. After installation, the executables and the configuration
files are all owned by the same unprivileged user and group
(typically, "nagios") that the npcd daemon runs as. In one attack, the
unprivileged user simply replaces the npcd executable with one that
does his bidding. A slightly more complicated attack can be mounted by
the unprivileged user by configuring a malicious action and then
altering npcd.cfg to execute that action as root.


== Details ==

The pnp4nagios build system allows you to specify a runtime user and
group (default: "nagios") via the two ./configure parameters
"--with-nagios-user" and "--with-nagios-group":

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

The npcd daemon runs as that user and group by default, because the
upstream configuration file incorporates those flag values into the
user and group settings in sample-config/pnp/npcd.cfg-sample.in:

  # Privilege Options
  user = @nagios_user@
  group = @nagios_grp@

The build system then installs most of the files for the package with
their owners/groups set to the user and group specified, through the
pervasive use of the following INSTALL_OPTS in configure.ac:

  INSTALL_OPTS="-o $nagios_user -g $nagios_grp"
  AC_SUBST(INSTALL_OPTS)

This creates vulnerabilities because the npcd daemon is intended to be
run as root.


== Exploitation ==

The default ownership is exploitable in at least two ways:

  * The runtime user owns the daemon executable, typically located at
    /usr/bin/npcd. That executable is run as root, and drops privileges
    to the runtime user itself. This invites a simple attack where the
    runtime user replaces the daemon executable with his own code.

  * The daemon configuration file npcd.cfg is also owned by the
    unprivileged runtime user, but npcd.cfg is where the runtime user
    and group are specified. The unprivileged runtime user can schedule
    a malicious action (specified in the configuration files he owns)
    and then put user=root in npcd.cfg. The next time the daemon is
    started, it will run as root and execute the malicious action.


== Mitigation ==

For new installations, trial and error has shown that the
aforementioned INSTALL_OPTS are unnecessary. Users can unset that
variable when installing pnp4nagios,

  $ make INSTALL_OPTS="" install

to avoid setting the insecure permissions in the first place.
Afterwards, there are four directories that need to be made writable
by the runtime user,

  * The directory specified by the --with-perfdata-dir configure flag.
  * The directory specified by the --with-perfdata-spool-dir flag.
  * The directory containing the file for the --with-perfdata-logfile
    configure flag.
  * The STATS_DIR defined in process_perfdata.cfg.

Note that the above can be made writable through group permissions
rather than directory ownership.

In addition, upgraders will need to reset all pre-existing ownership
and group information to safe values. Unfortunately, executing the
following command recursively would risk breaking existing Nagios
installations; so instead, users must be responsible for running it
only on those $paths installed by pnp4nagios:

  $ nagios_user=nagios
  $ nagios_group=nagios
  $ chown --no-dereference --from="${nagios_user}" root $path
  $ chown --no-dereference --from=":${nagios_group}" :0 $path

Repeat for every $path installed by pnp4nagios, and keep in mind that
afterwards, the four directories mentioned earlier will need to be made
writable by the runtime user.
