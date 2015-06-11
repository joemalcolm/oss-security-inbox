X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2067" "Thursday" "11" "June" "2015" "08:21:02" "-0400" "Andrew Widdersheim" "awiddersheim@hotmail.com" "<SNT152-W1813299B4ECCED14673EB2DDBC0@phx.gbl>" "48" "[oss-security] CVE-2015-3222 - OSSEC root escalation" nil nil nil "6" "2015061112:21:02" "[oss-security] CVE-2015-3222 - OSSEC root escalation" (number mark "        awiddersheim Jun 11   48/2067  " thread-indent "\"[oss-security] CVE-2015-3222 - OSSEC root escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11909 invoked by uid 550); 11 Jun 2015 12:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11370 invoked from network); 11 Jun 2015 12:21:14 -0000
X-TMN: [QVg8C5RRQWy9v5exOF5TP2KIJs7Z72D06QViWkJxFxA=]
X-Originating-Email: [awiddersheim@hotmail.com]
Message-ID: <SNT152-W1813299B4ECCED14673EB2DDBC0@phx.gbl>
Importance: Normal
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginalArrivalTime: 11 Jun 2015 12:21:02.0575 (UTC) FILETIME=[14FDC7F0:01D0A441]
Date: Thu, 11 Jun 2015 08:21:02 -0400
From: Andrew Widdersheim <awiddersheim@hotmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-3222 - OSSEC root escalation
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

https://github.com/ossec/ossec-hids/releases/tag/2.8.2

Fix for CVE-2015-3222 which allows for root escalation via syscheck

Affected versions: 2.7 - 2.8.1

Beginning is OSSEC 2.7 (d88cf1c9) a feature was added to syscheck, which
is the daemon that monitors file changes on a system, called
"report_changes". This feature is only available on *NIX systems. It's
purpose is to help determine what about a file has changed. The logic to
do accomplish this is as follows which can be found in
src/syscheck/seechanges.c:

252 /* Run diff */
253 date_of_change =3D File_DateofChange(old_location);
254 snprintf(diff_cmd, 2048, "diff \"%s\" \"%s\"> \"%s/local/%s/diff.%d\" "
255 =A0 =A0 "2>/dev/null",
256 =A0 =A0 tmp_location, old_location,
257 =A0 =A0 DIFF_DIR_PATH, filename + 1, (int)date_of_change);
258 if (system(diff_cmd) !=3D 256) {
259 =A0 =A0 merror("%s: ERROR: Unable to run diff for %s",
260 =A0 =A0 =A0 =A0 =A0 =A0ARGV0, =A0filename);
261 =A0 =A0 return (NULL);
262 }

Above, on line 258, the system() call is used to shell out to the
system's "diff" command. The raw filename is passed in as an argument
which presents an attacker with the possibility to run arbitrary code.
Since the syscheck daemon runs as the root user so it can inspect any
file on the system for changes, any code run using this vulnerability
will also be run as the root user.

An example attack might be creating a file called "foo-$(touch bar)"
which should create another file "bar".

Again, this vulnerability exists only on *NIX systems and is contingent
on the following criteria:

1. A vulnerable version is in use.
2. The OSSEC agent is configured to use syscheck to monitor the file
system for changes.
3. The list of directories monitored by syscheck includes those writable
by underprivileged users.
4. The "report_changes" option is enabled for any of those directories.

The fix for this is to create temporary trusted file names that symlink
back to the original files before calling system() and running the
system's "diff" command.=20=09=09=20=09=20=20=20=09=09=20=20=
